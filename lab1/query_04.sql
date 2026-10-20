--E4

select l.titolo, coalesce(count(s.codice),0) numeroAutori
from libro l left join scritto s on l.titolo = s.titolo left join autore a on a.codice = s.codice and a.eta > 40
where l.copieVendute > 15
group by l.titolo
