--E1

select distinct a.codice, a.eta
from scritto s, autore a, libro l
where s.codice = a.codice and s.titolo = l.titolo and l.copieVendute > 10
