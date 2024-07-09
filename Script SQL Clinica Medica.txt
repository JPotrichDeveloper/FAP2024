-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Medico` (
  `id_medico` INT NOT NULL,
  `crm_medico` INT NOT NULL,
  `nome_medico` VARCHAR(80) NULL,
  `genero_medico` CHAR(1) NULL,
  `especialidade_medica` VARCHAR(100) NULL,
  PRIMARY KEY (`id_medico`),
  UNIQUE INDEX `crm_medico_UNIQUE` (`crm_medico` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Consultas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Consultas` (
  `id_consulta` INT NOT NULL,
  `data_consulta` DATE NULL,
  `hora_consulta` TIME NULL,
  PRIMARY KEY (`id_consulta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pacientes` (
  `id_paciente` INT NOT NULL,
  `cpf_paciente` VARCHAR(15) NULL,
  `nome_paciente` VARCHAR(80) NULL,
  `genero_paciente` CHAR(1) NULL,
  `data_nasc` DATE NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE INDEX `cpf_paciente_UNIQUE` (`cpf_paciente` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Telefone_medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Telefone_medico` (
  `id_telefone_medico` INT NOT NULL,
  `fone_residencial` VARCHAR(15) NULL,
  `fone_celular` VARCHAR(15) NULL,
  `id_medico` INT NOT NULL,
  PRIMARY KEY (`id_telefone_medico`),
  INDEX `fk_fone_id_medico_idx` (`id_medico` ASC) VISIBLE,
  CONSTRAINT `fk_fone_id_medico`
    FOREIGN KEY (`id_medico`)
    REFERENCES `mydb`.`Medico` (`id_medico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Endereco_medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Endereco_medico` (
  `id_end_medico` INT NOT NULL,
  `rua` VARCHAR(100) NULL,
  `numero` INT NOT NULL,
  `complemento` VARCHAR(80) NULL,
  `bairro` VARCHAR(100) NULL,
  `cidade` VARCHAR(100) NULL,
  `estado` VARCHAR(80) NULL,
  `cep` VARCHAR(10) NULL,
  `id_medico` INT NOT NULL,
  PRIMARY KEY (`id_end_medico`),
  INDEX `fk_end_id_medico_idx` (`id_medico` ASC) VISIBLE,
  CONSTRAINT `fk_end_id_medico`
    FOREIGN KEY (`id_medico`)
    REFERENCES `mydb`.`Medico` (`id_medico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Receita_medica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Receita_medica` (
  `id_receita_medica` INT NOT NULL,
  `medicacao` VARCHAR(100) NULL,
  `dosagem` VARCHAR(100) NULL,
  `via_administracao` VARCHAR(50) NULL,
  `forma_administracao` VARCHAR(80) NULL,
  `tempo_uso` VARCHAR(50) NULL,
  PRIMARY KEY (`id_receita_medica`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Telefone_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Telefone_paciente` (
  `id_telefone_paciente` INT NOT NULL,
  `fone_residencial` VARCHAR(15) NULL,
  `fone_celular` VARCHAR(15) NULL,
  `id_paciente` INT NOT NULL,
  PRIMARY KEY (`id_telefone_paciente`),
  INDEX `fk_fone_id_paciente_idx` (`id_paciente` ASC) VISIBLE,
  CONSTRAINT `fk_fone_id_paciente`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `mydb`.`Pacientes` (`id_paciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`relacao_consultas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`relacao_consultas` (
  `id_relacao` INT NOT NULL,
  `id_consulta` INT NOT NULL,
  `id_medico` INT NOT NULL,
  `id_paciente` INT NOT NULL,
  `id_receita` INT NOT NULL,
  PRIMARY KEY (`id_relacao`),
  INDEX `fk_relacao_id_consulta_idx` (`id_consulta` ASC) VISIBLE,
  INDEX `fk_relacao_id_medico_idx` (`id_medico` ASC) VISIBLE,
  INDEX `fk_relacao_id_paciente_idx` (`id_paciente` ASC) VISIBLE,
  INDEX `fk_relacao_id_receita_idx` (`id_receita` ASC) VISIBLE,
  CONSTRAINT `fk_relacao_id_consulta`
    FOREIGN KEY (`id_consulta`)
    REFERENCES `mydb`.`Consultas` (`id_consulta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_relacao_id_medico`
    FOREIGN KEY (`id_medico`)
    REFERENCES `mydb`.`Medico` (`id_medico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_relacao_id_paciente`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `mydb`.`Pacientes` (`id_paciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_relacao_id_receita`
    FOREIGN KEY (`id_receita`)
    REFERENCES `mydb`.`Receita_medica` (`id_receita_medica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
