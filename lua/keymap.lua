local km = vim.keymap
local o = vim.o

-- Make langmap more comfortable on my workman keyboard layout
o.langmap = 'nh,ej,ok,il,ju,ko,ui'

-- Toggle floating terminal with Alt-h
km.set('n', '<A-h>', '<CMD>lua require("FTerm").toggle()<CR>')
km.set('t', '<A-h>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- Toggle neo-tree with Alt-t
km.set('n', '<A-t>', '<CMD>NvimTreeToggle<CR>')
