# 🌿 zen-respite.nvim

A calm, bamboo-inspired Neovim colorscheme — blending Solarized harmony with Zen minimalism.

> I'm using this to learn how to make colorscheme.

## 🧘‍♀️ Preview

_(coming Soon)_

## 📦 Installation

### lazy.nvim

```lua
{
  "luo-y3/zen-respite.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("zen-respite").setup({
      style = "dark", -- You can also use "light" as light theme.
      transparent = true, -- Optional for transparency.
    })
    vim.cmd.colorscheme("zen-respite")
  end
}
```

## License

MIT © 2025 luo-y3
