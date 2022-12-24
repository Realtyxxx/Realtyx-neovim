require("code_runner").setup({
  -- choose default mode (valid term, tab, float, toggle, buf)
  mode = "buf",
  -- Focus on runner window(only works on toggle, term and tab mode)
  focus = true,
  -- startinsert (see ':h inserting-ex')
  startinsert = false,
  term = {
    --  Position to open the terminal, this option is ignored if mode is tab
    position = "bot",
    -- window size, this option is ignored if tab is true
    size = 8,
  },
  float = {
    -- Key that close the code_runner floating window
    close_key = "<ESC>",
    -- Window border (see ':h nvim_open_win')
    border = "rounded",

    -- Num from `0 - 1` for measurements
    height = 0.8,
    width = 0.8,
    x = 0.5,
    y = 0.5,

    -- Highlight group for floating window/border (see ':h winhl')
    border_hl = "FloatBorder",
    float_hl = "Normal",

    -- Transparency (see ':h winblend')
    blend = 0,
  },
  filetype_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/code_runner.nvim/lua/code_runner/code_runner.json",
  filetype = {
    -- java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
    -- python = "python3 -u",
    -- typescript = "deno run",
    -- rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
    -- cpp = "cd $dir && g++ -std=c++17 $fileName -o $fileNameWithoutExt && ./fileNameWithoutExt",
    -- c = "cd $dir && g++ $fileName -o $fileNameWithoutExt && ./fileNameWithoutExt",
    javascript = "node",
    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
    c = "cd $dir && gcc $fileName -std=c99 -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
    cpp = "cd $dir && g++ $fileName -std=c++17 -lpthread -o $fileNameWithoutExt.out && $dir/$fileNameWithoutExt.out",
    objective_c = "cd $dir && gcc -framework Cocoa $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
    php = "php",
    python = "python3 -u",
    perl = "perl",
    perl6 = "perl6",
    ruby = "ruby",
    go = "go run",
    lua = "lua",
    groovy = "groovy",
    powershell = "powershell -ExecutionPolicy ByPass -File",
    bat = "cmd /c",
    shellscript = "bash",
    fsharp = "fsi",
    csharp = "scriptcs",
    vbscript = "cscript //Nologo",
    typescript = "ts-node",
    coffeescript = "coffee",
    scala = "scala",
    swift = "swift",
    julia = "julia",
    crystal = "crystal",
    ocaml = "ocaml",
    r = "Rscript",
    applescript = "osascript",
    clojure = "lein exec",
    haxe = "haxe --cwd $dirWithoutTrailingSlash --run $fileNameWithoutExt",
    rust = "cd $dir && rustc $fileName && $dir$fileNameWithoutExt",
    racket = "racket",
    scheme = "csi -script",
    ahk = "autohotkey",
    autoit = "autoit3",
    dart = "dart",
    pascal = "cd $dir && fpc $fileName && $dir$fileNameWithoutExt",
    d = "cd $dir && dmd $fileName && $dir$fileNameWithoutExt",
    haskell = "runhaskell",
    nim = "nim compile --verbosity:0 --hints:off --run",
    lisp = "sbcl --script",
    kit = "kitc --run",
    v = "v run",
    sass = "sass --style expanded",
    scss = "scss --style expanded",
    less = "cd $dir && lessc $fileName $fileNameWithoutExt.css",
    FortranFreeForm = "cd $dir && gfortran $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
    fortran_modern = "cd $dir && gfortran $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
    fortran_fixed_form = "cd $dir && gfortran $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
    fortran = "cd $dir && gfortran $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
  },
  project_path = vim.fn.stdpath("data")
    .. "/site/pack/packer/start/code_runner.nvim/lua/code_runner/project_manager.json",
  project = {},
})
