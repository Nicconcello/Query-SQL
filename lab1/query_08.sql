--E8

select l.titolo, a.codice
from libro l left join scritto s on l.titolo = s.titolo left join autore a on a.codice = s.codice
where a.eta <= all(select a1.eta
					from scritto s1, autore a1
					where s1.codice = a1.codice and s1.titolo = l.titolo)
		or a.codice is NULL
