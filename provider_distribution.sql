create table provider (
	id serial,
	tanggal date,
	provinsi varchar (225),
	bagian varchar (225),
	brand varchar (225),
	jenis varchar (225),
	cust_type varchar (225),
	PRIMARY KEY (id)
)

select * from provider

drop table provider

-- Tampilkan jumlah jenis
SELECT 
COUNT(DISTINCT tanggal) as "jamlah perido",
COUNT(DISTINCT provinsi) as "jumlah provinsi",
COUNT(DISTINCT bagian) as "jumlah bagian",
COUNT(DISTINCT brand) as "jumlah brand",
COUNT(DISTINCT jenis) as "jumlah jenis",
COUNT(DISTINCT cust_type) as "jumlah tipe"
FROM provider;

SELECT
	bagian,
	COUNT(*) as "jumlah"
FROM
	provider
GROUP BY
	bagian
	
SELECT *
FROM provider
where bagian='\N';

-- Periksa data
-- Generate ID
-- ALTER TABLE `data_provider` ADD `id_provider` INT(11) NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`id_provider`);

