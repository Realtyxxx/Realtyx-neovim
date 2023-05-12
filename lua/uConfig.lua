local M = {
  config_path = vim.fn.stdpath("config"),

  keys = {

    leader_key = ",",

    -- : 模式
    -- c_next_item = "<C-j>",
    -- c_prev_item = "<C-k>",

    -- normal 模式
    n_quit_this = "<leader>q", -- :q!
    n_save = "<leader>w", -- :w
    n_save_quit = "<leader>wq", --:wq
    n_save_all = "<leader>wa", -- :wa
    -- n_save_all_quit = "<leader>qa", -- :wqa
    n_force_quit = "<leader>qa", -- :qa!

    n_v_5j = "<C-j>",
    n_v_5k = "<C-k>",

    n_v_10k = "<C-u>",
    n_v_10j = "<C-d>",

    -- cmp 快捷键
    cmp_complete = "<M-.>",
    cmp_abort = "<M-,>",
    cmp_confirm = "<CR>",
    cmp_scroll_doc_up = "<C-u>",
    cmp_scroll_doc_down = "<C-d>",
    cmp_select_prev_item = "<C-k>",
    cmp_select_next_item = "<C-j>",

    -- luasnip
    snip_jump_next = "<C-l>",
    snip_jump_prev = "<C-h>",
    snip_next_choice = "<C-j>",
    snip_prev_choice = "<C-k>",

    s_windows = {

      enable = true,

      -- 窗口开关
      split_vertically = "sv",
      split_horizontally = "sh",
      close = "sc",
      close_others = "so",

      -- 窗口跳转
      jump_left = "<M-h>",
      jump_right = "<M-l>",
      jump_up = "<M-k>",
      jump_down = "<M-j>",

      -- <leader> + hjkl 窗口之间跳转
      -- jump_left = "<space>h",
      -- jump_right = "<space>j",
      -- jump_up = "<space>k",
      -- jump_down = "<space>l",

      -- 窗口比例控制
      width_decrease = "s,",
      width_increase = "s.",
      height_decrease = "sj",
      height_increase = "sk",
      size_equal = "s=",
    },

    s_tab = {
      split = "ts",
      prev = "th",
      next = "tl",
      first = "tj",
      last = "tk",
      close = "tc",
    },

    fold = {
      open = "Z",
      close = "zz",
    },

    format = "<F9>",

    terminal_to_normal = "<Esc>",
    -- TODO

    -- proxy
    -- im-select
  },

  enable_magic_search = true,

  todoComments = {
    TodoTelescope = "<leader>tt",
    TodoLocList = "<leader>tl",
  },

  bufferLine = {

    enable = true,

    prev = "<C-h>",
    next = "<C-l>",
    close = "<C-w>",
    -- close = "<leader>bc",
    close_left = "<leader>bh",
    close_right = "<leader>bl",
    close_others = "<leader>bo",
    close_pick = "<leader>bt",
    pin = "<leader>bp",
  },

  telescope = {

    enable = true,

    find_files = "<C-p><C-f>",
    live_grep = "<C-p><C-g>",
    git_status = "<C-p><C-s>",

    oldfiles = "<C-p><C-o>",
    current_buffer_tags = "<C-p><C-t>",
    current_buffer_fuzzy_find = "<C-p><C-z>",
    marks = "<C-p><C-m>",
    projects = "<C-p><C-p>",
    lsp_incoming_calls = "<C-p><C-i>",
    -- lsp_outoming_calls = "<C-p><C-k>",

    -- 上下移动
    move_selection_next = "<C-j>",
    move_selection_previous = "<C-k>",
    -- move_selection_next = "<C-n>",
    -- move_selection_previous = "<C-p>",
    -- 历史记录
    cycle_history_next = "<Down>",
    cycle_history_prev = "<Up>",
    -- 关闭窗口
    -- close = "<C-c>",
    close = "<esc>",
    -- 预览窗口上下滚动
    preview_scrolling_up = "<C-u>",
    preview_scrolling_down = "<C-d>",
    diagnostics = "<C-p><C-d>",
  },

  mkdnflow = {
    enable = true,
    next_link = "gn",
    prev_link = "gp",
    next_heading = "gj",
    prev_heading = "gk",
    go_back = "<C-o>",
    follow_link = "gd",
    toggle_item = "tt",
  },

  comment = {
    enable = true,
    -- Normal 模式快捷键
    toggler = {
      -- line = "gcc", -- 行注释
      -- block = "gbc", -- 块注释
      line = "cc", -- 行注释
      block = "cs", -- 块注释
    },
    -- Visual 模式
    opleader = {
      line = "gc", -- 行注释
      block = "gb", -- 块注释
      -- line = "cc",
      -- bock = "cs",
    },
    -- Extral 模式
    extra = {
      above = "cO",
      below = "co",
      eol = "ca",
    },
  },

  toggleterm = {
    enable = true,

    -- <leader>ta 浮动命令行窗口
    toggle_window_A = "<leader>ta",
    -- <leader>tb 右侧命令行窗口
    toggle_window_B = "<leader>tb",
    -- <leader>tc 下方命令行窗口
    toggle_window_C = "<leader>tc",
  },

  venn = {
    -- toggle keymappings for venn using <leader>v
    enable = true,
    -- venn.nvim: enable or disable keymappings
    toggle = "<leader>v",
    -- draw a box by pressing "f" with visual selection
    draw_box = "f",
  },

  zen = {
    enable = true,
    toggle = "<leader>z",
  },

  lsp = {
    rename = "<leader>rn",
    code_action = "<leader>ca",
    format = "<f9>",
    definition = "gd",
    references = "gr",
    hover = "gh",
    -- diagnostic
    open_flow = "gp",
    goto_next = "gj",
    goto_prev = "gk",
    -- typescript
    -- ts_organize = "gs",
    -- ts_rename_file = "gR",
    -- ts_add_missing_import = "gi",
    -- ts_remove_unused = "gu",
    -- ts_fix_all = "gf",
    -- ts_goto_source = "gD",
  },

  -- clangd
  clangd = {
    ClangdSwitchSourceHeader = "<leader>s",
  },
}

return M
