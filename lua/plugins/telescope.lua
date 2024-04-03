return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
      "AstroNvim/astrocore",
  },
  opts = function(_, opts)
      return require("astrocore").extend_tbl(opts, {
      defaults = {
          mappings = {
          i = {
              ["<C-n>"] = actions.move_selection_next,
              ["<C-p>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.cycle_history_next,
              ["<C-k>"] = actions.cycle_history_prev,
          }
          }
      }
      })
  end
}