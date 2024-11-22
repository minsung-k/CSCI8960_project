# CSCI8960 Project (Fall 2024)

## 1. Environment configuration

The code is based on Python 3.12+ and requires CUDA version 11.0 or higher. Follow the specific configuration steps below to set up the environment:

1.  Create a conda environment:
   
   ```shell
   conda create -y -n ethicalfab python=3.12
   conda activate ethicalfab
   ```

2. Install PyTorch (version can vary depending on your environment):
   
   ```shell
   conda install pytorch==1.10.0 torchvision==0.11.0 torchaudio==0.10.0 cudatoolkit=11.3 -c pytorch -c conda-forge
   ```


## 2. Run by .sh file.


```
sbatch sub.sh
'''
for DPSAT

'''
sbatch train_cifar.sh
'''
for DiceSGD and DPSGD.
