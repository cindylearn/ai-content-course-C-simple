# SUMA AI课 · 一键装齐本地工具（Windows）
# 学员完全不用手动去官网下载；Claude 侦测缺工具时帮忙跑这个。
# 跑法：powershell -ExecutionPolicy Bypass -File setup-tools.ps1
Write-Host "▶ 开始装本地工具..."

winget install --id Git.Git            -e --accept-package-agreements --accept-source-agreements
winget install --id OpenJS.NodeJS.LTS  -e --accept-package-agreements --accept-source-agreements
winget install --id Python.Python.3.12 -e --accept-package-agreements --accept-source-agreements
winget install --id Rclone.Rclone      -e --accept-package-agreements --accept-source-agreements

python -m pip install --user pillow imageio-ffmpeg

Write-Host "✅ 程序都装好：git / node / python / rclone 就绪。"
Write-Host "ℹ rclone 只是装好程序；要连 Google Drive 还要跑一次 'rclone config' 授权（Claude 会带你，那一步只能你自己点浏览器「允许」）。"
Write-Host "⚠ 装完请重开一次终端，让 PATH 生效再继续。"
