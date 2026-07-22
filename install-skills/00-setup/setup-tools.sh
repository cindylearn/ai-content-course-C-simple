#!/bin/bash
# SUMA AI课 · 一键装齐本地工具（Mac）
# 学员完全不用手动去官网下载；Claude 侦测缺工具时帮忙跑这个。
set -e
echo "▶ 开始装本地工具（中途会问你一次 Mac 密码）..."

# 1) Homebrew
if ! command -v brew >/dev/null 2>&1; then
  echo "▶ 装 Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null || /usr/local/bin/brew shellenv)"
fi

# 2) git / node / python
echo "▶ 装 git / node / python..."
brew install git node python

# 3) Python 合成/拼接依赖（合 logo · 拼视频）
echo "▶ 装 Python 依赖..."
python3 -m pip install --user pillow imageio-ffmpeg

echo "✅ 全部装好：git / node / python 就绪。"
