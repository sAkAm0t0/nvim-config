return {
  {
    "lervag/vimtex",
    init = function()
      vim.g.vimtex_compiler_latexmk_engines = { ["_"] = "-pdfdvi" }
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        executable = "run_platex",
        options = {
          "-synctex=1",
          "-halt-on-error",
        },
        continuous = 1,
      }
      vim.g.vimtex_view_method = "general"
    end,
  },
}
