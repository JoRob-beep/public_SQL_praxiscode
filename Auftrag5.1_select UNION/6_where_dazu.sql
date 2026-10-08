select name, vorname, status from niederlassungbelgien
where status='aktiv'
union
select name, vorname, status from niederlassungholland
where status='aktiv';