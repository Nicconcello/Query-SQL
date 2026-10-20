--E2

select l.titolo
from libro l
where l.copieVendute > 0
except
select s.titolo
from scritto s
