# SR_Microscopy

net_g_latest.pth --> sono i pesi del modello

basicsr/test.py --> script da eseguire per l'inferenza mediante:
PYTHONPATH="./:${PYTHONPATH}" \  
CUDA_VISIBLE_DEVICES=0 \  
python basicsr/test.py -opt options/test/SRResNet_SRGAN/test_MSRResNet_x4.yml

