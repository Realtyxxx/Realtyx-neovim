local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

db.setup({
  theme = "hyper",
  -- preview = {
  --   command = "pokemonsay hello", -- preview command
  --   file_path = "", -- preview file path
  --   file_height = 8, -- preview file height
  --   file_width = 40, -- preview file width
  -- },
  config = {
    week_header = {
      enable = true,
      concat = "Realtyxxx",
      disable_move = true,
    },
    packages = { enable = true },
    project = {
      enable = true,
      limit = 8,
      icon = "Recent Projects",
      label = "",
      action = "Telescope find_files cwd=",
    },
    -- mru = { limit = 10, icon = "MRU", label = " " },

    footer = {},
    shortcut = {
      {
        icon = "⌨️  ",
        desc = "keybindings",
        group = "@property",
        action = "edit ~/.config/nvim/lua/keybindings.lua",
        key = "b",
      },
      {
        icon = "📂 ",
        -- icon_hl = "@variable",
        desc = "Lazy",
        group = "Label",
        action = "Lazy",
        key = "l",
      },
      {
        icon = "🚀 ",
        desc = "Project",
        group = "DiagnosticHint",
        action = "Telescope projects",
        key = "p",
      },
      {
        icon = "👹 ",
        desc = "colorscheme",
        group = "Number",
        action = "Telescope colorscheme",
        key = "c",
      },
      {
        icon = "👾 ",
        desc = "dashboard",
        group = "Label",
        action = "edit ~/.config/nvim/lua/plugin-config/dashboard.lua",
        key = "d",
      },
    },
  },
  change_to_vcs_root = true,
})

-- db.custom_footer = {
--   "",
--   "",
--   "https://github.com/Realtyxxx/learn-neovim-lua",
-- }
--
-- db.custom_center = {
--   {
--     icon = "  ",
--     desc = "Projects                            ",
--     action = "Telescope projects",
--   },
--   {
--     icon = "  ",
--     desc = "Recently files                      ",
--     action = "Telescope oldfiles",
--   },
--   {
--     icon = "  ",
--     desc = "Edit keybindings                    ",
--     action = "edit ~/.config/nvim/lua/keybindings.lua",
--   },
--   {
--     icon = "  ",
--     desc = "Edit Projects                       ",
--     action = "edit ~/.local/share/nvim/project_nvim/project_history",
--   },
--   -- {
--   --   icon = "  ",
--   --   desc = "Edit .bashrc                        ",
--   --   action = "edit ~/.bashrc",
--   -- },
--   -- {
--   --   icon = "  ",
--   --   desc = "Change colorscheme                  ",
--   --   action = "ChangeColorScheme",
--   -- },
--   -- {
--   --   icon = "  ",
--   --   desc = "Edit init.lua                       ",
--   --   action = "edit ~/.config/nvim/init.lua",
--   -- },
--   -- {
--   --   icon = "  ",
--   --   desc = "Find file                           ",
--   --   action = "Telescope find_files",
--   -- },
--   -- {
--   --   icon = "  ",
--   --   desc = "Find text                           ",
--   --   action = "Telescopecope live_grep",
--   -- },
-- }
-- db.custom_header = {
--   [[]],
--   [[███╗   ██╗███████╗██╗  ██╗███████╗███╗   ██╗]],
--   [[████╗  ██║██╔════╝██║  ██║██╔════╝████╗  ██║]],
--   [[██╔██╗ ██║███████╗███████║█████╗  ██╔██╗ ██║]],
--   [[██║╚██╗██║╚════██║██╔══██║██╔══╝  ██║╚██╗██║]],
--   [[██║ ╚████║███████║██║  ██║███████╗██║ ╚████║]],
--   [[╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝]],
-- }
--
-- db.custom_header = {
--   [[]],
--   [[          ▀████▀▄▄              ▄█ ]],
--   [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
--   [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
--   [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
--   [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
--   [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
--   [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
--   [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
--   [[   █   █  █      ▄▄           ▄▀   ]],
-- }
--
-- db.custom_header = {
--   [[]],
--   [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
--   [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
--   [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
--   [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
--   [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
--   [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
--   [[                                                   ]],
--   [[                [ version : 1.0.0 ]                ]],
-- }
--
-- db.custom_header = {
--   [[]],
--   [[     ██╗██╗   ██╗███████╗     ██╗██╗███╗   ██╗    ██████╗███╗   ██╗]],
--   [[     ██║██║   ██║██╔════╝     ██║██║████╗  ██║   ██╔════╝████╗  ██║]],
--   [[     ██║██║   ██║█████╗       ██║██║██╔██╗ ██║   ██║     ██╔██╗ ██║]],
--   [[██   ██║██║   ██║██╔══╝  ██   ██║██║██║╚██╗██║   ██║     ██║╚██╗██║]],
--   [[╚█████╔╝╚██████╔╝███████╗╚█████╔╝██║██║ ╚████║██╗╚██████╗██║ ╚████║]],
--   [[ ╚════╝  ╚═════╝ ╚══════╝ ╚════╝ ╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝╚═╝  ╚═══╝]],
--   [[                                                                   ]],
--   [[                         [ version : 1.0.0 ]                       ]],
-- }
--
-- db.custom_header = {
--   [[]],
--   [[██████╗ ███████╗ █████╗ ██╗  ████████╗██╗   ██╗██╗  ██╗██╗  ██╗██╗  ██╗]],
--   [[██╔══██╗██╔════╝██╔══██╗██║  ╚══██╔══╝╚██╗ ██╔╝╚██╗██╔╝╚██╗██╔╝╚██╗██╔╝]],
--   [[██████╔╝█████╗  ███████║██║     ██║    ╚████╔╝  ╚███╔╝  ╚███╔╝  ╚███╔╝ ]],
--   [[██╔══██╗██╔══╝  ██╔══██║██║     ██║     ╚██╔╝   ██╔██╗  ██╔██╗  ██╔██╗ ]],
--   [[██║  ██║███████╗██║  ██║███████╗██║      ██║   ██╔╝ ██╗██╔╝ ██╗██╔╝ ██╗]],
--   [[╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝      ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝]],
--   [[                                              ]],
--   [[             [ version : 1.0.0 ]              ]],
--   [[]],
--   [[]],
-- }
--
-- -- db.custom_header = {
-- --   [[]],
-- --   [[        ▄▄▄▄▄███████████████████▄▄▄▄▄    ]],
-- --   [[      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄  ]],
-- --   [[     █▀████████▄             ▀▀████ ▀██▄ ]],
-- --   [[    █▄▄██████████████████▄▄▄         ▄██▀]],
-- --   [[     ▀█████████████████████████▄    ▄██▀ ]],
-- --   [[       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀   ]],
-- --   [[         ▀███▄              ▀██████▀     ]],
-- --   [[           ▀██████▄        ▄████▀        ]],
-- --   [[              ▀█████▄▄▄▄▄▄▄███▀          ]],
-- --   [[                ▀████▀▀▀████▀            ]],
-- --   [[                  ▀███▄███▀              ]],
-- --   [[                     ▀█▀                 ]],
-- --   [[                                              ]],
-- --   [[             [ version : 1.0.0 ]              ]],
-- --   [[]],
-- --   [[]],
-- -- }
--
