# SR_Microscopy

Lo script da eseguire per l'inferenza è `basicsr/test.py` 
da eseguire con il seguente comando
```bash
PYTHONPATH="./:${PYTHONPATH}" \  
CUDA_VISIBLE_DEVICES=0 \  
python basicsr/test.py -opt options/test_ESRGAN_x1gpu.yml 
```
`options/test_ESRGAN_x1gpu.yml` è il file di configurazione dove vengono definiti i path alle cartelle contenenti le immagini di input:
*dataroot_lq: .`/datasets/WF/test_set`*  
e il file con i pesi del modello allenato  
*`experiments/pretrain_network_g/net_g_latest.pth`*  

`basicsr\` oltre al codice di test contiene moduli e funzioni utili





