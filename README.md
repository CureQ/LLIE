# LLIE-implementaties voor Alderli

Deze repository bevat de code, experimenten en een deel van de resultaten die zijn verzameld tijdens het onderzoek om een LLIE-methode te implementeren voor het valdectiesysteem van Alderli.

## Inhoud

| Bestand/Map                     | Beschrijving                                                                                     |
|----------------------------------|--------------------------------------------------------------------------------------------------|
| `dataset.ipynb`                 | Preprocessing van de originele data: resizen, annoteren en het ordenen op de ruimte (ordenen van lichtinvallen is handmatig uitgevoerd). <br> _Let op: Afbeeldingen zijn uit het Notebook gehaald._    |
| `model-test.ipynb`              | Evaluatie van de LLIE-methoden. <br> _Let op: Afbeeldingen zijn uit het Notebook gehaald._ |
| `finetune-test.ipynb`           | Evaluatie van modellen die gefinetuned zijn op Alderli's eigen data. <br> _Let op: Afbeeldingen zijn uit het Notebook gehaald._      |
| `RetinexNet/test.ipynb`         | Genereren van verbeterde output met RetinexNet.                                             |
| `ZeroDceLite/finetune.ipynb`    | Genereren van verbeterde output, finetunen en testen van de ZeroDCE en ZeroDCE++ modellen.  

## Data en privacy

Vanwege privacygevoelige informatie zijn de gemaakte en gebruike afbeeldingen niet in deze repository gedeeld. <br>
De volgende 2 folders zijn achterwege gelaten: 
- `data-filtered-rooms` bevat de originele beelden waar later de LLIE-bewerkingen op uit zijn gevoerd
- `datasets` bevat de specifieke train/test/val datasets.

Tevens zijn de afbeeldingen van Alderli vanwege dezelfde privacygevoelige informatie uit de Python Notebooks verwijderd.

## Technische requirements

- Python 3.7.12
- Zie `requirements.txt` voor alle benodigde libraries

## Bron 1

- De informatie waar in de thesis naar verwezen wordt als `Bron 1` is opgenomen als `MAAI_Logboek.pdf`.
- Het interview waar in de paper naar verwezen wordt als `Bron 1` is opgenomen als `Interview_Alderli.pdf`.

