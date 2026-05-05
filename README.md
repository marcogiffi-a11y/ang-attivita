# ANG-Attività

App per la gestione delle attività personali e aziendali.
Collegata a **Supabase** per il database e **ANG Gest** per i progetti.

## Stack
- Frontend: HTML/CSS/JS puro (nessun framework)
- Database: Supabase (PostgreSQL)
- Deploy: Vercel
- AI: Claude API (assegnazione automatica progetto)

## Setup rapido

### 1. Supabase
1. Vai su [supabase.com](https://supabase.com) → il tuo progetto
2. Apri **SQL Editor**
3. Copia e incolla il contenuto di `supabase-schema.sql`
4. Clicca **Run**
5. Vai in **Settings → API** e copia:
   - `Project URL` → incollalo in `index.html` dove dice `TUOPROGETTO.supabase.co`
   - `anon public key` → incollala dove dice `TUALUNGA_ANON_KEY`

### 2. Icona
Metti il file `ANG-Attivita-FINALE.png` nella cartella e rinominalo `icon.png`

### 3. GitHub
```bash
git init
git add .
git commit -m "ANG-Attività v1"
git remote add origin https://github.com/TUOUSERNAME/ang-attivita.git
git push -u origin main
```

### 4. Vercel
1. Vai su [vercel.com](https://vercel.com)
2. **New Project** → importa da GitHub
3. Seleziona `ang-attivita`
4. Clicca **Deploy** — nessuna configurazione necessaria

## Struttura file
```
ang-attivita/
├── index.html          ← App principale
├── icon.png            ← Icona (ANG-Attivita-FINALE.png rinominato)
├── supabase-schema.sql ← Schema database
└── README.md
```

## Collegamento con ANG Gest
I progetti vengono letti dalla tabella `progetti` di Supabase.
ANG Gest deve scrivere in quella stessa tabella per la sincronizzazione automatica.
