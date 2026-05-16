return {
  {
    "supermaven-inc/supermaven-nvim",

    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-j>",
          clear_suggestion = "<A-c>",
          accept_word = "<A-w>",
        },

        ignore_filetypes = {
          cpp = true,
        },

        color = {
          suggestion_color = "#7c3aed",
          cterm = 244,
        },

        log_level = "off",
        disable_inline_completion = false,
        disable_keymaps = false,
      })
    end,
  },
}
