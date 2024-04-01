vim.opt.cindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.langmap = "чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM"
vim.opt.clipboard = "unnamedplus"
vim.cmd('syntax on')

if vim.fn.has('mouse')==1 then
    vim.opt.mouse = 'a'
end

if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end
