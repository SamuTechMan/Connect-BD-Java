SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Worktec
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Worktec` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `Worktec` ;

-- -----------------------------------------------------
-- Table `Worktec`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Worktec`.`Departamento` (
  `idDepartamento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDepartamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Worktec`.`Vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Worktec`.`Vendedor` (
  `idVendedor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `datanascimento` VARCHAR(45) NOT NULL,
  `salariobase` VARCHAR(45) NOT NULL,
  `Departamento_idDepartamento` INT NOT NULL,
  PRIMARY KEY (`idVendedor`, `Departamento_idDepartamento`),
  INDEX `fk_Vendedor_Departamento_idx` (`Departamento_idDepartamento` ASC),
  CONSTRAINT `fk_Vendedor_Departamento`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `Worktec`.`Departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
