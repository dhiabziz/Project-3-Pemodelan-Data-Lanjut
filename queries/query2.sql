select "D_SUB_PENG", count(*) as jumlah
from penggunaan_lahan_2021
group by "D_SUB_PENG"
order by jumlah DESC
limit 5;