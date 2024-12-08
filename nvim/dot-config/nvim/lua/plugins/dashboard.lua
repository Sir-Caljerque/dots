local version = vim.version()
local header = {
    "                                         .\"\"--..__                         ",
    "                     _                     []       ``-.._                 ",
    "                  .'` `'.                  ||__           `-._             ",
    "                 /    ,-.\\                 ||_ ```---..__     `-.          ",
    "                /    /:::\\               /|//}          ``--._  `.        ",
    "                |    |:::||              |////}                `-. \\       ",
    "                |    |:::||             //'///                    `.\\      ",
    "                |    |:::||            //  ||'                      `|     ",
    "        jgs     /    |:::|/        _,-//\\  ||                              ",
    "        hh     /`    |:::|`-,__,-'`  |/  \\ ||                              ",
    "             /`  |   |'' ||           \\   |||                              ",
    "           /`    \\   |   ||            |  /||                              ",
    "         |`       |  |   |)            \\ | ||                              ",
    "        |          \\ |   /      ,.__    \\| ||                              ",
    "        /           `         /`    `\\   | ||                              ",
    "       |                     /        \\  / ||                              ",
    "       |                     |        | /  ||                              ",
    "       /         /           |        `(   ||                              ",
    "      /          .           /          )  ||                              ",
    "     |            \\          |     ________||                              ",
    "    /             |          /     `-------.|                              ",
    "   |\\            /          |              ||                              ",
    "   \\/`-._       |           /              ||                              ",
    "    //   `.    /`           |              ||                              ",
    "   //`.    `. |             \\              ||                              ",
    "  ///\\ `-._  )/             |              ||                              ",
    " //// )   .(/               |              ||                              ",
    " ||||   ,'` )               /              //                              ",
    " ||||  /                    /             ||                               ",
    " `\\` /`                    |             //                               ",
    "     |`                     \\            ||                                ",
    "    /                        |           //                                ",
    "  /`                          \\         //                                 ",
    "/`                            |        ||                                  ",
    "`-.___,-.      .-.        ___,'        (/                                  ",
    "         `---'`   `'----'`                                                 ",
    "N E O V I M - v " .. version.major .. "." .. version.minor,
    "",
}

return {
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("dashboard").setup({
                -- config
                theme = "doom", --  theme is doom and hyper default is hyper
                -- disable_move, --  default is false disable move keymap for hyper
                -- shortcut_type, --  shorcut type 'letter' or 'number'
                -- change_to_vcs_root, -- default is false,for open file in hyper mru. it will change to the root of vcs
                config = {
                    header = header, --your header
                    center = {
                        {
                            desc = "Find File",
                            keymap = "",
                            key = "f",
                            icon = "  ",
                            action = "Telescope find_files",
                        },
                        {
                            desc = "Recents",
                            keymap = "",
                            key = "r",
                            icon = "  ",
                            action = "Telescope oldfiles",
                        },
                        {
                            desc = "Browse Files",
                            keymap = "",
                            key = "b",
                            icon = "  ",
                            action = "Yazi cwd",
                        },
                        {
                            desc = "New File",
                            keymap = "",
                            key = "n",
                            icon = "  ",
                            action = "enew",
                        },
                        {
                            desc = "Select Session",
                            keymap = "",
                            key = "L",
                            icon = "  ",
                            action = "Telescope persisted",
                        },
                        {
                            desc = "Plugins",
                            keymap = "",
                            key = "u",
                            icon = "  ",
                            action = "Lazy",
                        },
                        {
                            desc = "Manage Extensions",
                            keymap = "",
                            key = "e",
                            icon = "  ",
                            action = "Mason",
                        },
                        {
                            desc = "Nvim Config",
                            keymap = "",
                            key = "C",
                            icon = "  ",
                            action = "Telescope find_files cwd=$HOME/.config/nvim",
                        },
                        {
                            desc = "Config files",
                            keymap = "",
                            key = "c",
                            icon = "  ",
                            action = "Telescope find_files cwd=~/.config",
                        },
                        {
                            desc = "Exit",
                            keymap = "",
                            key = "q",
                            icon = "  ",
                            action = "exit",
                        },
                    },
                    footer = {}, --your footer
                }, --  config used for theme
                -- hide = {
                -- 	statusline, -- hide statusline default is true
                -- 	tabline, -- hide the tabline
                -- 	winbar, -- hide winbar
                -- },
                -- preview = {
                -- 	command, -- preview command
                -- 	file_path, -- preview file path
                -- 	file_height, -- preview file height
                -- 	file_width, -- preview file width
                -- },
            })
        end,
        dependencies = { { "nvim-tree/nvim-web-devicons" } },
    },
}
