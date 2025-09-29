<!--
 * @Description: 
 * @Author: FallCicada
 * @Date: 2025-09-29 17:33:31
 * @LastEditors: FallCicada
 * @LastEditTime: 2025-09-29 17:35:13
 * @Slogan: 無限進步
-->
# Neovim 配置

这是基于 LazyVim 框架的个人 Neovim 配置。

## 概述

此配置使用 lazy.nvim 作为插件管理器，并基于 LazyVim 框架构建。它提供了一个现代化的开发环境，具有合理的默认设置和强大的功能。

## 主要特性

### 插件管理
- **lazy.nvim**：现代化插件管理器
- **LazyVim**：模块化 Neovim 配置框架

### 主题与外观
- **gruvbox**：主要配色方案
- **tokyonight/habamax**：备选配色方案
- **nvim-web-devicons**：文件类型图标

### 语言支持
- **Python**：pyright LSP 服务器
- **TypeScript/JavaScript**：tsserver 配合 typescript.nvim
- **JSON**：jsonls 配合 schemastore
- **Tree-sitter**：增强语法高亮，支持以下语言：
  - bash, html, javascript, json, lua, markdown, python, regex, tsx, typescript, vim, yaml

### 开发工具
- **Telescope**：模糊查找器
- **Trouble**：诊断和快速修复列表
- **nvim-cmp**：自动补全（支持表情符号）
- **Lualine**：状态栏
- **Mason**：外部工具包管理器（stylua, shellcheck, shfmt, flake8）

### 界面增强
- **mini.starter**：欢迎界面
- **Nerd Fonts**：图标支持

## 安装

1. 将此配置克隆到你的 `~/` 目录,后改名为`.config`
2. 使用 `nvim` 命令启动 Neovim
3. LazyVim 将在首次启动时自动安装所有插件

## 自定义

插件配置可在 `lua/plugins/` 目录中找到。每个文件对应特定插件或插件组的配置。

## 快捷键

参考 LazyVim 的默认快捷键映射：https://www.lazyvim.org/keymaps

## 许可证

此配置基于 LazyVim，采用 Apache 2.0 许可证。