# SR_Microscopy

Codici necessari per eseguire l'inferenza di un modello ESRGAN per la generazione di immagini di microscopia a super-risoluzione a partire da immagini a bassa risoluzione.

Lo script da eseguire per l'inferenza è `basicsr/test.py` 
da eseguire con il seguente comando
```bash
PYTHONPATH="./:${PYTHONPATH}" \  
CUDA_VISIBLE_DEVICES=0 \  
python basicsr/test.py -opt options/test_ESRGAN_x1gpu.yml 
```
`options/test_ESRGAN_x1gpu.yml` è il file di configurazione dove vengono definiti i path alle cartelle contenenti le immagini di input:
*dataroot_lq: ./`datasets/WF/test_set`*  
e il file con i pesi del modello allenato  
*./`experiments/pretrain_network_g/net_g_latest.pth`*  

`basicsr\` oltre al codice di test contiene moduli e funzioni utili

`datasets/WF/test_set` contiene delle immagini di input di esempio per provare a eseguire il codice.

Il codice produce come output una cartella "results" in cui vengono salvati sia il log che le immagini di output.

Per eseguire l'inferenza tramite Docker container, utilizzare solo l'immagine docker, ovvero la cartella **`DOCKER_SRMicroscopy`**.
Eseguendo il comando:
```bash
docker run --rm \
  -v "$(pwd)/datasets/WF/test_set/01.png:/input.png" \
  -v "$(pwd)/output:/output" \
  esrgan-xnat \
  /input.png /output
```




