--E10

select a.codice, a.cognome
from autore a, scritto s
where a.codice = s.codice
group by a.codice, a.cognome
having 1 = all (select count(s1.codice)
				from scritto s1, scritto s2
				where s1.codice = a.codice and s2.titolo = s1.titolo
				group by s1.titolo)
