local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.hlsearch = false

opt.clipboard = 'unnamedplus'

opt.colorcolumn = '80,120'

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = 'yes'

opt.ignorecase = true
opt.smartcase = true

opt.wrap = false

opt.shiftwidth = 4
opt.tabstop = 4

-- https://nanotipsforvim.prose.sh/word-boundaries-and-kebab-case-variables
opt.iskeyword = opt.iskeyword + { '-' }

opt.shiftwidth = 2
opt.expandtab = true
