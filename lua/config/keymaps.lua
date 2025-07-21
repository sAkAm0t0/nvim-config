local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local terminals = require("config.terminals")

-- ファイル操作
map("n", "<leader>w", "<cmd>w<CR>", vim.tbl_extend("force", opts, { desc = "Save" }))
map("n", "<leader>q", "<cmd>q<CR>", vim.tbl_extend("force", opts, { desc = "Quit" }))
map("n", "<leader>n", "<cmd>enew<CR>", vim.tbl_extend("force", opts, { desc = "New buffer" }))
map("n", "<leader>c", "<cmd>bd<CR>", vim.tbl_extend("force", opts, { desc = "Close buffer" }))
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", vim.tbl_extend("force", opts, { desc = "Toggle file explorer" }))

-- 検索 / Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", vim.tbl_extend("force", opts, { desc = "Find File" }))
map("n", "<leader>/", "<cmd>Telescope live_grep<CR>", vim.tbl_extend("force", opts, { desc = "Grep (Live)" }))
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", vim.tbl_extend("force", opts, { desc = "Buffers" }))

-- Git 操作（LazyGit / Gitsigns）
map("n", "<leader>gg", terminals.toggle_lazygit, { desc = "Toggle LazyGit (float)" })
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", vim.tbl_extend("force", opts, { desc = "Preview Hunk" }))
map(
  "n",
  "<leader>gb",
  "<cmd>Gitsigns toggle_current_line_blame<CR>",
  vim.tbl_extend("force", opts, { desc = "Toggle Blame" })
)

-- LSP 操作
map("n", "<leader>cd", vim.diagnostic.open_float, vim.tbl_extend("force", opts, { desc = "Line Diagnostics" }))
map("n", "<leader>cr", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename" }))
map("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code Action" }))
map("n", "<leader>cf", vim.lsp.buf.format, vim.tbl_extend("force", opts, { desc = "Format" }))

-- Terminal 操作
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
