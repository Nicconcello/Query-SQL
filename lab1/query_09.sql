--E9

select a.codice, a.cognome
from autore a, scritto s, libro l
where a.codice = s.codice and l.titolo = s.titolo
group by a.codice, a.cognome 
having sum(l.copieVendute) >= all (select sum(l1.copieVendute)
									from autore a1, scritto s1, libro l1
									where a1.codice = s1.codice and l1.titolo = s1.titolo
									group by a1.codice, a1.cognome)
