 local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them!
--[[ remove this line

map("n", "dd", [=[ "_dd ]=], opt)
map("v", "dd", [=[ "_dd ]=], opt)
map("v", "x", [=[ "_x ]=], opt)

 this line too ]]
-- OPEN TERMINALS --
map("n", "<C-l>", [[<Cmd>vnew term://bash <CR>]], opt) -- term over right
map("n", "<C-x>", [[<Cmd> split term://bash | resize 10 <CR>]], opt) --  term bottom
map("n", "<C-t>t", [[<Cmd> tabnew | term <CR>]], opt) -- term newtab

-- COPY EVERYTHING --
map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)

map("n", "<C-h>", "<C-w>h", opt) -- term newtab
map("n", "<C-j>", "<C-w>j", opt) -- term newtab
map("n", "<C-k>", "<C-w>k", opt) -- term newtab
map("n", "<C-l>", "<C-w>l", opt) -- term newtab

map("n", "<C-]>", ":tabnext<CR>", opt) -- term newtab
map("n", "<C-[>", ":tabprevious<CR>", opt) -- term newtab


map("n", ";f", "<cmd>HopChar1<cr>", opt) -- term newtab
map("n", "s", "<cmdHopChar2<cr>", opt) -- term newtab
map("n", "<leader>w", "<cmd>HopWord<cr>", opt) -- term newtab
map("n", "<leader>l", "<cmd>HopLine<cr>", opt) -- term newtab
map("n", ";;", ":w<CR>", opt)
map("n", ";a;", ":wa<CR>", opt)
map("n", "<C-u>", ":b#<CR>", opt)

-- toggle numbers ---
-- map("n", "<leader>n", [[ <Cmd> set nu!<CR>]], opt)

-- toggle truezen.nvim's ataraxis and minimalist mode
map("n", "<leader>z", [[ <Cmd> TZAtaraxis<CR>]], opt)
map("n", "<leader>m", [[ <Cmd> TZMinimalist<CR>]], opt)

map("n", "<C-s>", [[ <Cmd> w <CR>]], opt)
-- vim.cmd("inoremap jh <Esc>")

-- Commenter Keybinding
map("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
map("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
