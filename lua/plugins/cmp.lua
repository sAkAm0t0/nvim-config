return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- LSP連携
    "hrsh7th/cmp-buffer", -- バッファ補完
    "hrsh7th/cmp-path", -- パス補完
    "L3MON4D3/LuaSnip", -- スニペット
  },

  enabled = true,
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = {
        { name = "copilot" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      },
    })
  end,
}
