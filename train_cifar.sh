#!/bin/bash
#SBATCH --job-name=A_res_e8         # Job name
#SBATCH --partition=gpu_p             # Partition (queue) name
#SBATCH --gres=gpu:A100:1             # Requests one GPU device / H100
#SBATCH --ntasks=1                    # Run a single task
#SBATCH --cpus-per-task=1             # Number of CPU cores per task
#SBATCH --mem=32gb                     # Job memory request
#SBATCH --time=40:00:00               # Time limit hrs:min:sec
#SBATCH --output=testserial.%j.out    # Standard output log
#SBATCH --error=testserial.%j.err     # Standard error log

#SBATCH --mail-type=END,FAIL          # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=mk47369@uga.edu  # Where to send mail (change username@uga.edu to your email address)



ml PyTorch/2.1.2-foss-2023a-CUDA-12.1.1
ml Opacus/1.4.0-foss-2023a-PyTorch-2.1.2-CUDA-12.1.1
ml torchvision/0.16.2-foss-2023a-CUDA-12.1.1


ml Transformers/4.39.3-gfbf-2023a
ml huggingface_hub/0.23.4-GCCcore-12.3.0
ml Safetensors/0.4.3-gfbf-2023a


cd DiceSGD
python train_cifar.py --lr 0.1 --epoch 20 --bs 500 --mnbs 50 --C 1 --C2 1 --algo DiceSGD --model DPResNet20 --epsilon 8


# 'DPWRN' / DPResNet20

# c1 100.0 10.0 1.0 0.1
# c2 0.3 1.0 3.0 10.0 30.0