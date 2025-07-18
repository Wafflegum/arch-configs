return {
  "andweeb/presence.nvim",
  config = function()
    require("presence").setup({
      neovim_image_text = "tite",
      main_image = "neovim",
      log_level = "info",
      debounce_timeout = 10,
      enable_line_number = false,
      show_time = true,
      buttons = {
        {
          label = "Check my GitHub",
          url = "https://github.com/Wafflegum",
        },
      },
    })
  end,
}

