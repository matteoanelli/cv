# CV Matteo Anelli — Typst

CV scritto in [Typst](https://typst.app/), disponibile in due layout diversi.

## Prerequisiti

- **Typst** >= 0.14 — installabile via `winget install Typst.Typst` (Windows) o da [typst.app](https://github.com/typst/typst/releases)
- **profile.jpg** — foto profilo nella root del progetto

### Font

I file OTF di Font Awesome 7 sono già inclusi nella repo. Per i font del corpo testo (Raleway/Lato per `cv.typ`, Inter/Open Sans per `cv2.typ`) hai due opzioni:

1. **Installarli nel sistema** (consigliato, zero warning):
   - Scarica [Raleway](https://fonts.google.com/specimen/Raleway) e [Lato](https://fonts.google.com/specimen/Lato) da Google Fonts
   - Scarica [Inter](https://fonts.google.com/specimen/Inter) e [Open Sans](https://fonts.google.com/specimen/Open+Sans) da Google Fonts
   - Installa i file `.ttf` o `.otf` (doppio click → Installa)

2. **Scaricarli nella repo** e usare `--font-path .` (nessuna installazione di sistema):
   - Metti i file `.ttf`/`.otf` nella root del progetto
   - Typst li troverà automaticamente con il flag `--font-path`

## Build

```bash
typst compile --font-path . cv.typ      # Layout 1: upper bar + single column
typst compile --font-path . cv2.typ     # Layout 2: header + main left + sidebar right
```

Il flag `--font-path .` dice a Typst di cercare i font anche nella cartella corrente (dove ci sono i file FA7 OTF).

Per watch mode (ricompila ad ogni salvataggio):

```bash
typst watch --font-path . cv.typ
```

> **Nota PowerShell**: i warning sui font vanno su stderr, facendo sembrare che il comando sia fallito (exit code 1). Il PDF viene comunque generato correttamente.

## File

| File | Layout | Descrizione |
|------|--------|-------------|
| `cv.typ` | Upper bar + colonna singola | Header verde con foto/nome/contatti, contenuto verticale, footer a 3 colonne |
| `cv2.typ` | Header + sidebar destra | Header dark green, main content a sinistra (70%), sidebar verde chiaro a destra (30%) |

## Struttura di `cv.typ`

Il file è organizzato in sezioni logiche:

1. **Import e dati personali** — variabili `#let` per tutti i dati, facili da aggiornare
2. **Palette colori** — `header-green`, `dark-green`, `accent-green`, ecc.
3. **Funzioni componente** — `section-divider`, `soft-skill-badge`, `edu-entry`, `work-entry`, `project-entry`
4. **Configurazione pagina** — A4, margini laterali 1.5cm, font 8pt
5. **Layout a tre zone**:

```
┌─────────────────────────────────────────────┐
│  UPPER BAR (verde)                          │
│  Nome + desc  |  Foto  |  Contatti + icone  │
├─────────────────────────────────────────────┤
│  MAIN CONTENT (sfondo bianco)               │
│  Work Experience → Education → Tech Skills  │
├─────────────────────────────────────────────┤
│  FOOTER (3 colonne)                         │
│  Soft Skills  |  Volunteering  |  Languages │
└─────────────────────────────────────────────┘
```

## Struttura di `cv2.typ`

```
┌─────────────────────────────────────────────┐
│  HEADER (dark green, full width)            │
│  Nome + summary | Foto | Contatti + icone   │
├──────────────────────┬──────────────────────┤
│  MAIN (70%, bianco)  │  SIDEBAR (30%, verde)│
│  Work Experience     │  Tech Stack (tags)   │
│  Projects            │  Languages           │
│  Education           │  Soft Skills         │
│  Certifications      │  Volunteering        │
└──────────────────────┴──────────────────────┘
```

## Personalizzazione

Aggiorna le variabili `#let` in cima a ciascun file per modificare i dati personali. Le funzioni componente rendono semplice aggiungere o rimuovere entry senza toccare il layout.
