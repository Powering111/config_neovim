vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>h", [[<cmd>nohlsearch<CR>]])
vim.keymap.set("n","<leader>i",[[<cmd>:ToggleAlternate<CR>]])
vim.keymap.set({ "n" }, "<leader>t", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
require('Comment').setup()

-- Telescope keymap
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope.find_files)
vim.keymap.set('n','<leader>tg',telescope.live_grep)
vim.keymap.set('n','<leader>tf',telescope.current_buffer_fuzzy_find)
vim.keymap.set('n','<leader>tm',telescope.marks)
vim.keymap.set('n','<leader>tc',telescope.colorscheme)
vim.keymap.set('n','<leader>tr',telescope.registers)
vim.keymap.set('n','<leader>to',telescope.vim_options)

vim.keymap.set("n","<leader>x",function(bufnum)
  require('bufdelete').bufdelete(bufnum)
end)
vim.keymap.set("n","<leader>1","<Cmd>BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n","<leader>2","<Cmd>BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n","<leader>3","<Cmd>BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n","<leader>4","<Cmd>BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n","<leader>5","<Cmd>BufferLineGoToBuffer 5<CR>")
vim.keymap.set("n","<leader>6","<Cmd>BufferLineGoToBuffer 6<CR>")
vim.keymap.set("n","<leader>7","<Cmd>BufferLineGoToBuffer 7<CR>")
vim.keymap.set("n","<leader>8","<Cmd>BufferLineGoToBuffer 8<CR>")
vim.keymap.set("n","<leader>9","<Cmd>BufferLineGoToBuffer 9<CR>")
vim.keymap.set("n","<leader>0","<Cmd>BufferLineGoToBuffer -1<CR>")
vim.keymap.set("n","<leader>]","<Cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n","<leader>[","<Cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n","<leader>}","<Cmd>BufferLineMoveNext<CR>")
vim.keymap.set("n","<leader>{","<Cmd>BufferLineMovePrev<CR>")



vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').toggle_breakpoint() end)
