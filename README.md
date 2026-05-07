# SR_Microscopy

pretrain_network_g/net_g_latest.pth --> sono i pesi del modello

options/test_ESRGAN_x1gpu.yml --> file di configurazione

basicsr --> tutti i pacchetti che servono

basicsr/test.py --> script da eseguire per l'inferenza mediante:  
PYTHONPATH="./:${PYTHONPATH}" \  
CUDA_VISIBLE_DEVICES=0 \  
python basicsr/test.py -opt options/test_ESRGAN_x1gpu.yml 
