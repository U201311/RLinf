docker run -itd --gpus all \
	-e NVIDIA_DRIVER_CAPABILITIES=compute,utility,graphics,display \
	-e NVIDIA_VISIBLE_DEVICES=all \
   --shm-size 100g \
   --net=host \
   -v /data/drobotics/projects/RLinf:/workspace/RLinf \
   -p 35080:6006 \
   --name rlinf \
   rlinf/rlinf:agentic-rlinf0.1-torch2.6.0-openvla-openvlaoft-pi0 /bin/bash