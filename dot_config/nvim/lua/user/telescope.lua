-- Telescope config
vim.api.nvim_set_keymap(
  "n",
  "<leader>i",
  "<cmd>lua require('telescope.builtin').buffers()<CR>",
  { noremap = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>p",
  "<cmd>lua require('telescope.builtin').find_files()<CR>",
  { noremap = true }
)

require('telescope').setup{
  -- see :help telescope.setup()
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close
      }
    },
  }
}
