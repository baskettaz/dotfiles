return {
    "bluz71/vim-nightfly-guicolors",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the coloscheme here
      vim.cmd([[colorscheme nightfly]])
    end,
}
