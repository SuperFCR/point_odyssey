#!/bin/sh

# python export_annotation_human.py --output_dir ./results/outdoor --rendering \
# 	--exr \
# 	--export_tracking \
# 	--sampling_points 5000 --sampling_scene_points 2000 \
# 	--use_gpu \
# 	--export_obj 

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
log_file="./results/outdoor_blur/script_output_$timestamp.log"

python export_annotation_human.py --output_dir ./results/outdoor_blur --rendering \
    --exr \
    --export_tracking \
    --sampling_points 5000 --sampling_scene_points 2000 \
    --use_gpu \
    --export_obj \
    --motion_blur 0.5 

