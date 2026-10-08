select name, vorname, status from niederlassungbelgien
union
select name, vorname, status from niederlassungholland
order by name;