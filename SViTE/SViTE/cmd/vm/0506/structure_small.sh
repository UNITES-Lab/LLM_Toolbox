python -m torch.distributed.launch \
    --nproc_per_node=8 \
    --use_env main.py \
    --pruning_type structure_new \
    --model deit_small_patch16_224 \
    --atten_head 6 \
    --atten_density 0.5 \
    --other_density 0.5 \
    --update_frequency 15000 \
    --epochs 600 \
    --batch-size 64 \
    --t_end 0.8 \
    --data-path $1 \
    --output_dir ./small_dst_structure_0502 \
    --dist_url tcp://127.0.0.1:23305 \
    --density 0.5 \
    --sparse_init fixed_ERK \
    --growth gradient \
    --death magnitude \
    --redistribution none \
    --num_workers $2