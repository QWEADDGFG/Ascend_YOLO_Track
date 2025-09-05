#!/bin/bash
# chmod +x video_infer.sh
set -e  # 遇到错误立即退出

# 日志目录（自动创建）
LOGDIR="./logs"
OUTPUT_DIR="./output_video"
mkdir -p "$LOGDIR"
mkdir -p "$OUTPUT_DIR"

# 日志文件名（自动加日期）
LOGFILE="$LOGDIR/run_$(date +'%Y-%m-%d_%H-%M-%S').log"

echo "======================================"
echo " Run started at $(date)"
echo " Logs will be saved to $LOGFILE"
echo "======================================"

# 把后续所有输出都重定向到日志文件，同时在终端显示
exec > >(tee -a "$LOGFILE") 2>&1

# # 推理阶段
echo "[INFO] 开始推理..."
cd ./build
./ByteTrack /home/HwHiAiUser/gp/DATASETS/TEST_VIDEO/video
echo "[INFO] 推理完成."

