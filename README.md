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



If you find this code or the trained models useful for your research, please cite our paper:

@article{Lossano2025,
   author = {Lossano, Simone and Capaccioli, Simone and Cella Zanacchi, Francesca and Da Pozzo, Eleonora and Del Debbio, Francesca and Fantacci, Maria Evelina and Lizzi, Francesca and Magrassi, Raffaella and Noferi, Benedetta and Pisignano, Dario and Scapicchio, Camilla and Retico, Alessandra},
   title = {Generative super-resolution AI accelerates nanoscale analysis of cells},
   journal = {Machine Learning: Science and Technology},
   year = {2025},
   volume = {6},
   number = {2},
   doi = {10.1088/2632-2153/adc3e9},
   url = {[https://doi.org/10.1088/2632-2153/adc3e9](https://doi.org/10.1088/2632-2153/adc3e9)},
   publisher = {IOP Publishing}
}


