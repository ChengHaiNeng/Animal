-- MySQL Script generated by MySQL Workbench
-- 12/16/16 19:02:09
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema animal
-- -----------------------------------------------------
-- 数据库库名

-- -----------------------------------------------------
-- Schema animal
--
-- 数据库库名
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `animal` DEFAULT CHARACTER SET utf8 ;
USE `animal` ;

-- -----------------------------------------------------
-- Table `animal`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal`.`user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '用户名称',
  `password` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '用户密码',
  `mobile` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '用户手机号码',
  `email` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '用户 邮箱',
  `regtime` INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户注册时间 ',
  `role` TINYINT NOT NULL DEFAULT 0 COMMENT '用户角色区分,0代表普通用户,1代表认证用户',
  `salt` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '密码盐',
  `lastime` INT NOT NULL DEFAULT 0 COMMENT '最近一次登录时间',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  UNIQUE INDEX `mobile_UNIQUE` (`mobile` ASC))
ENGINE = Myisam;


-- -----------------------------------------------------
-- Table `animal`.`guser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal`.`guser` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '高级用户表的id',
  `idcard` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `address` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '用户住址',
  `uid` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idcard_UNIQUE` (`idcard` ASC),
  INDEX `uid` (`uid` ASC),
  CONSTRAINT `fk_guser_user`
    FOREIGN KEY (`uid`)
    REFERENCES `animal`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = Myisam;


-- -----------------------------------------------------
-- Table `animal`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal`.`comment` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '用户评论内容',
  `parentid` INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '上一级评论id',
  `time` INT NOT NULL DEFAULT 0,
  `fromid` INT UNSIGNED NOT NULL DEFAULT 0,
  `toid` INT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = Myisam;


-- -----------------------------------------------------
-- Table `animal`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal`.`article` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` TEXT NOT NULL COMMENT '发布文章内容',
  `title` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '发布文章主题',
  `pubtime` INT NOT NULL DEFAULT 0 COMMENT '发布文章时间',
  `click_count` INT NOT NULL DEFAULT 0 COMMENT '用户浏览量',
  `uid` INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '发表文章那个人的id',
  PRIMARY KEY (`id`),
  INDEX `fk_article_user1_idx` (`uid` ASC),
  CONSTRAINT `fk_article_user1`
    FOREIGN KEY (`uid`)
    REFERENCES `animal`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = Myisam;


-- -----------------------------------------------------
-- Table `animal`.`zan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal`.`zan` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `aid` INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '被点赞的文章的id',
  `uid` INT NOT NULL DEFAULT 0 COMMENT '用户点赞的id',
  `time` INT NULL DEFAULT 0 COMMENT '点赞时间',
  PRIMARY KEY (`id`))
ENGINE = Myisam;


-- -----------------------------------------------------
-- Table `animal`.`pic`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal`.`pic` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` INT NOT NULL DEFAULT 0 COMMENT '用户id',
  `aid` INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id,如果为0,就不存在 任何文章当中',
  `upload` VARCHAR(45) NULL DEFAULT '' COMMENT '上传服务器图片地址',
  `thumb` VARCHAR(45) NULL DEFAULT '' COMMENT '所有缩略图的地址',
  `name` VARCHAR(45) NULL DEFAULT '' COMMENT '照片昵称',
  `time` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = Myisam;


-- -----------------------------------------------------
-- Table `animal`.`manager`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal`.`manager` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `password` VARCHAR(100) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `lastime` INT NOT NULL DEFAULT 0,
  `stage` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = Myisam;


-- -----------------------------------------------------
-- Table `animal`.`video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal`.`video` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` INT NOT NULL DEFAULT 0 COMMENT '用户id',
  `aid` INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id,如果为0,就不存在 任何文章当中',
  `upload` VARCHAR(45) NULL DEFAULT '' COMMENT '上传服务器图片地址',
  `name` VARCHAR(45) NULL DEFAULT '' COMMENT '照片昵称',
  `time` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = Myisam;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
