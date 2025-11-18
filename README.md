# 🌿 zen-respite.nvim

A calm, bamboo-inspired Neovim colorscheme — blending Solarized harmony with Zen minimalism.

> I'm using this to learn how to make colorscheme.

## 🧘‍♀️ Preview

<img width="1328" height="761" alt="image" src="https://github.com/user-attachments/assets/9160ef7c-022b-4dc3-ba20-45e454143b82" />
this is a default theme.

## 📦 Installation

### lazy.nvim

```lua
{
  "luo-y3/zen-respite.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("zen-respite").setup({
      transparent = true, -- Optional for transparency.
    })
    vim.cmd.colorscheme("zen-respite")
  end
}
```

## License

MIT © 2025 luo-y3
