return {
    "mfussenegger/nvim-dap",
    event = { "BufRead", "BufNewFile" },
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "leoluz/nvim-dap-go",
        "nvim-neotest/nvim-nio",
        {
            "mfussenegger/nvim-dap-python",
            ft = { "python" },
            config = function()
                vim.keymap.set("n", "<leader>dM", require("dap-python").test_method,
                    { desc = "Test method", noremap = true, silent = true })
                vim.keymap.set("n", "<leader>dC", require("dap-python").test_class,
                    { desc = "Test class", noremap = true, silent = true })
                vim.keymap.set("n", "<leader>dS", require("dap-python").debug_selection,
                    { desc = "Debug selection", noremap = true, silent = true })
            end
        },
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        require("dapui").setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        -- Adapter setups
        require("dap-go").setup()
        require("dap-python").setup("/home/SirCaljerque/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
        -- C
        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",

            args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
        }
        dap.configurations.c = {
            {
                name = "Launch",
                type = "gdb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = "${workspaceFolder}",
                stopAtBeginningOfMainSubprogram = false,
            },
            {
                name = "Select and attach to process",
                type = "gdb",
                request = "attach",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                pid = function()
                    local name = vim.fn.input('Executable name (filter): ')
                    return require("dap.utils").pick_process({ filter = name })
                end,
                cwd = '${workspaceFolder}'
            },
            {
                name = 'Attach to gdbserver :1234',
                type = 'gdb',
                request = 'attach',
                target = 'localhost:1234',
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}'
            },
        }
        -- End C
        -- Bash
        dap.adapters.bashdb = {
            type = 'executable',
            command = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/bash-debug-adapter',
            name = 'bashdb',
        }
        dap.configurations.sh = {
            {
                type = 'bashdb',
                request = 'launch',
                name = "Launch file",
                showDebugOutput = true,
                pathBashdb = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir/bashdb',
                pathBashdbLib = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir',
                trace = true,
                file = "${file}",
                program = "${file}",
                cwd = '${workspaceFolder}',
                pathCat = "cat",
                pathBash = "/bin/bash",
                pathMkfifo = "mkfifo",
                pathPkill = "pkill",
                args = {},
                env = {},
                terminalKind = "integrated",
            }
        }
        -- End Bash
    end
}
