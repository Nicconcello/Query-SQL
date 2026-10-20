--E3

select a.codice, coalesce(sum(l.copieVendute),0) copieVendute
from autore a left join scritto s on a.codice = s. codice left join libro l on s.titolo = l.titolo
where a.eta > 30
group by a.codice
