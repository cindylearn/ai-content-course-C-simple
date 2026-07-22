# SUMA AI课 · 一键装齐本地工具（Windows）
# 学员完全不用手动去官网下载；Claude 侦测缺工具时帮忙跑这个。
# 跑法：powershell -ExecutionPolicy Bypass -File setup-tools.ps1
Write-Host "▶ 开始装本地工具..."

winget install --id Git.Git            -e --accept-package-agreements --accept-source-agreements
winget install --id OpenJS.NodeJS.LTS  -e --accept-package-agreements --accept-source-agreements
winget install --id Python.Python.3.12 -e --accept-package-agreements --accept-source-agreements

python -m pip install --user pillow imageio-ffmpeg

Write-Host "✅ 全部装好：git / node / python 就绪。"
Write-Host "⚠ 装完请重开一次终端，让 PATH 生效再继续。"
