return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<C-\>]],
      shade_terminals = true,
      shading_factor = 2,
      direction = "float",
      float_opts = {
        border = "rounded",
        winblend = 0,
      },
    })
  end,
}
