local opt = vim.opt --conciseness

--line numbers
opt.relativenumber = true
opt.number = true

--tabs && indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true

--line wrapping
opt.wrap = false

--undotree
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

--search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- cursor line
opt.cursorline = true

--appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.colorcolumn = "80"

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = false
opt.splitbelow = true

opt.iskeyword:append("-")

--fat cursor
opt.guicursor = ""

--scrollview
opt.scrolloff = 11

opt.linebreak = true

--undercurl
vim.cmd([[let &t_Cs = "\e[4:3m]"]])
vim.cmd([[let &t_Ce = "\e[4:0m]"]])

