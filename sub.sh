#!/bin/bash
#SBATCH --job-name=DPSAT_res_e8         # Job name
#SBATCH --partition=gpu_p             # Partition (queue) name
#SBATCH --gres=gpu:1                  # Requests one GPU device 
#SBATCH --ntasks=1                    # Run a single task
#SBATCH --cpus-per-task=1             # Number of CPU cores per task
#SBATCH --mem=32gb                     # Job memory request
#SBATCH --time=40:00:00               # Time limit hrs:min:sec
#SBATCH --output=testserial.%j.out    # Standard output log
#SBATCH --error=testserial.%j.err     # Standard error log

#SBATCH --mail-type=END,FAIL          # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=mk47369@uga.edu  # Where to send mail (change username@uga.edu to your email address)



ml PyTorch/2.1.2-foss-2023a-CUDA-12.1.1
ml OpenCV/4.8.1-foss-2023a-CUDA-12.1.1-contrib
ml Opacus/1.4.0-foss-2023a-PyTorch-2.1.2-CUDA-12.1.1
ml torchvision/0.16.2-foss-2023a-CUDA-12.1.1

ml matplotlib/3.7.2-gfbf-2023a

cd DPSAT
python  DPSAT_.py --epsilon 8 --epochs 20 --rho 0.03



# 'DPWRN' / DPResNet20


# DPSAT DPSGD for wrn e = 5 & 8 // complete

# DPSAT DPSGD for res e = 5 & 8  change file name in DPSAT.py file 

