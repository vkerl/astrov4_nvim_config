-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  -- theme
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- languge
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  -- { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.typescript-deno" },
  { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.just" },

  -- motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },

  -- msic
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.git.git-blame-nvim" },

  -- editing-support
  -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },

  -- indent
  -- { import = "astrocommunity.indent.indent-rainbowline" },

  -- code runner
  { import = "astrocommunity.code-runner.executor-nvim" },
}
