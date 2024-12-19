return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            local npairs = require("nvim-autopairs")
            npairs.setup({
                enable_afterquote = true,          -- add bracket pairs after quote
                enable_check_bracket_line = false, --- check bracket in same line
                enable_abbr = true,                -- trigger abbreviation
            })

            local Rule = require("nvim-autopairs.rule")
            local cond = require("nvim-autopairs.conds")

            local brackets = { { '(', ')' }, { '[', ']' }, { '{', '}' } }
            npairs.add_rules {
                -- Rule for a pair with left-side ' ' and right side ' '
                Rule(' ', ' ')
                -- Pair will only occur if the conditional function returns true
                    :with_pair(function(opts)
                        -- We are checking if we are inserting a space in (), [], or {}
                        local pair = opts.line:sub(opts.col - 1, opts.col)
                        return vim.tbl_contains({
                            brackets[1][1] .. brackets[1][2],
                            brackets[2][1] .. brackets[2][2],
                            brackets[3][1] .. brackets[3][2]
                        }, pair)
                    end)
                    :with_move(cond.none())
                    :with_cr(cond.none())
                -- We only want to delete the pair of spaces when the cursor is as such: ( | )
                    :with_del(function(opts)
                        local col = vim.api.nvim_win_get_cursor(0)[2]
                        local context = opts.line:sub(col - 1, col + 2)
                        return vim.tbl_contains({
                            brackets[1][1] .. '  ' .. brackets[1][2],
                            brackets[2][1] .. '  ' .. brackets[2][2],
                            brackets[3][1] .. '  ' .. brackets[3][2]
                        }, context)
                    end),
                Rule('<', '>', {
                    -- if you use nvim-ts-autotag, you may want to exclude these filetypes from this rule
                    -- so that it doesn't conflict with nvim-ts-autotag
                    '-html',
                    '-javascriptreact',
                    '-typescriptreact',
                }):with_pair(
                -- regex will make it so that it will auto-pair on
                -- `a<` but not `a <`
                -- The `:?:?` part makes it also
                -- work on Rust generics like `some_func::<T>()`
                    cond.before_regex('%a+:?:?$', 3)
                ):with_move(function(opts)
                    return opts.char == '>'
                end)
            }
        end
    },
}
