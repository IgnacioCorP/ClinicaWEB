-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema clinicawebs
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema clinicawebs
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `clinicawebs` DEFAULT CHARACTER SET utf8mb3 ;
USE `clinicawebs` ;

-- -----------------------------------------------------
-- Table `clinicawebs`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicawebs`.`cliente` (
  `Nif` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Apellido` VARCHAR(45) NULL DEFAULT NULL,
  `Telefono` VARCHAR(9) NULL DEFAULT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `Fecha_nac` DATE NULL DEFAULT NULL,
  `Clave` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Nif`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `clinicawebs`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicawebs`.`producto` (
  `ID_pro` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Precio` DOUBLE NOT NULL,
  `Fecha_caducidad` DATE NULL DEFAULT NULL,
  `imgP` LONGBLOB NOT NULL,
  PRIMARY KEY (`ID_pro`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `clinicawebs`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicawebs`.`compra` (
  `producto_ID_pro` INT NOT NULL,
  `cliente_Nif` VARCHAR(9) NOT NULL,
  `Fecha` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`producto_ID_pro`, `cliente_Nif`),
  INDEX `fk_producto_has_cliente_cliente1_idx` (`cliente_Nif` ASC) VISIBLE,
  INDEX `fk_producto_has_cliente_producto1_idx` (`producto_ID_pro` ASC) VISIBLE,
  CONSTRAINT `fk_producto_has_cliente_cliente1`
    FOREIGN KEY (`cliente_Nif`)
    REFERENCES `clinicawebs`.`cliente` (`Nif`),
  CONSTRAINT `fk_producto_has_cliente_producto1`
    FOREIGN KEY (`producto_ID_pro`)
    REFERENCES `clinicawebs`.`producto` (`ID_pro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `clinicawebs`.`departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicawebs`.`departamento` (
  `ID_dep` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Descripcion` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID_dep`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `clinicawebs`.`laboratorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicawebs`.`laboratorio` (
  `ID_lab` INT NOT NULL AUTO_INCREMENT,
  `Nombre_sede` VARCHAR(90) NOT NULL,
  `Direccion` VARCHAR(90) NOT NULL,
  `Telefono` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`ID_lab`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `clinicawebs`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicawebs`.`empleado` (
  `Nif` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Apellido` VARCHAR(45) NULL DEFAULT NULL,
  `Telefono` VARCHAR(9) NULL DEFAULT NULL,
  `Direccion` VARCHAR(70) NULL DEFAULT NULL,
  `Email` VARCHAR(70) NOT NULL,
  `Fecha_Nac` DATE NULL DEFAULT NULL,
  `Clave` VARCHAR(100) NOT NULL,
  `laboratorio_ID_lab` INT NOT NULL,
  `departamento_ID_dep` INT NOT NULL,
  PRIMARY KEY (`Nif`, `laboratorio_ID_lab`, `departamento_ID_dep`),
  INDEX `fk_empleado_laboratorio1_idx` (`laboratorio_ID_lab` ASC) VISIBLE,
  INDEX `fk_empleado_departamento1_idx` (`departamento_ID_dep` ASC) VISIBLE,
  CONSTRAINT `fk_empleado_departamento1`
    FOREIGN KEY (`departamento_ID_dep`)
    REFERENCES `clinicawebs`.`departamento` (`ID_dep`),
  CONSTRAINT `fk_empleado_laboratorio1`
    FOREIGN KEY (`laboratorio_ID_lab`)
    REFERENCES `clinicawebs`.`laboratorio` (`ID_lab`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `clinicawebs`.`laboratorio_has_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicawebs`.`laboratorio_has_producto` (
  `laboratorio_ID_lab` INT NOT NULL,
  `producto_ID_pro` INT NOT NULL,
  PRIMARY KEY (`laboratorio_ID_lab`, `producto_ID_pro`),
  INDEX `fk_laboratorio_has_producto_producto1_idx` (`producto_ID_pro` ASC) VISIBLE,
  INDEX `fk_laboratorio_has_producto_laboratorio1_idx` (`laboratorio_ID_lab` ASC) VISIBLE,
  CONSTRAINT `fk_laboratorio_has_producto_laboratorio1`
    FOREIGN KEY (`laboratorio_ID_lab`)
    REFERENCES `clinicawebs`.`laboratorio` (`ID_lab`),
  CONSTRAINT `fk_laboratorio_has_producto_producto1`
    FOREIGN KEY (`producto_ID_pro`)
    REFERENCES `clinicawebs`.`producto` (`ID_pro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
