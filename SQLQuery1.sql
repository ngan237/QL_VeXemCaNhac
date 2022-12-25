select * from TAI_KHOAN
insert into TAI_KHOAN (Ma, FULL_NAME,TEN_TAI_KHOAN,MAT_KHAU,DIA_CHI,SO_DT,EMAIL, LOAI_TK)
values (null,null, N'BlackPink', N'SINGER', null,null,null,N'Ca Si'),
	   (null,N'Anne Adela'    , N'Adela'  , N'123'  , N'USA', N'0987542156' , N'Adela@gmail.com'     ,N'Khach Hang'),
	   (null,N'Henry Celina'  , N'Celina' , N'123'  , N'USA', N'0986532621' , N'Celina@gmail.com'    ,N'Khach Hang'),
	   (null,N'James Keelin'  ,N'Keelin'  , N'123'  , N'USA', N'0125478596' , N'Keelin@gmail.com'    ,N'Khach Hang'),
	   (null,N'Mark Stella'   ,N'Stella'  , N'ADMIN', N'USA', N'0123456798' , N'Stella@gmail.com'    ,N'Nhan Vien'),
	   (null,N'Susan Winifred',N'Winifred', N'ADMIN', N'USA', N'078542630'  , N'Winifred@gmail.com'  ,N'Nhan Vien');

select * from LOAI_VE
SET IDENTITY_INSERT LOAI_VE ON;  
GO
INSERT INTO LOAI_VE (MA,TEN,DON_GIA, TRANG_THAI)
VALUES (N'L1', 'Platinum Pink', 300000, NULL),
	   (N'L2', 'Blink Plus', 200000, NULL), 
	   (N'L3', 'Blink Standard', 150000, NULL);
delete  from LoaiVe 

select * from VE
INSERT INTO Ve (MA, THU_TU_VE,TRANG_THAI,MA_BUOI_DIEN)
VALUES (null, '20', N'Da dat', null),
	   (null, '21', N'Da dat', null),
	   (null, '22', N'Da dat', null),
	   (null, '23', N'Da dat', null),
	   (null, '24', N'Da dat', null);

SELECT * FROM BUOI_DIEN
INSERT INTO BUOI_DIEN (MA, NGAY_GIO_BIEU_DIEN, DIA_DIEM, SO_LUONG_VE,TRANG_THAI)
Values (null,  '2022-10-15', N'SEOUL'   ,100, null ),
	   (null,  '2022-10-16', N'DALLAS'  ,100, null ),
	   (null,  '2022-10-18', N'HOUSTON' ,100, null ),
	   (null,  '2022-10-19', N'ATLANTA' ,100, null ),
	   (null,  '2022-11-02', N'CHICAGO' ,100, null );

select  * from TIET_MUC
insert into TIET_MUC (MA, TEN, MA_NGUOI_BIEU_DIEN, TRANG_THAI)
values (null, N'Shut Down'        , N'C1' , null ),
	   (null, N'Pink Venom'       , N'C1' , null ),
	   (null, N'The Happiest Girl', N'C1' , null ),
	   (null, N'Pink Venom'       , N'C1', null ),
	   (null, N'The Happiest Girl', N'C1' , null );

select * from BUOIDIEN_TIETMUC
insert into BUOIDIEN_TIETMUC (MA, MA_BUOI_DIEN, MA_TIET_MUC, TRANG_THAI)
values (null, null , null , null ),
	   (null, null , null , null ),
	   (null, null , null , null ),
	   (null, null , null , null ),
	   (null, null , null , null );

	
select * from DON_DAT
Insert into DON_DAT (MA, TONG_TIEN, THOI_GIAN_TAO, THOI_GIAN_CAP_NHAT, TRANG_THAI, MA_NHAN_VIEN, MA_KHACH_HANG)
Values (null, 600000, '2022-10-15',null, null, null, null),
	   (null, 600000, '2022-10-16',null, null, null, null),
	   (null, 400000, '2022-10-18',null, null, null, null),
	   (null, 150000, '2022-11-02',null, null, null, null),
	   (null, 150000, '2022-11-04',null, null, null, null);