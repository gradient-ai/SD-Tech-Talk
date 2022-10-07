# ## Clone repos
git clone https://github.com/TencentARC/GFPGAN.git
git clone https://github.com/bloc97/CrossAttentionControl/
git clone https://github.com/CompVis/taming-transformers
git clone https://github.com/CompVis/stable-diffusion
git clone https://github.com/Jack000/glid-3-xl-stable
git clone https://github.com/jquesnelle/txt2imghd
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui/
## pip installs
pip install transformers scipy ftfy ipywidgets msgpack rich  mpi4py einops omegaconf pytorch_lightning realesrgan  basicsr  optax facexlib realesrgan kornia invisible-watermark
pip install git+https://github.com/crowsonkb/k-diffusion.git
pip install -e git+https://github.com/CompVis/taming-transformers.git@master#egg=taming-transformers
pip install git+https://github.com/openai/CLIP.git
pip install diffusers
pip install mpi4py 
pip install gdown
# Install and setup repo packages
cd GFPGAN
python setup.py develop
cd ~/../notebooks/glid-3-xl-stable
pip install -e .
cd ~/../notebooks
## apt installs
apt-get update
apt install libopenmpi-dev
## additional setup tasks
cp txt2imghd/txt2imghd.py stable-diffusion/scripts
cp -r taming-transformers/taming glid-3-xl-stable
cp -r stable-diffusion/ldm glid-3-xl-stable/
mkdir glid-3-xl-stable/output
mkdir glid-3-xl-stable/output_npy
mkdir outputs