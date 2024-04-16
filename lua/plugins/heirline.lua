return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astroui.status"
    ---@diagnostic disable-next-line: inject-field
    status.component.line_end = function()
      return status.component.builder {
        {
          provider = function()
            local map = { ["unix"] = "LF", ["mac"] = "CR", ["dos"] = "CRLF" }
            return map[vim.bo.fileformat]
          end,
        },
        surround = {
          separator = "right",
        },
      }
    end
    opts.statusline = {
      hl = { fg = "fg", bg = "bg" },
      status.component.mode(),
      status.component.git_branch(),
      status.component.file_info(),
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.virtual_env(),
      status.component.treesitter(),
      status.component.line_end(),
      status.component.nav(),
    }
  end,
}
