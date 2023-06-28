CREATE TABLE paciente (cpf varchar(14) NOT NULL PRIMARY KEY, nome_paciente varchar(40), telefone varchar(14), numero_plano INTEGER, nome_plano varchar(20), tipo_plano varchar(10))

CREATE TABLE consulta (numero_consulta INTEGER PRIMARY KEY AUTOINCREMENT, data_consulta date, horario_consulta time, fk_paciente_cpf varchar(14), fk_medico_crm INTEGER)

CREATE TABLE medico ( crm INTEGER NOT NULL PRIMARY KEY, nome_medico varchar(30), especializade varchar(20))

CREATE TABLE pedid_exame ( numero_pedido INTEGER PRIMARY KEY AUTOINCREMENT, resultado varchar(40), data_exame date, valor_pagar money, fk_consulta_numero_consulta INTEGER, fk_exame_codigo INTEGER)

CREATE TABLE exame ( codigo INTEGER PRIMARY KEY, especificacao varchar(20), preco money)

insert into paciente values('012.345.678-90','Leonardo Ribeiro','(11)91234-5678',123456,'Inovamed','Padrão');
insert into paciente values('234.567.890-23','Gilberto Barros','(11)94567-8901',345678,'Inovamed','Especial');
insert into paciente values('456.789.012-34','Arnaldo Coelho','(19)96789-0123',567890,'Inovamed','Especial');

insert into medico values(102030,'Agildo Nunes','Cardiologia');
insert into medico values(304050,'Roberto Gusmão','Neurologia');
insert into medico values(506070,'Ricardo Souza','Otorrinolaringologia');
insert into medico values(708090,'Beatriz Lucena','Oncologia');

insert into exame values(10020,'Hemograma',100.00);
insert into exame values(10040,'Ultrassonografia',550.00);
insert into exame values(10050,'Ressonância',800.00);
insert into exame values(10060,'Radiografia',70.00);
insert into exame values(10080,'Endoscopia',300.00);
insert into exame values(10100,'Eletrocardiograma',50.00);
insert into exame values(10110,'Ecocardiograma',120.00);

insert into consulta values('2022/12/12','14:30','012.345.678-90',102030);
insert into consulta values(2,'2022/12/16','10:00','123.456.789-12',506070);
insert into consulta values('2022/12/20','14:20','123.456.789-12',102030);

insert into pedid_exame values(1,'Normal','2022/12/15',0.00,22000,10040);
insert into pedid_exame values(2,'','2022/12/19',0.00,22000,10100);
insert into pedid_exame values(3,'Normal','2022/12/15',0.00,22002,10050);
insert into pedid_exame values(4,'','2022/12/17',0.00,22004,10060);
insert into pedid_exame values(5,'','2022/12/22',0.00,22008,10030);

select * from paciente
select * from medico
select * from exame
SELECT * FROM pedid_exame
SELECT * from consulta

INSERT INTO paciente VALUES ('123.456.789-00','Vinicius','81940028922',112233,'Inovamed','Padrão')

SELECT * FROM paciente WHERE tipo_plano = 'Especial'

UPDATE paciente SET tipo_plano = 'Especial' WHERE nome_paciente = 'Vinicius'

DELETE FROM paciente WHERE numero_plano = 112233

-- ALTER TABLE consulta ADD FOREIGN KEY  fk_medico_crm REFERENCES medico(crm)
-- ALTER TABLE consulta ADD CONSTRAINT fk_01 FOREIGN KEY fk_medico_crm REFERENCES medico(crm)




