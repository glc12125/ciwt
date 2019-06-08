rm -f data/kitti_sample/preprocessed/training/disparity/*
rm -f data/kitti_sample/preprocessed/training/proposals_3d_computed_online/*
./build/apps/CIWTApp --config data/kitti_sample.cfg --start_frame 0 --end_frame 15 --show_visualization_2d --show_visualization_3d --tracking_mode detection_shape --debug_level 3