return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      null_ls.builtins.formatting.trim_newlines,
      null_ls.builtins.formatting.trim_whitespace,
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.clang_format,
      null_ls.builtins.formatting.cmake_format,
      null_ls.builtins.formatting.dart_format,
      null_ls.builtins.formatting.isort,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.gofumpt,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.shfmt,
      null_ls.builtins.formatting.rustfmt,
      null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.diagnostics.flake8,
      null_ls.builtins.diagnostics.golangci_lint,
      null_ls.builtins.diagnostics.yamllint,
      null_ls.builtins.completion.spell,
      null_ls.builtins.code_actions.shellcheck,
    })
  end,
  requires = { "nvim-lua/plenary.nvim" },
}
