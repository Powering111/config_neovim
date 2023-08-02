require("toggleterm").setup{
  size=20,
  open_mapping=[[<C-\>]],
  close_on_exit=true,
  direction='float'
}

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>l", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
