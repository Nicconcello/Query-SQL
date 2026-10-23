# 1 La base di dati
La base di dati, che sappiamo possa contenere valori nulli solo nell’attributo tema, è composta da tre
relazioni, descritte qui di seguito.
• La relazione evento(codice,tema) memorizza i dati di un insieme di eventi, ciascuno con il
codice, che è chiave primaria, e il tema (ad esempio, musica, sport, cultura, ecc.).
• La relazione servizio(codice,tipologia,tariffa) memorizza i dati di un insieme di servizi
che possono essere impiegati nell’organizzazione degli eventi, con codice, che è chiave primaria,
tipologia (ad esempio, sicurezza, ristorazione, trasporto, ecc.) e tariffa oraria, che rappresenta il
costo di un’ora di impiego del servizio.
• La relazione impiego(codices,codicee,ore) memorizza quali servizi vengono impiegati nei diversi eventi e per quante ore. L’attributo codices si riferisce al codice del servizio, codicee al
codice dell’evento e ore al numero (intero maggiore di 0) di ore di impiego del servizio in quell’evento. La coppia ⟨codices,codicee⟩ forma la chiave primaria della relazione; inoltre sussistono
vincoli di integrità referenziale da codices a codice di servizio e da codicee a codice di
evento.
2 Le domande alle quali rispondere
Il test di idoneità consiste nella scrittura di cinque query. Allo scopo di superare il test, almeno tre
delle cinque query devono risultare corrette. Una query è corretta se, per ogni base di dati coerente con
lo schema descritto, la sua esecuzione su tale base di dati calcola il giusto risultato senza duplicazioni.
Ogni query che viene consegnata come soluzione deve essere espressa mediante una singola istruzione
SQL senza il punto e virgola finale. Le query da scrivere sono quelle che rispondono ai seguenti requisiti.
1. Mostrare il codice e la tariffa dei servizi che sono impiegati in almeno un evento di tema ’musica’
o di tema ’sport’.
2. Mostrare il codice degli eventi nei quali viene impiegato almeno un servizio di tipologia ’sicurezza’
e non viene impiegato alcun servizio di tipologia ’ristorazione’.
3. Per ogni evento e per ogni tipologia di servizio impiegata nell’evento, mostrare il codice dell’evento,
la tipologia e il numero complessivo di ore di impiego dei servizi di quella tipologia nell’evento,
numero complessivo ottenuto sommando le relative ore.
4. Diciamo che un servizio è intensivamente impiegato in un evento se viene impiegato per almeno 3
ore in quell’evento. Per ogni servizio mostrare il suo codice, la sua tariffa ed il numero di eventi
in cui `e intensivamente impiegato.
5. Mostrare il codice di ogni servizio S per cui di tutti gli eventi nei quali viene impiegato si conosce
il tema.
