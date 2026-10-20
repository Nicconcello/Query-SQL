--E6

select l.titolo, coalesce(sum(l.copieVendute),0) copieVendute
from scritto s, libro l
where s.titolo = l.titolo
group by l.titolo
having count(s.codice) = 1
