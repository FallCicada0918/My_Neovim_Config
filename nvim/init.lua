-- 欺骗 DevIcons：终端就是 Nerd Font
vim.env.NVIM_WEB_DEVICONS_GLOBAL_ENABLE = 'nerd'
-- 指定 nvim 内部渲染用 Nerd Font
vim.opt.guifont = 'JetBrainsMono Nerd Font Mono:h14'
-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")

-- 在 init.lua 里（lazy setup 之前或插件 config 里都可）
require('nvim-web-devicons').setup({
  -- 强制启用
  default = true,
  -- 可选：把「缺失」图标替换成已有字符，避免问号
  override = {
    default = { icon = '󰈙', color = '#6d8086', name = 'Default' },
  },
})
