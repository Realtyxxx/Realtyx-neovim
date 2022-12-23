local status, null_ls = pcall(require, "null-ls")
if not status then
  vim.notify("没有找到 null-ls")
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
  autostart = true,
  debug = true,
  sources = {
    -- Formatting ---------------------
    --  brew install shfmt
    formatting.shfmt,
    -- StyLua
    formatting.stylua,
    -- frontend
    formatting.prettier.with({ -- 比默认少了 markdown
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "css",
        "scss",
        "less",
        "html",
        "json",
        "yaml",
        "graphql",
        "markdown",
      },
      timeout = 10000,
      prefer_local = "node_modules/.bin",
    }),
    -- rustfmt
    -- rustup component add rustfmt
    formatting.rustfmt,
    -- Python
    -- pip install black
    -- asdf reshim python
    -- added
    formatting.clang_format,
    formatting.autopep8,
    -- formatting.black.with({ extra_args = { "--fast" } }),
    -- formatting.remark_cli,
    -----------------------------------------------------
    -- Ruby
    -- gem install rubocop
    -- formatting.rubocop,
    -- json
    -- npm install -g fixjson
    formatting.fixjson,
    -- toml
    -- cargo install taplo-cli
    formatting.taplo,
    -----------------------------------------------------
    -- Diagnostics  ---------------------
    -- diagnostics.eslint.with({
    --   prefer_local = "node_modules/.bin",
    -- }),
    -- npm install -g eslint_d
    diagnostics.eslint_d.with({
      prefer_local = "node_modules/.bin",
    }),
    -- diagnostics.markdownlint,
    -- markdownlint-cli2
    -- diagnostics.markdownlint.with({
    --   prefer_local = "node_modules/.bin",
    --   command = "markdownlint-cli2",
    --   args = { "$FILENAME", "#node_modules" },
    -- }),
    --
    -- code actions ---------------------
    code_actions.gitsigns,
    -- code_actions.eslint.with({
    --   prefer_local = "node_modules/.bin",
    -- }),
    -- npm install -g eslint_d
    code_actions.eslint_d,
  },
  -- #{m}: message
  -- #{s}: source name (defaults to null-ls if not specified)
  -- #{c}: code (if available)
  diagnostics_format = "[#{s}] #{m}",
  on_attach = function(_)
    vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format({async=true})']])
    -- vim.cmd([[command! Format execute 'Format']])
    -- if client.reserver_capabilities.document_formatting then
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({async=true})")
    -- end
  end,
})
