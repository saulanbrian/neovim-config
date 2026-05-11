return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      sync_root_with_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = false,
      },
    })

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
  end,
}
