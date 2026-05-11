return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then
      return
    end

    configs.setup({
      ensure_installed = {
        "lua",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "json",
      },
      highlight = { enable = true },
      indent = { enable = true },
      auto_tag = { enable = true },
    })
  end,
}
