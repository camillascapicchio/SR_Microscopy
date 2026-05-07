# SR_Microscopy

Lo script da eseguire per l'inferenza è `basicsr/test.py` 
da eseguire con il seguente comando
```bash
PYTHONPATH="./:${PYTHONPATH}" \  
CUDA_VISIBLE_DEVICES=0 \  
python basicsr/test.py -opt options/test_ESRGAN_x1gpu.yml 
```

`pretrain_network_g/net_g_latest.pth` --> pesi del modello allenato

`options/test_ESRGAN_x1gpu.yml` --> file di configurazione

`basicsr\` --> moduli e funzioni utili



