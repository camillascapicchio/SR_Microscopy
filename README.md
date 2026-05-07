# SR_Microscopy

pretrain_network_g/net_g_latest.pth --> sono i pesi del modello

basicsr/test.py --> script da eseguire per l'inferenza mediante:  
PYTHONPATH="./:${PYTHONPATH}" \  
CUDA_VISIBLE_DEVICES=0 \  
python basicsr/test.py -opt options/test/SRResNet_SRGAN/test_MSRResNet_x4.yml

options/test_ESRGAN_x1gpu.yml --> file di configurazione

