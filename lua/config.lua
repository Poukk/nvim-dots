local g           = vim.g
local opt         = vim.opt
local cmd         = vim.cmd

g.have_nerd_font  = true
g.mapleader       = " "
g.maplocalleader  = " "

opt.swapfile      = false
opt.number        = true
opt.list          = true
opt.breakindent   = true
opt.termguicolors = true
opt.ignorecase    = true
opt.autoindent    = true
opt.undofile      = true
opt.expandtab     = true
opt.signcolumn    = "yes"
opt.tabstop       = 4
opt.shiftwidth    = 4
opt.softtabstop   = 4

cmd.colorscheme "vague"


