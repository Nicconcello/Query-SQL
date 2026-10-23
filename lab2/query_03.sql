--E3

select i.codicee, s.tipologia, sum(i.ore)
from impiego i JOIN servizio s on s.codice = i.codices
group by i.codicee, s.tipologia
