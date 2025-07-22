return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- LSP連携
    "hrsh7th/cmp-buffer", -- バッファ補完
    "hrsh7th/cmp-path", -- パス補完
    "L3MON4D3/LuaSnip", -- スニペット
  },

  enabled = true,
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping(function(fallback)
        if cmp.visible() and cmp.get_selected_entry() then
          cmp.confirm({ select = false })
        else
          fallback()
        end
      end, { "i", "s" }),
    })

    opts.sources = cmp.config.sources({
      { name = "copilot" },
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "path" },
    })

    opts.window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    }

    opts.formatting = {
      format = function(entry, vim_item)
        vim_item.abbr = string.sub(vim_item.abbr, 1, 40)
        vim_item.dup = 0
        return vim_item
      end,
    }

    opts.experimental = {
      ghost_text = true,
    }

    return opts
  end,
}
