local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    	{ 'phaazon/hop.nvim' }, 
{ 'nvim-neo-tree/neo-tree.nvim', branch = 'v2.x', dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons','MunifTanjim/nui.nvim', 's1n7ax/nvim-window-picker' } },
{ 'nvim-treesitter/nvim-treesitter' },
{ 'neovim/nvim-lspconfig' },
{ 'hrsh7th/cmp-nvim-lsp' }, 
{ 'hrsh7th/cmp-buffer' }, 
{ 'hrsh7th/cmp-path' },
{ 'hrsh7th/cmp-cmdline' }, 
{ 'hrsh7th/nvim-cmp' },
{ 'akinsho/toggleterm.nvim', version = "*", config = true },
{ 'lewis6991/gitsigns.nvim' },
{ 'akinsho/bufferline.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim' } },
{ 'catppuccin/nvim' },
{ 'glepnir/dashboard-nvim', event = 'VimEnter', dependencies = {{'nvim-tree/nvim-web-devicons'}} },
{ 'windwp/nvim-autopairs', event = "InsertEnter", config = true },
{ 'williamboman/mason.nvim', build = ':MasonUpdate' },
{ 'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { 'nvim-lua/plenary.nvim' } },
{ 'MeanderingProgrammer/render-markdown.nvim', opts = {}, dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, },
{ 'vhyrro/luarocks.nvim', priority = 1001, opts = { rocks = { "magick" }, }, },

{
 '3rd/image.nvim', 
 dependencies = { 'luarocks.nvim' }, 
 config = function()
 require("image").setup({
 backend = "kitty", 
 max_height_window_percentage = 50,
 hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.svg" },
 })
 end
},

{ 'HakonHarnes/img-clip.nvim', event = "VeryLazy", opts = { }, }

});
