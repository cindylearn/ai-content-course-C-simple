#!/bin/bash
# SUMA AI课 · 一键装齐本地工具（Mac）
# 学员完全不用手动去官网下载；Claude 侦测缺工具时帮忙跑这个。
set -e
echo "▶ 开始装本地工具（中途会问你一次 Mac 密码）..."

# 0) 先确认 git —— Homebrew 自己也要 Command Line Tools/git；没有就先停下让学员装
if ! command -v git >/dev/null 2>&1; then
  echo "✋ 还没装 git（Homebrew 也要它）。先装 git 再重跑本脚本："
  echo "   Mac：终端跑  xcode-select --install  （弹窗点「安装」，装完再重跑）"
  echo "   或从  https://git-scm.com/install/mac  直接装。"
  exit 1
fi

# 1) Homebrew
if ! command -v brew >/dev/null 2>&1; then
  echo "▶ 装 Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null || /usr/local/bin/brew shellenv)"
fi

# 2) git / node / python / rclone（rclone = 归档到 Google Drive 用）
echo "▶ 装 git / node / python / rclone..."
brew install git node python rclone

# 3) Python 合成/拼接依赖（合 logo · 拼视频）
echo "▶ 装 Python 依赖..."
python3 -m pip install --user pillow imageio-ffmpeg

echo "✅ 程序都装好：git / node / python / rclone 就绪。"
echo "ℹ️  rclone 只是「装好程序」；要连你的 Google Drive，还要跑一次授权命令「rclone config create gdrive drive scope=drive」（Claude 会带你，出于安全那一步只能你自己点浏览器「允许」）。"
