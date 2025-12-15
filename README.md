# ID-stickers

Névreszóló matricák rácsszerű generálása *egyedi azonosító*, *név*, *terem*, *kurzus* megjelöléssel és egy jobb alsó sarokban megjelenített *piktogrammal* [5x13 elrendezésű, A4 etiketthez](https://www.pcx.hu//etikett-fortuna-38x21-2mm-univerzalis-6500-cimke-doboz-100-iv-doboz-01-01309-665992).

A tároló egy teljes, működő projektet tartalmaz.

## Bemenetek

- *Lehetséges piktogramok* a `logos` könyvtárban,
- *Hallgatók felsorolása* termenként különálló, **vesszővel tagolt** CSV fájlokban, a `rooms` könyvtárban elhelyezve. A táblázatnak a következő oszlopokat kell tartalmaznia:
    - `name`: hallgató neve
    - `room`: terem megjelölése
    - `barcode`: a vonalkódra/QR-kódra kerülő információ
    - `logo`: a jobb alsó sarokban megjelenített piktogram fájlneve a `logos` könyvtárhoz képest relatív elérési úttal,
   Ezeken felül a táblázat AMC-beli későbbi felhasználását megkönnyítendő, célszerű egy `id`, illetve egy `neptun` mezővel is ellátni a táblázatot.

## Kimenetek

A generált matrica-oldalak a `pages` mappában fognak megjelenni.

## Futtatás

A matricák generálása a `gen_stickers.sh` script futtatásával történik, ami a `rooms` mappában található összes `.csv` táblázathoz előállítja a PDF oldalakat, amiket a `pages` mappába helyez végül.

### Függőségek

A fordításhoz `xelatex` és az alábbi LaTeX-csomagok megléte szükséges:
- `babel`
- `inputenc`
- `fontenc`
- `fontspec`
- `geometry`
- `csvsimple-13`
- `tabularx`
- `graphicsx`
- `pst-barcode`

## Nyomtatás

Az előállított oldalakat *teljes A4 oldalra történő illesztéssel* szükséges nyomtatni. A nyomtatás teszteséléhez használható a [grid.pdf](grid.pdf) fájl, ami egy, az etikett elrendezésével megegyező rácsot tartalmaz.

## Credits

Wiesner András, 2025. Készült a *Beágyazott információs rendszerek* és a *Digitális technika* tárgyakhoz.


