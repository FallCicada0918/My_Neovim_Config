--------------------------------------------------
-- 1. 基础默认选项
--------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 显示行号
vim.opt.number = true
-- 启用鼠标
vim.opt.mouse = "a"
-- 剪贴板与系统互通
vim.opt.clipboard = "unnamedplus"
-- 缩进
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

--------------------------------------------------
-- 2. lazy.nvim 启动
--------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  error("lazy.nvim not found!")
end
vim.opt.rtp:prepend(lazypath)

--------------------------------------------------
-- 3. 插件列表
--------------------------------------------------
require("lazy").setup({
  -- 主题
  { "folke/tokyonight.nvim" },

  -- 文件树
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
    end,
  },

  -- 模糊查找
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- 语法高亮
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
}, {})

--------------------------------------------------
-- 4. 键映射示例
--------------------------------------------------
local key = vim.keymap.set
key("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
key("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
key("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" })

--------------------------------------------------
-- 5. 配色
--------------------------------------------------
vim.cmd.colorscheme("tokyonight")
