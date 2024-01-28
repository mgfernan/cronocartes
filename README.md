# cronocartes
Eines per construir baralles pel joc Cronocartes utilitzant l'eina de programari lliure Scribus

## Docker

```bash
docker build -t scribus .
```

Generar les cartes (2 PDFs, un pre l'anvers i l'altre pels reversos)

```bash
directori=/home/miquel/Documents/Timeline_Galicia/

docker run -v ${directori}:/joc -ti scribus ScribusGeneratorCLI.py -c /joc/cartes/cartes.csv  --lastrow 107 --outName "cartes_revers" --merge /joc/plantilla/revers.sla
```

EL CSV i els arxius d'imatges han d'estar al matix directori!

https://www.youtube.com/watch?v=kMsRn38TOiQ