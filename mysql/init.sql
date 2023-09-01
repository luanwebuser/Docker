use mydb;

-- veiculo

CREATE TABLE `veiculo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identificador único do veículo',
  `rotulo` varchar(50) NOT NULL COMMENT 'Placa do veículo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='';

INSERT INTO veiculo (rotulo) 
VALUES
('ABC-1234');
