local uConfig = require("uConfig")
local keys = uConfig.keys

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  vim.notify("没有安装 lazy.nvim")
  return
end

vim.g.mapleader = keys.leader_key
vim.g.maplocalleader = keys.leader_key

lazy.setup({
  -------------------------- plugins -------------------------------------------
  --[[{
    "lewis6991/impatient.nvim",
    config = function()
      require("plugin-config.impatient")
    end,
  },]]

  -- "nathom/filetype.nvim",

  -- nvim-notify
  {
    "rcarriga/nvim-notify",
    config = function()
      require("plugin-config.nvim-notify")
    end,
  },
  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("plugin-config.nvim-tree")
    end,
  },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("plugin-config.bufferline")
    end,
  },

  -- cokeline
  -- {
  --   "willothy/nvim-cokeline",
  --   requires = "kyazdani42/nvim-web-devicons", -- If you want devicons
  --   config = function()
  --     require("plugin-config.cokeline")
  --   end,
  -- },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugin-config.lualine")
    end,
  },

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    -- opt = true,
    -- cmd = "Telescope",
    dependencies = {
      -- telescope extensions
      { "LinArcX/telescope-env.nvim" },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "dhruvmanila/telescope-bookmarks.nvim" },
    },
    config = function()
      require("plugin-config.telescope")
    end,
  },
  -- outline
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("plugin-config.symbols-outline")
    end,
  },

  -- dashboard-nvim
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugin-config.dashboard")
    end,
  },

  -- project
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("plugin-config.project")
    end,
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
    dependencies = {
      { "p00f/nvim-ts-rainbow" },
      { "JoosepAlviste/nvim-ts-context-commentstring" },
      { "windwp/nvim-ts-autotag" },
      { "nvim-treesitter/nvim-treesitter-refactor" },
      { "nvim-treesitter/nvim-treesitter-textobjects" },
    },
    config = function()
      require("plugin-config.nvim-treesitter")
    end,
  },

  -- indent-blankline
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("plugin-config.indent-blankline")
    end,
  },

  -- -- Markdown
  {
    "iamcco/markdown-preview.nvim",
    --lazy = true,
    ft = { "markdown" },
  },

  -- toggleterm
  {
    "akinsho/toggleterm.nvim",
    --lazy = true,
    config = function()
      require("plugin-config.toggleterm")
    end,
  },

  -- nvim-surround
  {
    "kylechui/nvim-surround",
    config = function()
      require("plugin-config.nvim-surround")
    end,
  },

  -- Comment
  {
    "numToStr/Comment.nvim",
    config = function()
      require("plugin-config.comment")
    end,
  },

  -- nvim-autopairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("plugin-config.nvim-autopairs")
    end,
  },

  -- fidget.nvim : ui for nvim lsp progress
  {
    "j-hui/fidget.nvim",
    config = function()
      require("plugin-config.fidget")
    end,
  },

  -- todo-comments.nvim
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("plugin-config.todo-comments")
    end,
  },

  -- mkdnflow.nvim
  {
    "jakewvincent/mkdnflow.nvim",
    -- rocks = "luautf8", -- Ensures optional luautf8 dependency is installed
    config = function()
      require("mkdnflow").setup({
        prefix = true,
        string = [[os.date('%Y-%m')]],
      })
    end,
  },

  -- venn 画图
  {
    "jbyuki/venn.nvim",
    lazy = true,
    config = function()
      require("plugin-config.venn")
    end,
  },

  -- zen mode
  {
    "folke/zen-mode.nvim",
    -- lazy = true,
    config = function()
      require("plugin-config.zen-mode")
    end,
  },
  --------------------- LSP --------------------
  -- installer
  { "williamboman/mason.nvim" },
  "williamboman/mason-lspconfig.nvim",
  -- Lspconfig
  "neovim/nvim-lspconfig",
  -- 补全引擎
  {
    "hrsh7th/nvim-cmp",
    lazy = true,
    event = "InsertEnter",
    dependencies = {
      -- 补全源
      "hrsh7th/cmp-vsnip",
      "hrsh7th/cmp-nvim-lsp", -- { name = nvim_lsp }
      "hrsh7th/cmp-buffer", -- { name = 'buffer' },
      "hrsh7th/cmp-path", -- { name = 'path' }
      "hrsh7th/cmp-cmdline", -- { name = 'cmdline' }
      "hrsh7th/cmp-nvim-lsp-signature-help", -- { name = 'nvim_lsp_signature_help' }
    },
  },
  -- Snippet 引擎
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- 常见编程语言代码段
  { "rafamadriz/friendly-snippets" },
  -- UI 增强
  { "onsails/lspkind-nvim" },
  { "tami5/lspsaga.nvim" },

  -- 代码格式化
  { "mhartington/formatter.nvim" },
  { "jose-elias-alvarez/null-ls.nvim", dependencies = "nvim-lua/plenary.nvim" },

  -- Lua 增强
  { "folke/neodev.nvim" },
  -- Rust 增强
  -- "simrat39/rust-tools.nvim",
  --------------------- colorschemes --------------------
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      require("plugin-config.tokyonight")
    end,
  },

  -- OceanicNext
  -- { "mhartington/oceanic-next", event = "VimEnter" },

  -- molokai
  -- "tomasr/molokai",

  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    dependencies = { "rktjmp/lush.nvim" },
  },

  -- nightfox
  -- "EdenEast/nightfox.nvim",

  -------------------------------------------------------
  -- git
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugin-config.gitsigns")
    end,
  },

  -- -- vimspector
  -- {
  --   "puremourning/vimspector",
  --   cmd = { "VimspectorInstall", "VimspectorUpdate" },
  --   fn = { "vimspector#Launch()", "vimspector#ToggleBreakpoint", "vimspector#Continue" },
  --   config = function()
  --     require("dap.vimspector")
  --   end,
  -- },
  -- ----------------------------------------------
  -- -- nvim-dap
  -- "mfussenegger/nvim-dap",
  -- "theHamsta/nvim-dap-virtual-text",
  -- "rcarriga/nvim-dap-ui",

  -- node
  -- {
  --   "mxsdev/nvim-dap-vscode-js",
  --   dependencies = { "mfussenegger/nvim-dap" },
  --   config = function()
  --     require("dap.nvim-dap.config.vscode-js")
  --   end,
  -- },

  -- go
  -- "leoluz/nvim-dap-go")

  -- {
  --   "mfussenegger/nvim-dap-python",
  --   dependencies = { "mfussenegger/nvim-dap" },
  --   -- config = function()
  --   --   require("dap-python").setup("/Users/nn/.local/share/nvim/mason/bin/debugpy")
  --   -- end,
  -- },

  -- "jbyuki/one-small-step-for-vimkind")
  --[[ "dstein64/vim-startuptime") ]]

  -- move from my vimrc
  --hop
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
  },
  {
    "lervag/vimtex",
    opt = true,
    config = function()
      vim.g.vimtex_view_general_viewer = "okular"
      vim.g.vimtex_compiler_latexmk_engines = {
        _ = "-xelatex",
      }
      vim.g.tex_comment_nospell = 1
      vim.g.vimtex_compiler_progname = "nvr"
      vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
      vim.g.vimtex_view_general_options_latexmk = "--unique"
    end,
    ft = "tex",
  },

  -- cpp
  -- { "octol/vim-cpp-enhanced-highlight" },
  -- { "vim-scripts/ctags.vim" },
  -- { "vim-scripts/a.vim" },
  -- "majutsushi/tagbar",
  -- { "bfrg/vim-cpp-modern" },

  -- bookmarks
  {
    "MattesGroeger/vim-bookmarks",
    config = function()
      require("plugin-config.vim-bookmarks")
    end,
  },

  -- clangd
  {
    "p00f/clangd_extensions.nvim",
    config = function()
      require("plugin-config.clangd_extensions")
    end,
    ft = { "cpp", "c" },
  },

  -- CodeRunner
  {
    "CRAG666/code_runner.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("plugin-config.code-runner")
    end,
  },

  -- Window
  -- {
  --   "anuvyklack/windows.nvim",
  --   dependencies = {
  --     "anuvyklack/middleclass",
  --     "anuvyklack/animation.nvim",
  --   },
  --   config = function()
  --     vim.o.winwidth = 10
  --     vim.o.winminwidth = 10
  --     vim.o.equalalways = false
  --     require("windows").setup()
  --   end,
  -- },

  {
    "nvim-zh/colorful-winsep.nvim",
    config = true,
    event = { "WinNew" },
  },

  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("plugin-config.which-key")
    end,
  },
})
