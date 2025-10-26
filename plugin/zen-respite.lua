
-- Optional setup hook for lazy.nvim or packer
vim.api.nvim_create_user_command("ZenRespite", function()
  vim.cmd("colorscheme zen-respite")
end, {})
