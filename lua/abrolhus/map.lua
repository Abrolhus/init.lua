--> LSP keymaps are on after/plugin/lsp.lua

-- EVIL

vim.keymap.set("n", "<leader><leader>", ':')
-- OPEN
vim.keymap.set("n", "<leader>oe", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ot", vim.cmd.NvimTreeOpen)

-- move visual blocks with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- sane keybindings
vim.keymap.set("v", "Y", "y$")
vim.keymap.set("n", "Q", "<nop>") -- i hate 'q'
vim.keymap.set("n", "q", "<nop>")

vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- leader+p pastes but dont put the thing in the clipboard (greatest remap ever according to the primeagen)
vim.keymap.set("x", "<leader>p", [["_dP]])

-- leader+yank yanks to system clipboard (next greatest remap ever according to the primeagen : asbjornHaland)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>D", [["_D]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

--- WINDOW 
vim.keymap.set("n", "<leader>wh", function() vim.cmd "wincmd h" end)
vim.keymap.set("n", "<leader>wj", function() vim.cmd "wincmd j" end)
vim.keymap.set("n", "<leader>wk", function() vim.cmd "wincmd k" end)
vim.keymap.set("n", "<leader>wl", function() vim.cmd "wincmd l" end)
-- splits
vim.keymap.set("n", "<leader>wsh", function() vim.cmd "lefta  :vsplit" end)
vim.keymap.set("n", "<leader>wsj", function() vim.cmd "rightb :split" end)
vim.keymap.set("n", "<leader>wsk", function() vim.cmd "lefta  :split" end)
vim.keymap.set("n", "<leader>wsl", function() vim.cmd "rightb :vsplit" end)
vim.keymap.set("n", "<leader>w+" , function() vim.cmd ":vertical resize +5" end)
vim.keymap.set("n", "<leader>w-" , function() vim.cmd ":vertical resize -5" end)
