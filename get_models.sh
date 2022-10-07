apt update
apt install -y aria2
%cd stable-diffusion/models/stable-diffusion-v1/
aria2c --seed-time=0 --max-overall-upload-limit=1K "magnet:?xt=urn:btih:3A4A612D75ED088EA542ACAC52F9F45987488D1C&tr=udp://tracker.opentrackr.org:1337"

%cd ~/../notebooks/GFPGAN/experiments/pretrained_models
wget https://github.com/TencentARC/GFPGAN/releases/download/v1.3.0/GFPGANv1.3.pth
%cd ~/../notebooks/glid-3-xl-stable/
wget -O diffusion.pt https://huggingface.co/Jack000/glid-3-xl-stable/resolve/main/default/diffusion-1.4.pt
wget -O kl.pt https://huggingface.co/Jack000/glid-3-xl-stable/resolve/main/default/kl-1.4.pt