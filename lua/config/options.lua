-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e1e2e", fg = "#cdd6f4" })
vim.opt.wrap = true

-- Customize the popup menu (autocomplete suggestions)
-- vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1e1e2e" }) -- Background of the entire popup
-- vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#313244", fg = "#cdd6f4" }) -- Selected item
-- vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#313244" }) -- Scrollbar
-- vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#585b70" }) -- Scrollbar thumb
-- vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#fff000" }) -- Scrollbar thumb

-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     vim.defer_fn(function()
--       vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e" })
--       vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e1e2e", fg = "#89b4fa" })
--       vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1e1e2e" })
--       vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#313244", fg = "#cdd6f4" })
--       vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#313244" })
--       vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#585b70" })
--     end, 100)
--   end,
-- })

-- vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#89b4fa", bold = true })
-- vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#89b4fa", bold = true })
-- vim.api.nvim_set_hl(0, "CmpItemKind", { fg = "#f5c2e7" })
-- vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#7f849c" })
