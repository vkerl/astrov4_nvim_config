return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          ["gh"] = { "^", desc = "move line head" },
          ["gk"] = { "$", desc = "move line end" },
        },
        i = {
          ["<C-h>"] = { "<Left>", desc = "move left when i" },
          ["<C-l>"] = { "<Right>", desc = "move right when i" },
          ["<C-j>"] = { "<Down>", desc = "move Down when i" },
          ["<C-k>"] = { "<Up>", desc = "move Up when i" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
          ["<A-i>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },
        },
      },
    },
  },
}