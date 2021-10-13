CREATE SCHEMA IF NOT EXISTS `citas` DEFAULT CHARACTER SET utf8 ;
USE `citas` ;

-- -----------------------------------------------------
-- Table `citas`.`Medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citas`.`Medico` (
  `idMedico` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `especialidad` VARCHAR(45) NULL DEFAULT 'general',
  PRIMARY KEY (`idMedico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citas`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citas`.`paciente` (
  `idpaciente` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  PRIMARY KEY (`idpaciente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citas`.`cita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citas`.`cita` (
  `Medico_idMedico` INT NOT NULL,
  `paciente_idpaciente` INT NOT NULL,
  `fecha` DATE NOT NULL,
  `confirmado` INT  NOT NULL DEFAULT '0',

  PRIMARY KEY (`Medico_idMedico`, `paciente_idpaciente`, `fecha`),
  INDEX `fk_Medico_has_paciente_paciente1_idx` (`paciente_idpaciente` ASC),
  INDEX `fk_Medico_has_paciente_Medico_idx` (`Medico_idMedico` ASC),
  CONSTRAINT `fk_Medico_has_paciente_Medico`
    FOREIGN KEY (`Medico_idMedico`)
    REFERENCES `citas`.`Medico` (`idMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Medico_has_paciente_paciente1`
    FOREIGN KEY (`paciente_idpaciente`)
    REFERENCES `citas`.`paciente` (`idpaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
