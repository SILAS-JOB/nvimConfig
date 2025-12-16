return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        hidden = true,
        no_ignore = true,
        file_ignore_patterns = {},
        find_command = (vim.fn.executable("fd") == 1)
            and { "fd", "--type", "f", "--hidden", "--strip-cwd-prefix", "-E", ".git" }
          or { "rg", "--files", "--hidden", "--no-ignore-vcs", "-g", "!.git" },
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true,
        },
        git_files = {
          show_untracked = true,
          only_cwd = false,
        },
      },
    },
  },
}
