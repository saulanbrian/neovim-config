return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach",

  config = function()
    require("tiny-inline-diagnostic").setup({
      preset = "modern",

      options = {
        show_source = true,
        use_icons = true,
        throttle = 20,
      },
    })

    vim.diagnostic.config({
      virtual_text = false, -- disable default (we replace it)
      signs = true,
      underline = true,
      update_in_insert = true,
    })
  end,
}
