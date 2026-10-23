--E4

select s.codice, s.tariffa, count(i.codicee)
from servizio s LEFT JOIN impiego i on s.codice = i.codices and i.ore > 2
group by s.codice
