local on_attach = require("util.lsp").on_attach
local diagnostic_signs = require("util.lsp").diagnostic_signs

local config = function()
  require("neoconf").setup({})
  local cmp_nvim_lsp = require("cmp_nvim_lsp")
  local lspconfig = require("lspconfig")
  local lsp_zero = require("lsp-zero")
  -- [[ THIS IS A TEST FMT/LINT TOOL ]]
  -- local ft = require("guard.filetype")
  --
  -- ft("c"):fmt("clang-format")
  --     :lint({
  --         cmd = "gcc",
  --         args = { '-Wpedantic', '-Wall', '-Wextra', '-fno-diagnostics-color', '-fsyntax-only' },
  --         fname = true,
  --         stdin = true,
  --     })
  -- ft("lua"):fmt("stylua")
  --     :lint("luacheck")
  --
  -- [[ END TEST FMT/LINT TOOL ]]

  for type, icon in pairs(diagnostic_signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end

  local capabilities = cmp_nvim_lsp.default_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  lsp_zero.extend_lspconfig({
    capabilities = capabilities,
    on_attach = on_attach,
  })

  -- lua
  lspconfig.lua_ls.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    on_init = function(client)
      if client.workspace_folders then
        local path = client.workspace_folders[1].name
        if vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc") then
          return
        end
      end

      client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
        runtime = {
          -- Tell the language server which version of Lua you're using
          -- (most likely LuaJIT in the case of Neovim)
          version = "LuaJIT",
        },
        -- Make the server aware of Neovim runtime files
        workspace = {
          checkThirdParty = false,
          library = {
            vim.env.VIMRUNTIME,
            -- Depending on the usage, you might want to add additional paths here.
            -- "${3rd}/luv/library"
            -- "${3rd}/busted/library",
          },
          -- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
          -- library = vim.api.nvim_get_runtime_file("", true)
        },
      })
    end,
    settings = { -- custom settings for lua
      Lua = {
        -- make the language server recognize "vim" global
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          -- make language server aware of runtime files
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            [vim.fn.stdpath("config") .. "/lua"] = true,
          },
        },
      },
    },
  })

  -- python
  lspconfig.basedpyright.setup({
    settings = {
      basedpyright = {
        disableLanguageServices = false,
        disableOrganizeImports = true,
        disableTaggedHints = false,
        analysis = {
          autoImportCompletions = true,
          autoSearchPaths = true,
          diagnosticMode = "openFilesOnly",
          useLibraryCodeForTypes = true,
          inlayHints = {
            variableTypes = true,
            callArgumentNames = true,
            functionReturnTypes = true,
            genericTypes = true,
          },
        },
      },
    },
  })

  -- lspconfig.pylsp.setup({
  --   settings = {
  --     pylsp = {
  --       plugins = {
  --         pylsp_mypy = {
  --           enabled = true,
  --           live_mode = true,
  --           disable_error_code = "annotation-unchecked"
  --         },
  --         isort = { enabled = true },
  --         rope_completion = { enabled = true },
  --         pylint = { enabled = false },
  --         autopep8 = { enabled = false },
  --         flake8 = { enabled = false },
  --         mccabe = { enabled = false },
  --         yapf = { enabled = false },
  --         pyflakes = { enabled = false },
  --         pycodestyle = { enabled = false },
  --         pydocstyle = { enabled = false }
  --       }
  --     }
  --   }
  -- })

  -- Python #2
  lspconfig.ruff.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    init_options = {
      settings = {
        configurationPreference = "filesystemFirst",
        lineLength = 100,
        organizeImports = true,
        showSyntaxErrors = true,
        codeAction = true,
        lint = {
          enable = true,
          preview = true,
          ignore = { "E501" },
        }
      },
    },
  })

  lspconfig.hyprls.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
  })

  -- bash
  lspconfig.bashls.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    filetypes = { "sh", },
    settings = {
      bashIde = {
        shfmt = {
          languageDialect = "auto",
        },
      },
    },
  })

  -- c
  lspconfig.clangd.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    require("clangd_extensions.inlay_hints").setup_autocmd(),
    require("clangd_extensions.inlay_hints").set_inlay_hints(),
    cmd = {
      "clangd",
      -- "--offset-encoding=utf-16",
    },
    settings = {
      clangd = {
        checkUpdates = true,
        enableCodeCompletion = true,
      },
    },
  })

  -- zig
  lspconfig.zls.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    settings = {
      zls = {
        enable_snippets = true,
        enable_build_on_save = true,
        enable_autofix = true,
        operator_completions = true,
        include_at_in_builtins = true,
        use_comptime_interpreter = true,
        zig_exe_path = "$HOME/Code/zig/zig-latest/zig"
      },
    },
  })

  -- rust
  lspconfig.rust_analyzer.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    -- function(client, bufnr)
    -- vim.lsp.inlay_hint.enable(bufnr)
    cmd = { "$HOME/.cargo/bin/rust-analyzer" },
    settings = {
      ["rust-analyzer"] = {
        imports = {
          granularity = {
            group = "module",
          },
          prefix = "self",
        },
        cargo = {
          buildScripts = {
            enable = true,
          },
        },
        procMacro = {
          enable = true,
        },
      },
    },
  })

  -- Assembly
  lspconfig.asm_lsp.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    filetypes = { "asm", "s", "S" },
  })

  -- TOML
  lspconfig.taplo.setup({
    capabilities = capabilities,
    on_attach = on_attach,
  })

  -- GO
  lspconfig.gopls.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    settings = {
      gopls = {
        analyses = {
          shadow = true,
          unusedvariable = true,
        },
        staticcheck = true,
        usePlaceHolders = true,
        hoverKind = "FullDocumentation",
        gofumpt = true,
      },
    },
  })

  -- json
  lspconfig.jsonls.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    filetypes = { "json", "jsonc" },
    settings = {
      json = {
        format = true,
      },
    },
  })

  -- typescript
  lspconfig.ts_ls.setup({
    -- on_attach = on_attach,
    -- capabilities = capabilities,
    filetypes = {
      "typescript",
      "javascript",
    },
    settings = {
      typescript = {
        format = {
          enable = true,
          semicolons = "insert",
          indentSwitchCase = true,
          insertSpaceAfterCommaDelimiter = true,
        },
        tsserver = {
          useSyntaxServer = "auto",
        },
      },
      javascript = {
        format = {
          enable = true,
          semicolons = "insert",
          indentSwitchCase = true,
          insertSpaceAfterCommaDelimiter = true,
        },
        tsserver = {
          useSyntaxServer = "auto",
        },
      },
    },
    root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
  })

  -- html, typescriptreact, javascriptreact, css, sass, scss, less, svelte, vue
  lspconfig.emmet_ls.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    filetypes = {
      "html",
      "typescriptreact",
      "javascriptreact",
      "javascript",
      "css",
      "sass",
      "scss",
      "less",
      "svelte",
      "vue",
    },
  })

  lspconfig.markdown_oxide.setup({
    capabilities = vim.tbl_deep_extend("force", capabilities, {
      workspace = {
        didChangeWatchedFiles = {
          dynamicRegistration = true,
        },
      },
    }),
  })

  -- solidity
  lspconfig.solidity.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
    filetypes = { "solidity" },
  })

  -- docker
  lspconfig.dockerls.setup({
    -- capabilities = capabilities,
    -- on_attach = on_attach,
  })

  -- null-ls

  -- efmls
  local luacheck = require("efmls-configs.linters.luacheck") -- Lua
  local stylua = require("efmls-configs.formatters.stylua")  -- Lua
  -- local rufff = require("efmls-configs.formatters.ruff")                -- Python
  -- local ruffl = require("efmls-configs.linters.ruff")                   -- Python
  local mypy = require("efmls-configs.linters.mypy")                    -- Python
  local gcc = require("efmls-configs.linters.gcc")                      -- C
  local clang_format = require("efmls-configs.formatters.clang_format") -- C
  local rustfmt = require("efmls-configs.formatters.rustfmt")           -- Rust
  local taplo = require("efmls-configs.formatters.taplo")
  local staticcheck = require("efmls-configs.linters.staticcheck")      -- Go
  local gofumpt = require("efmls-configs.formatters.gofumpt")           -- Go
  -- local eslint_d = require("efmls-configs.linters.eslint_d")            -- Typescript(react), Json, Jsonc, Javascript(react), Svelte, Vue,
  local prettierd = require("efmls-configs.formatters.prettier_d")      -- HTML, Typescript(react), Javascript(react), Svelte, Vue, Markdown, Docker
  -- local djlint = require("efmls-configs.linters.djlint")                -- HTML
  local alex = require("efmls-configs.linters.alex")                    -- Markdown
  local fixjson = require("efmls-configs.formatters.fixjson")           -- Json, Jsonc
  local shellcheck = require("efmls-configs.linters.shellcheck")        -- Shell
  local shfmt = require("efmls-configs.formatters.shfmt")               -- Shell
  local hadolint = require("efmls-configs.linters.hadolint")            -- Docker
  -- local solhint = require("efmls-configs.linters.solhint")              -- Solidity

  -- none-ls - see none-ls.lua_ls

  -- configure efm server
  lspconfig.efm.setup({
    filetypes = {
      "lua",
      "python",
      "sh",
      "c",
      "rust",
      "markdown",
      "toml",
      "go",
      "html",
      "json",
      "jsonc",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
      "vue",
      "docker",
      "solidity",
      "css",
    },
    init_options = {
      documentFormatting = true,
      documentRangeFormatting = true,
      hover = true,
      documentSymbol = true,
      codeAction = true,
      completion = true,
    },
    settings = {
      languages = {
        lua = { luacheck, stylua },
        -- python = { flake8, black },
        -- python = { ruffl, mypy, rufff },
        python = { mypy },
        sh = { shellcheck, shfmt },
        c = { gcc, clang_format },
        rust = { rustfmt },
        toml = { taplo },
        html = { djlint, prettierd },
        typescript = { eslint_d, prettierd },
        json = { eslint_d, fixjson },
        jsonc = { eslint_d, fixjson },
        javascript = { eslint_d, prettierd },
        javascriptreact = { eslint_d, prettierd },
        typescriptreact = { eslint_d, prettierd },
        svelte = { eslint_d, prettierd },
        vue = { eslint_d, prettierd },
        markdown = { alex, prettierd },
        docker = { hadolint, prettierd },
        solidity = { solhint },
        go = { staticcheck, gofumpt },
        css = { prettierd },
      },
    },
  })
end

return {
  "neovim/nvim-lspconfig",
  config = config,
  event = { "BufRead", "BufNewFile" },
  dependencies = {
    { "folke/neoconf.nvim",     cmd = "Neoconf" },
    { "folke/neodev.nvim",      opts = {} },
    { "windwp/nvim-autopairs" },
    { "williamboman/mason.nvim" },
    {
      "creativenull/efmls-configs-nvim",
      version = "v1.x.x",
    },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-nvim-lsp" },
  },
}
