-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Faculdadepovoamento
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Faculdadepovoamento` ;

-- -----------------------------------------------------
-- Schema Faculdadepovoamento
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Faculdadepovoamento` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
SHOW WARNINGS;
USE `Faculdadepovoamento` ;

-- -----------------------------------------------------
-- Table `Faculdadepovoamento`.`Cursos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Faculdadepovoamento`.`Cursos` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Faculdadepovoamento`.`Cursos` (
  `CodCurso` CHAR(3) NOT NULL COMMENT '',
  `NomeCurso` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`CodCurso`)  COMMENT '')
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Faculdadepovoamento`.`Alunos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Faculdadepovoamento`.`Alunos` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Faculdadepovoamento`.`Alunos` (
  `Matricula` INT NOT NULL COMMENT '',
  `Nome` VARCHAR(45) NULL COMMENT '',
  `IRA` INT NULL DEFAULT 0 COMMENT '',
  `Cursos_CodCurso` CHAR(3) NOT NULL COMMENT '',
  `Endereço` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`Matricula`)  COMMENT '')
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Faculdadepovoamento`.`Telefones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Faculdadepovoamento`.`Telefones` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Faculdadepovoamento`.`Telefones` (
  `Alunos_Matricula` INT NOT NULL COMMENT '',
  `Celular` BIGINT(20) NULL COMMENT '',
  `Fixo` BIGINT(20) NULL COMMENT '',
  PRIMARY KEY (`Alunos_Matricula`)  COMMENT '')
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Faculdadepovoamento`.`Disciplinas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Faculdadepovoamento`.`Disciplinas` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Faculdadepovoamento`.`Disciplinas` (
  `CodDisciplina` CHAR(6) NOT NULL COMMENT '',
  `Nome` VARCHAR(45) NULL COMMENT '',
  `CargaHorária` INT NULL COMMENT '',
  PRIMARY KEY (`CodDisciplina`)  COMMENT '')
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Faculdadepovoamento`.`Professores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Faculdadepovoamento`.`Professores` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Faculdadepovoamento`.`Professores` (
  `SIAPE` INT NOT NULL COMMENT '',
  `Nome` VARCHAR(45) NULL COMMENT '',
  `RegimeTrabalho` VARCHAR(5) NULL COMMENT '',
  `Cursos_CodCurso` CHAR(3) NOT NULL COMMENT '',
  PRIMARY KEY (`SIAPE`)  COMMENT '')
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Faculdadepovoamento`.`Turmas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Faculdadepovoamento`.`Turmas` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Faculdadepovoamento`.`Turmas` (
  `CodTurma` INT NOT NULL COMMENT '',
  `Alunos_Matricula` INT NOT NULL COMMENT '',
  `Professores_SIAPE` INT NOT NULL COMMENT '',
  `Disciplinas_CodDisciplina` CHAR(6) NOT NULL COMMENT '',
  `Qtd` INT NULL COMMENT '',
  `Local` VARCHAR(45) NULL COMMENT '',
  `Início` VARCHAR(2) NULL COMMENT '',
  `Fim` VARCHAR(2) NULL COMMENT '',
  `Dia` VARCHAR(20) NULL COMMENT '',
  `Semestre` DOUBLE NULL COMMENT '',
  `Nota` DOUBLE NULL COMMENT '')
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Faculdadepovoamento`.`Cursos`
-- -----------------------------------------------------
START TRANSACTION;
USE `Faculdadepovoamento`;
INSERT INTO `Faculdadepovoamento`.`Cursos` (`CodCurso`, `NomeCurso`) VALUES ('ECO', 'Engenharia Da computação');
INSERT INTO `Faculdadepovoamento`.`Cursos` (`CodCurso`, `NomeCurso`) VALUES ('EEL', 'Engenharia Elétrica');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Faculdadepovoamento`.`Alunos`
-- -----------------------------------------------------
START TRANSACTION;
USE `Faculdadepovoamento`;
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (336099, 'Augusto Coelho	', NULL, 'ECO', 'Rua Benjamin, 225');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (323478, 'Igor Rodrigues', NULL, 'ECO', 'Travessa José Pierre III, 420');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (306279, 'Mateus Maveira', NULL, 'ECO', 'Rua Edmir Ribeiro Parente, 124');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (314484, 'Felipe Soares Leite', NULL, 'ECO', 'Travessa José Pierre III, 420');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (321193, 'Fabiano Teixeira ', NULL, 'EEL', 'Rua Gonçalo Vieira, 33');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (331058, 'Andrio Rodrigo da Silva', NULL, 'ECO', 'Rua Domingos Rodrigues, 122');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (344046, 'Vitor Verissimo', NULL, 'ECO', 'Rua Domingos Rodrigues, 122');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (309937, 'Brena Lima', NULL, 'ECO', 'Travessa Nossa Senhora de Fatima, 11');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (316360, 'Glhaziano Braga', NULL, 'ECO', 'Rua Domingos Rodrigues, 122');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (326455, 'João Rodrigo da Silva', NULL, 'ECO', 'Rua da Floresta, 99');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (337720, 'Maria Clara Araujo', NULL, 'EEL', 'Rua Helena Ibiapina Cunha, 111');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (344587, 'Patricia Nascimento', NULL, 'EEL', 'Rua Helena Ibiapina Cunha, 111');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (304257, 'Lorena Oliveira', NULL, 'EEL', 'Rua Gonçalo Vieira, 56');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (316444, 'Ken Sparta Cochua	', NULL, 'ECO', 'Rua Edmir Ribeiro Parente, 120');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (328699, 'Felipe Paiva', NULL, 'ECO', 'Rua Edmir Ribeiro Parente, 120');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (336358, 'Carlos Eugenio Pinto', NULL, 'EEL', 'Rua do Sol, 46');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (343658, 'Lucas Keisuke Ihara', NULL, 'ECO', 'Travessa José Pierre III, 420');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (305407, 'Bryan Sousa Santos', NULL, 'ECO', 'Rua Domingos Rodrigues, 14');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (317703, 'Maksuel Araujo', NULL, 'ECO', 'Rua Guanabara, 67');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (326620, 'Mateus Arruda', NULL, 'ECO', 'Rua Guanabara, 83');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (332565, 'Lucas Santos', NULL, 'ECO', 'Rua Monsenhor José Gerardo, 25');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (345447, 'Ronaldo Portela	', NULL, 'EEL', 'Avenida Doutor Tomás Aragão, 230');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (307093, 'Assis Vasconcelos', NULL, 'EEL', 'Travessa Rosa, 36');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (316393, 'Marcos Pedrosa', NULL, 'EEL', 'Rua Gonçalo Vieira, 33');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (326476, 'Wesley Melo', NULL, 'ECO', 'Rua Guanabara, 67');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (339398, 'Italo Alves', NULL, 'ECO', 'Rua Guanabara, 67');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (346134, 'Breno Moura', NULL, 'ECO', 'Rua Guanabara, 67');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (304795, 'Larissa Haddad', NULL, 'EEL', 'Travessa Rosa, 40');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (312363, 'Lilian Aquino Alves', NULL, 'EEL', 'Travessa Rosa, 40');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (323502, 'Douglas Aquino Alves', NULL, 'EEL', 'Travessa Rosa, 40');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (331194, 'Livia Sousa', NULL, 'ECO', 'Rua Domingos Rodrigues, 57');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (342090, 'Anderson Rodrigues', NULL, 'EEL', 'Rua Domingos Rodrigues, 14');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (304162, 'Bruna Valentim', NULL, 'EEL', 'Rua Domingos Rodrigues, 57');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (312648, 'Lara Costa', NULL, 'EEL', 'Rua Domingos Rodrigues, 14');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (325822, 'Sandy Brito', NULL, 'EEL', 'Rua Gonçalo Vieira, 56');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (335225, 'Rafael Lima', NULL, 'EEL', 'Praça Visconde de Saboia, 333');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (341097, 'Wilker Dias', NULL, 'EEL', 'Praça Visconde de Saboia, 333');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (306073, 'Gerson Vinuto', NULL, 'EEL', 'Praça Visconde de Saboia, 333');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (315439, 'Icaro Rossas', NULL, 'ECO', 'Rua Gonçalo Vieira, 70');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (323181, 'Arteiro Frota', NULL, 'ECO', 'Rua Gonçalo Vieira, 70');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (334501, 'Luana Torres', NULL, 'ECO', 'Rua Helena Ibiapina Cunha, 96');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (347635, 'Alana Ferro', NULL, 'ECO', 'Rua Helena Ibiapina Cunha, 23');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (309727, 'Wilker Maia', NULL, 'EEL', 'Rua Helena Ibiapina Cunha, 96');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (316790, 'Yury Pontes', NULL, 'EEL', 'Rua Helena Ibiapina Cunha, 23');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (328329, 'Eli Sales', NULL, 'EEL', 'Rua Helena Ibiapina Cunha, 127');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (337210, 'Tadeu Sousa', NULL, 'EEL', 'Rua Helena Ibiapina Cunha, 234');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (346473, 'Marcelo Queiroz', NULL, 'EEL', 'Rua Helena Ibiapina Cunha, 127');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (309451, 'Caetano Honorato', NULL, 'EEL', 'Rua Helena Ibiapina Cunha, 234');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (312187, 'Nicolas Moita', NULL, 'ECO', 'Travessa Nossa Senhora de Fatima, 123');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (326619, 'Paloma Nagela Loiola', NULL, 'ECO', 'Travessa Nossa Senhora de Fatima, 65');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (337892, 'Alanio Ferreira', NULL, 'ECO', 'Travessa Nossa Senhora de Fatima,123');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (348719, 'Jerfson Alves', NULL, 'EEL', 'Rua Gonçalo Vieira, 70');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (301124, 'Márcio Albuquerque', NULL, 'ECO', 'Rua Gonçalo Vieira, 80');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (310491, 'Vinicius Sakamoto', NULL, 'ECO', 'Rua Gonçalo Vieira, 80');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (320110, 'John Makanaki', NULL, 'ECO', 'Rua Gonçalo Vieira, 85');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (338742, 'Pedro Marinho', NULL, 'ECO', 'Rua Gonçalo Vieira, 85');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (349911, 'Diego Alves', NULL, 'EEL', 'Rua da Floresta, 58');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (301234, 'Patreze Lopes', NULL, 'ECO', 'Rua da Floresta, 58');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (314326, 'Thomas Boto', NULL, 'EEL', 'Rua da Floresta, 99');
INSERT INTO `Faculdadepovoamento`.`Alunos` (`Matricula`, `Nome`, `IRA`, `Cursos_CodCurso`, `Endereço`) VALUES (322569, 'Khalif Galvão', NULL, 'ECO', 'Rua Guanabara, 67');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Faculdadepovoamento`.`Telefones`
-- -----------------------------------------------------
START TRANSACTION;
USE `Faculdadepovoamento`;
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (336099, 88999312844, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (323478, 88999324692, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (306279, 88999342863, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (314484, 88999471204, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (321193, 88999147433, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (331058, 88999341974, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (344046, 88999153233, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (309937, 88999241242, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (316360, 88999414355, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (326455, 88999414213, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (337720, 88999333555, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (344587, 88999335122, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (304257, 88999860544, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (316444, 88999323413, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (328699, 88999763672, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (336358, 88999342836, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (343658, 88999333344, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (305407, 88999135315, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (317703, 88999332153, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (326620, 88999777554, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (332565, 88999899944, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (345447, 88999431410, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (307093, 88999556436, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (316393, 88999057555, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (326476, 88999443312, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (339398, 88999222111, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (346134, 88999333588, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (304795, 88999555999, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (312363, 88999332266, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (323502, 88999987654, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (331194, 88999423636, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (342090, 88999253230, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (304162, 88999111444, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (312648, 88999111666, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (325822, 88999696969, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (335225, 88999111111, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (341097, 88999323244, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (306073, 88999322332, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (315439, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (323181, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (334501, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (347635, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (309727, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (316790, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (328329, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (337210, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (346473, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (309451, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (312187, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (326619, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (337892, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (348719, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (301124, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (310491, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (320110, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (338742, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (349911, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (301234, NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Telefones` (`Alunos_Matricula`, `Celular`, `Fixo`) VALUES (314326, NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Faculdadepovoamento`.`Disciplinas`
-- -----------------------------------------------------
START TRANSACTION;
USE `Faculdadepovoamento`;
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL001', 'Calculo Diferencial e Integral I', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('EEL003', 'Química', 96);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL030', 'Calculo Vetorial', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL002', 'Variáveis Complexas', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('ECO002', 'Programação Computacional', 96);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL003', 'Matemática Discreta', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL004', 'Física I', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('EEL040', 'Conversão Eletromecânica de energia', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL010', 'Métodos Numéricos ', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL019', 'Física Experimental para Engenharia I', 32);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL020', 'Física Experimental para Engenharia II', 32);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL005', 'Introdução a Engenharia', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('ECO009', 'Técnicas de Programação', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL008', 'Probabilidade e Estatística', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('EEL015', 'Fenômenos de transporte', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL015', 'Álgebra Linear', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('SBL014', 'Desenho para Engenharia', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('ECO019', 'Estrutura de Dados', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('ECO030', 'Banco de Dados', 64);
INSERT INTO `Faculdadepovoamento`.`Disciplinas` (`CodDisciplina`, `Nome`, `CargaHorária`) VALUES ('EEL044', 'Geração transmissão e distribuição', 96);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Faculdadepovoamento`.`Professores`
-- -----------------------------------------------------
START TRANSACTION;
USE `Faculdadepovoamento`;
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (1548722, 'Marcio Baima Amora', '40', 'EEL');
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (1759857, 'Nilena Brito Maciel Dias', '20', 'EEL');
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (1666642, 'Vandilberto Pinto', '40', 'EEL');
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (1544192, 'Romulo Nunes', 'DE', 'EEL');
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (1799603, 'Jarbas Joaci Sá Junior', '40', 'ECO');
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (1572044, 'Ialis Cavalcante de P. Junior', '40', 'ECO');
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (1711163, 'Edilson Rocha Porfirio Filho', '20', 'ECO');
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (1645759, 'Eber Diniz', 'DE', 'EEL');
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (0267703, 'Fernando Rodrigues de A. Junior', '40', 'ECO');
INSERT INTO `Faculdadepovoamento`.`Professores` (`SIAPE`, `Nome`, `RegimeTrabalho`, `Cursos_CodCurso`) VALUES (1131493, 'Kildary Aguiar Santana', '40', 'ECO');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Faculdadepovoamento`.`Turmas`
-- -----------------------------------------------------
START TRANSACTION;
USE `Faculdadepovoamento`;
INSERT INTO `Faculdadepovoamento`.`Turmas` (`CodTurma`, `Alunos_Matricula`, `Professores_SIAPE`, `Disciplinas_CodDisciplina`, `Qtd`, `Local`, `Início`, `Fim`, `Dia`, `Semestre`, `Nota`) VALUES (01, 336099, 1548722, 'SBL001', 55, 'Sala 1', '08', '10', 'Segunda', 2015.2, 9.5);
INSERT INTO `Faculdadepovoamento`.`Turmas` (`CodTurma`, `Alunos_Matricula`, `Professores_SIAPE`, `Disciplinas_CodDisciplina`, `Qtd`, `Local`, `Início`, `Fim`, `Dia`, `Semestre`, `Nota`) VALUES (03, 321193, 0267703, 'EEL003', 55, 'Sala 3', '10', '12', 'Terça', NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Turmas` (`CodTurma`, `Alunos_Matricula`, `Professores_SIAPE`, `Disciplinas_CodDisciplina`, `Qtd`, `Local`, `Início`, `Fim`, `Dia`, `Semestre`, `Nota`) VALUES (01, 321194, 1572044, 'SBL004', 55, 'Sala 2', '10', '12', 'Quarta', NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Turmas` (`CodTurma`, `Alunos_Matricula`, `Professores_SIAPE`, `Disciplinas_CodDisciplina`, `Qtd`, `Local`, `Início`, `Fim`, `Dia`, `Semestre`, `Nota`) VALUES (02, 345447, 1645759, 'ECO002', 60, 'lab 1', '10', '12', 'Segunda', NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Turmas` (`CodTurma`, `Alunos_Matricula`, `Professores_SIAPE`, `Disciplinas_CodDisciplina`, `Qtd`, `Local`, `Início`, `Fim`, `Dia`, `Semestre`, `Nota`) VALUES (02, 305407, 1548722, 'SBL005', 55, 'lab 2', '14', '15', 'Quarta', NULL, NULL);
INSERT INTO `Faculdadepovoamento`.`Turmas` (`CodTurma`, `Alunos_Matricula`, `Professores_SIAPE`, `Disciplinas_CodDisciplina`, `Qtd`, `Local`, `Início`, `Fim`, `Dia`, `Semestre`, `Nota`) VALUES (01, 305407, 1131493	, 'EEL044', 40, 'lab 3', '16', '18', 'Sexta', NULL, NULL);

COMMIT;

