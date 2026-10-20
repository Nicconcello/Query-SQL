--E7

select a.codice, coalesce(avg(l.copieVendute),0) media
from autore a left join scritto s on a.codice = s.codice left join libro l on l.titolo = s.titolo
group by a.codice
