CREATE DATABASE QLVECANHAC
GO
USE QLVECANHAC
GO
CREATE TABLE TAI_KHOAN
(
    MA            BIGINT       NOT NULL IDENTITY(1,1),
    FULL_NAME     VARCHAR(100) NOT NULL,
    TEN_TAI_KHOAN VARCHAR(50)  NOT NULL,
    MAT_KHAU      VARCHAR(10)  NOT NULL,
    DIA_CHI       VARCHAR(100),
    SO_DT         VARCHAR(12),
    EMAIL         VARCHAR(50),
    LOAI_TK       BIGINT,
    PRIMARY KEY (MA)
);

CREATE TABLE TIET_MUC
(
    MA                 BIGINT       NOT NULL IDENTITY(1,1),
    TEN                VARCHAR(100) NOT NULL,
    MA_NGUOI_BIEU_DIEN BIGINT,
    TRANG_THAI         BIGINT,
    PRIMARY KEY (MA),
    FOREIGN KEY (MA_NGUOI_BIEU_DIEN) REFERENCES TAI_KHOAN (MA)
);

CREATE TABLE BUOI_DIEN
(
    MA                 BIGINT       NOT NULL IDENTITY(1,1),
    NGAY_GIO_BIEU_DIEN TIMESTAMP    NOT NULL,
    DIA_DIEM           VARCHAR(100) NOT NULL,
    SO_LUONG_VE        BIGINT,
    TRANG_THAI         BIGINT,
    PRIMARY KEY (MA)
);

CREATE TABLE BUOIDIEN_TIETMUC
(
    MA           BIGINT NOT NULL IDENTITY(1,1),
    MA_BUOI_DIEN BIGINT NOT NULL,
    MA_TIET_MUC  BIGINT NOT NULL,
    TRANG_THAI   BIGINT,
    PRIMARY KEY (MA),
    FOREIGN KEY (MA_BUOI_DIEN) REFERENCES BUOI_DIEN (MA),
    FOREIGN KEY (MA_TIET_MUC) REFERENCES TIET_MUC (MA)
);

CREATE TABLE LOAI_VE
(
    MA         BIGINT       NOT NULL IDENTITY(1,1),
    TEN        VARCHAR(100) NOT NULL,
    DON_GIA    BIGINT,
    TRANG_THAI BIGINT,
    PRIMARY KEY (MA)
);

CREATE TABLE VE
(
    MA         BIGINT NOT NULL IDENTITY(1,1),
    THU_TU_VE  BIGINT,
    TRANG_THAI BIGINT,
    MA_BUOI_DIEN BIGINT NOT NULL,
    PRIMARY KEY (MA),
    FOREIGN KEY (MA_BUOI_DIEN) REFERENCES BUOI_DIEN(MA),
    UNIQUE (THU_TU_VE, MA_BUOI_DIEN)
);

CREATE TABLE DON_DAT
(
  MA BIGINT NOT NULL IDENTITY(1,1),
  TONG_TIEN BIGINT,
  THOI_GIAN_TAO DATE,
  THOI_GIAN_CAP_NHAT DATE,
  TRANG_THAI BIGINT,
  MA_NHAN_VIEN BIGINT,
  MA_KHACH_HANG BIGINT NOT NULL,
  PRIMARY KEY (MA),
  FOREIGN KEY (MA_NHAN_VIEN) REFERENCES TAI_KHOAN(MA),
  FOREIGN KEY (MA_KHACH_HANG) REFERENCES TAI_KHOAN(MA),
  UNIQUE (THOI_GIAN_TAO, MA_KHACH_HANG)
);
