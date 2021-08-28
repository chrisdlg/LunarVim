local M = {}

M.config = function()
  lvim.plugins = {
    { "lunarvim/colorschemes" },
    { "folke/tokyonight.nvim" },
    {
      "lukas-reineke/indent-blankline.nvim",
      setup = function()
        require("user.indent_blankline").setup()
      end,
      event = "BufRead",
    },
    {
      "pwntester/octo.nvim",
      event = "BufRead",
      config = function()
        require("user.octo").config()
      end,
    },
    {
      "andymass/vim-matchup",
      event = "CursorMoved",
      config = function()
        vim.g.matchup_matchparen_offscreen = { method = "popup" }
      end,
    },
    {
      "sindrets/diffview.nvim",
      event = "BufRead",
      config = function ()
        require("user.diffview").setup()
      end
    },
    {
      "karb94/neoscroll.nvim",
      config = function()
        require("user.neoscroll").config()
      end,
    },
  }
end

return M
