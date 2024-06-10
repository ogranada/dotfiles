vim.opt.termguicolors = true -- enable colors

vim.opt.showcmd = true     -- show last command
vim.opt.laststatus = 2     -- show status line always
vim.opt.autowrite = true   -- enable autowrite on some actions
vim.opt.cursorline = true  -- highlight current line
vim.opt.autoread = true    -- enable reload if detects a file change

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2        -- 2 spaces on tab
vim.opt.shiftwidth = 2     -- ???
vim.opt.shiftround = true  -- ???
vim.opt.expandtab = true   -- replace tab char by spaces
vim.opt.backspace = '2'    -- backspace remove two chars

vim.opt.number = true      -- enable line numbers
vim.opt.mouse = 'a'        -- enable mouse in all modes
vim.opt.ignorecase = true  --
vim.opt.smartcase = true   --
vim.opt.hlsearch = true    -- highlight searched word
vim.opt.wrap = true        -- wrap word

vim.cmd('colorscheme sorbet')

