# 1. La base di dati

La base di dati che definiamo non contiene alcun valore nullo ed è composta dalle seguenti tre
relazioni:

• La relazione Autore(codice,cognome,eta) memorizza i dati di un insieme di autori, ciascuno
con codice, che è chiave primaria, cognome ed età.

• La relazione Libro(titolo,copieVendute) memorizza l’insieme dei libri, con titolo, che `e chiave
primaria, e copieVendute che indica il numero di copie vendute dal libro.

• La relazione Scritto(codice,titolo) memorizza per ogni autore (codice) il titolo (titolo) di ogni
libro che ha scritto. Si noti che ogni autore può avere scritto più libri, e quindi è la coppia
⟨codice,titolo⟩ ad essere la chiave primaria della relazione.

Il file script.sql, serve a creare la base di dati. Si osservi la definizione delle tabelle.

# 2. Le domande alle quali rispondere

1. Calcolare il codice e l’età degli autori che hanno scritto almeno un libro che ha venduto più
di 10 copie.

2. Chiamiamo “anomalo” un libro che non ha autori e che ha venduto almeno una copia.
Calcolare il titolo dei libri anomali.

3. Per “numero di copie vendute da un autore” si intende la somma del numero di copie vendute
di tutti i libri che lo vedono tra gli autori; si noti che, ovviamente, tale numero può essere
anche 0. Calcolare, per ogni autore con età maggiore di 30 anni, il codice dell’autore ed il
numero di copie da esso vendute.

4. Calcolare, per ogni libro con più di 15 copie vendute, il numero degli autori aventi un’età
maggiore di 40 anni, mostrando il titolo del libro e il numero di tali autori.

5. Per ogni coppia di autori mostrare codice dei due autori e numero di libri che hanno entrambicome autori. Evitare ridondanze nel risultato (cioè evitare ogni coppia ⟨x, x⟩ e ogni coppia
⟨x, y⟩ se compare già ⟨y, x⟩).

6. Calcolare titolo e copie vendute dei libri scritti da uno ed un solo autore.

7. Calcolare per ogni autore il numero di copie che i libri da lui scritti hanno venduto in media,
mostrando il codice dell’autore e tale media (che deve risultare 0 nel caso in cui l’autore non
abbia venduto nemmeno una copia di alcun libro).

8. Per ogni libro, calcolare titolo e codice del più giovane (o dei più giovani) tra i suoi autori,
ponendo a null il codice se il libro non ha autori.

9. Calcolare il codice ed il cognome (o i codici e i cognomi, se sono pi`u d’uno) degli autori
i quali, complessivamente con i libri da loro scritti, hanno registrato il maggior numero di
copie vendute.

10. Diciamo che un autore è solitario se ha scritto solo libri a firma singola. Calcolare il codice
ed il cognome di tutti gli autori solitari.
