#!/bin/sh

python export_annotation_human.py --output_dir ./results/outdoor --rendering \
	--exr \
	--export_tracking \
	--sampling_points 5000 --sampling_scene_points 2000 \
	--use_gpu \
	--export_obj 
