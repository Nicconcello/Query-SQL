# 1 La base di dati
Si consideri una base di dati contenente informazioni relative alle squadre, alle partite e agli
arbitri del campionato italiano di calcio di Serie A in varie stagioni. Lo schema relazionale è il
seguente:

squadra(nome, citta, regione)

arbitro(codice, nome, sezioneAIA, regioneSezioneAIA)

partita(stagione, giornata, codice, data, girone, squadraCasa, squadraTrasferta, golCasa, golTrasferta, arbitro)

In ogni relazione gli attributi che formano la chiave primaria sono sottolineati. Gli attributi
hanno il seguente significato.

• Ogni tupla di squadra si riferisce ad una squadra identificata dal nome e contiene il nome
stesso, la città di appartenenza e la regione della città di appartenenza.

• Ogni tupla di arbitro si riferisce ad un arbitro identificato da un codice e contiene il codice
stesso, il nome, la sezione dell’Associazione Italiana Arbitri (AIA) cui appartiene e la regione
in cui si trova tale sezione.

• Ogni tupla di partita si riferisce ad una partita disputata in una certa stagione.
– stagione rappresenta l’anno iniziale del campionato in cui la partita si è disputata:
ad esempio, il valore 2023 indica la stagione 2023–2024.

– giornata assume valori da 1 a 38 e rappresenta il turno del campionato in una stagione
(in ogni stagione, essendo 20 le squadre che partecipano, ci sono 38 giornate, in ognuna
delle quali si disputano 10 partite).

– codice assume valori da 1 a 10 e identifica una partita nell’ambito di una giornata di
una stagione. Così, la tupla che ha 3 in codice, 13 in giornata e 2023 in stagione
identifica la partita numero 3 della 13-esima giornata della stagione 2023–2024.

– data è la data in cui si è disputata la partita;

– girone vale ’andata’ nelle giornate da 1 a 19 e ’ritorno’ nelle giornate da 20 a 38.

– squadraCasa e squadraTrasferta sono i nomi delle squadre partecipanti alla partita.

– golCasa e golTrasferta indicano, rispettivamente, i gol segnati dalla squadra di casa
e da quella in trasferta.

– arbitro è il codice dell’arbitro che ha diretto la partita.

Nella relazione partita, gli attributi squadraCasa e squadraTrasferta sono foreign key verso
squadra e l’attributo arbitro è una foreign key verso arbitro. Le due squadre di una partita
sono diverse e i valori negli attributi golCasa e golTrasferta sono interi non negativi.
La base di dati, che include la definizione dello schema e i dati relativi ad alcune stagioni è
scaricabile da MOODLE. Una squadra si considera partecipante a una stagione se compare in
almeno una partita di quella stagione (come squadra di casa o in trasferta).

# 2 Le domande alle quali rispondere
Formulare in SQL le seguenti interrogazioni. Per uanto riguarda la preparazione al test SQL,
considerare le prime 5 query come campioni significativi.
1. Mostrare, per ogni partita arbitrata da un arbitro appartenente a una sezione AIA del Lazio,
la stagione, i nomi delle due squadre, i gol segnati da ciascuna e il nome dell’arbitro.
2. Per ogni stagione e per ogni coppia di squadre che in quella stagione hanno pareggiato
entrambe le volte che hanno giocato una contro l’altra, mostrare la stagione, i nomi delle
due squadre ed il numero di gol segnati complessivamente dalle due squadre nella partita
di andata.
3. Per ogni squadra e per ogni stagione alla quale la squadra ha partecipato, mostrare il nome
della squadra, la città della squadra, la stagione, il numero di partite vinte in casa in quella
stagione e la media dei gol segnati in tali partite.
4. Per ogni stagione, mostrare il nome della squadra (o delle squadre) che ha subito il minor
numero complessivo di gol nelle partite disputate in casa in quella stagione, e tale numero.
5. Per ogni arbitro e per ogni stagione mostrare il nome dell’arbitro, la stagione e il numero di
partite di quella stagione che l’arbitro ha arbitrato nelle quali la squadra di casa ha vinto e
la regione della sua città coincide con quella della sezione AIA dell’arbitro.
6. Mostrare tutte le coppie ⟨ nome dell’arbitro, stagione ⟩ tali che l’arbitro ha arbitrato tutte
le squadre del Lazio partecipanti a quella stagione. Una squadra si considera arbitrata da
un arbitro se quest’ultimo ha diretto almeno una partita della squadra, in casa oppure in
trasferta.
7. Mostrare il nome e la regione di ogni squadre che ha partecipato a tutte le stagioni e che, in
ciascuna stagione, ha segnato almeno un gol in trasferta contro tutte le altre squadre della
propria regione partecipante a quella stagione.
8. Per ogni squadra e per ogni stagione alla quale la squadra ha partecipato, mostrare il nome
della squadra, la stagione e il numero complessivo di punti conseguiti dalla squadra in quella
stagione, considerando che vengono attribuiti 3 punti per ogni vittoria, 1 punto per ogni
pareggio e 0 punti per ogni sconfitta.
2
