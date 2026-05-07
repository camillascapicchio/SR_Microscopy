# SR_Microscopy

`pretrain_network_g/net_g_latest.pth` --> pesi del modello allenato

`options/test_ESRGAN_x1gpu.yml` --> file di configurazione

`basicsr\` --> moduli e funzioni utili

`basicsr/test.py` --> script da eseguire per l'inferenza mediante:  

```bash
PYTHONPATH="./:${PYTHONPATH}" \  
CUDA_VISIBLE_DEVICES=0 \  
python basicsr/test.py -opt options/test_ESRGAN_x1gpu.yml 
```
