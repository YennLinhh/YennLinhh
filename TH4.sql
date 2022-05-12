- 👋 Hi, I’m @YennLinhh
- 👀 I’m interested in ...
- 🌱 I’m currently learning ...
- 💞️ I’m looking to collaborate on ...
- 📫 How to reach me ...

<!---
YennLinhh/YennLinhh is a ✨ special ✨ 
--->
CREATE TABLE  CGTRINH (
	STT_CTR int NOT NULL ,
	TEN_CTR varchar (20)  NULL ,
	DIACHI_CTR varchar (20)  NULL ,
	TINH_THANH varchar (15)  NULL ,
	KINH_PHI int NULL ,
	TEN_CHU varchar (20)  NULL ,
	TEN_THAU varchar (20)  NULL ,
	NGAY_BD date NULL 
) ;


CREATE TABLE  CHUNHAN (
	TEN_CHU varchar (20)  NOT NULL ,
	DCHI_CHU varchar (20)  NULL 
) ;


CREATE TABLE  CHUTHAU (
	TEN_THAU varchar (20)  NOT NULL ,
	TEL char (7)  NULL ,
	DCHI_THAU varchar (20)  NULL 
) ;


CREATE TABLE  CONGNHAN (
	HOTEN_CN varchar (20)  NOT NULL ,
	NAMS_CN int NULL ,
	NAM_VAO_N int NULL ,
	CH_MON varchar (10)  NULL 
) ;


CREATE TABLE  KTRUCSU (
	HOTEN_KTS varchar (20)  NOT NULL ,
	NAMS_KTS int NULL ,
	PHAI char (2)  NULL ,
	NOI_TN varchar (15)  NULL ,
	DCHI_LL_KTS varchar (30)  NULL 
) ;


CREATE TABLE  THAMGIA (
	HOTEN_CN varchar (20)  NOT NULL ,
	STT_CTR int NOT NULL ,
	NGAY_TGIA date NULL ,
	SO_NGAY int NULL 
) ;


CREATE TABLE  THIETKE (
	HOTEN_KTS varchar (20)  NOT NULL ,
	STT_CTR int NOT NULL ,
	THU_LAO int NULL 
) ;


ALTER TABLE  CGTRINH ADD 
	CONSTRAINT PK_CGTRINH PRIMARY KEY  	(STT_CTR	)  ; 


ALTER TABLE  CHUNHAN ADD 
	CONSTRAINT PK_CHUNHAN PRIMARY KEY  (	TEN_CHU	)  ; 


ALTER TABLE  CHUTHAU ADD 
	CONSTRAINT PK_CHUTHAU PRIMARY KEY  (	TEN_THAU	)  ; 


ALTER TABLE  CONGNHAN ADD 
	CONSTRAINT PK_CONGNHAN PRIMARY KEY  (	HOTEN_CN	)  ; 


ALTER TABLE  KTRUCSU ADD 
	CONSTRAINT PK_KTRUCSU PRIMARY KEY  	(	HOTEN_KTS	)  ; 


ALTER TABLE  THAMGIA ADD 
	CONSTRAINT PK_THAMGIA PRIMARY KEY  	(	HOTEN_CN,	STT_CTR	)  ; 


ALTER TABLE  THIETKE ADD 
	CONSTRAINT PK_THIETKE PRIMARY KEY  	(	HOTEN_KTS,	STT_CTR	)  ; 


ALTER TABLE  CGTRINH ADD 
	CONSTRAINT FK_CGTRINH_CHUNHAN FOREIGN KEY 	(	TEN_CHU	) REFERENCES  CHUNHAN (	TEN_CHU	);

ALTER TABLE  CGTRINH ADD 
	CONSTRAINT FK_CGTRINH_CHUTHAU FOREIGN KEY 
	(	TEN_THAU	) REFERENCES  CHUTHAU (	TEN_THAU	);


ALTER TABLE  THAMGIA ADD 
	CONSTRAINT FK_THAMGIA_CGTRINH FOREIGN KEY 
	(		STT_CTR	) REFERENCES  CGTRINH (		STT_CTR	);

ALTER TABLE  THAMGIA ADD 
	CONSTRAINT FK_THAMGIA_CONGNHAN FOREIGN KEY 
	(		HOTEN_CN	) REFERENCES  CONGNHAN (		HOTEN_CN	);


ALTER TABLE  THIETKE ADD 
	CONSTRAINT FK_THIETKE_CGTRINH FOREIGN KEY 	(STT_CTR) REFERENCES  CGTRINH (	STT_CTR	);

ALTER TABLE  THIETKE ADD 
	CONSTRAINT FK_THIETKE_KTRUCSU FOREIGN KEY 
	(	HOTEN_KTS	) REFERENCES  KTRUCSU (	HOTEN_KTS );


insert into  chunhan values ('so t mai du lich','54 xo viet nghe tinh');
insert into  chunhan values ('so van hoa thong tin','101 hai ba trung');
insert into  chunhan values ('so giao duc','29 duong 3/2');
insert into  chunhan values ('dai hoc can tho','56 duong 30/4');
insert into  chunhan values ('cty bitis','29 phan dinh phung');
insert into  chunhan values ('nguyen thanh ha','45 de tham');
insert into  chunhan values ('phan thanh liem','48/6 huynh thuc khan');


insert into  chuthau values ('cty xd so 6','567456','5 phan chu trinh');
insert into  chuthau values ('phong dich vu so xd','206481','2 le van sy');
insert into  chuthau values ('le van son','028374','12 tran nhan ton');
insert into  chuthau values ('tran khai hoan','658432','20 nguyen thai hoc');

insert into  congnhan values ('nguyen thi suu',   45 ,    60  ,'ho');
insert into  congnhan values ('vi chi a',   66  ,    87  ,'han');
insert into  congnhan values ('le manh quoc',   56  ,    71 ,'moc');
insert into  congnhan values ('vo van chin',   40 ,    52  ,'son');
insert into  congnhan values ('le quyet thang',   54  ,    74 ,'son');
insert into  congnhan values ('nguyen hong van',   50  ,    70   ,'dien');
insert into  congnhan values ('dang van son',   48,    65 ,'dien');


insert into  ktrucsu values ('le thanh tung',   1956          ,'1','tp hcm','25 duong 3/2 tp bien hoa');
insert into  ktrucsu values ('le kim dung',   1952          ,'0','ha noi','18/5 phan van tri tp can tho');
insert into  ktrucsu values ('nguyen anh thu',   1970          ,'0','new york usa','khu i dhct tp can tho');
insert into  ktrucsu values ('nguyen song do quyen',   1970          ,'0','tp hcm','73 tran hung dao tp hcm');
insert into  ktrucsu values ('truong minh thai',   1950          ,'1','paris france','12/2/5 tran phu tp hanoi');

insert into  cgtrinh values 
( 1       ,'khach san quoc te','5 nguyen an ninh','can tho',450 ,'so t mai du lich','cty xd so 6','dec-13-1994'); 
insert into  cgtrinh values 
( 2       ,'cong vien thieu nhi','100 nguyen thai hoc','can tho',   200         ,'so van hoa thong tin','cty xd so 6','may-08-1994'); 
insert into  cgtrinh values 
( 3       ,'hoi cho nong nghiep','bai cat','vinh long',   1000        ,'so t mai du lich','phong dich vu so xd','jun-10-1994'); 
insert into  cgtrinh values 
( 4       ,'truong mg mang non','48 cm thang 8','can tho',   30          ,'so giao duc','le van son','jun-10-1994'); 
insert into  cgtrinh values 
( 5       ,'khoa trong trot dhct','khu ii dhct','can tho',   3000        ,'dai hoc can tho','le van son','jun-10-1994'); 
insert into  cgtrinh values 
( 6       ,'van phong bitis','25 phan dinh phung','ha noi',   40          ,'cty bitis','le van son','oct-05-1994'); 
insert into  cgtrinh values 
( 7       ,'nha rieng 1','124/5 nguyen trai','tp hcm',   65          ,'nguyen thanh ha','phong dich vu so xd','nov-15-1994'); 
insert into  cgtrinh values 
( 8       ,'nha rieng 2','76 chau van liem','ha noi',   100         ,'phan thanh liem','tran khai hoan','sep-06-1994'); 

insert into  thamgia values ('nguyen thi suu',   2       ,'may-08-1994',   20          );
insert into  thamgia values ('nguyen thi suu',   4       ,'sep-07-1994',   20          );
insert into  thamgia values ('nguyen thi suu',   1       ,'dec-15-1994',   5           );
insert into  thamgia values ('le manh quoc',   1       ,'dec-18-1994',   6           );
insert into  thamgia values ('vo van chin',   2       ,'may-10-1994',   10          );
insert into  thamgia values ('le quyet thang',   2       ,'may-12-1994',   5           );
insert into  thamgia values ('nguyen hong van',   1       ,'dec-16-1994',   7           );
insert into  thamgia values ('nguyen hong van',   4       ,'sep-14-1994',   7           );
insert into  thamgia values ('dang van son',   3       ,'jun-10-1994',   18          );
insert into  thamgia values ('vo van chin',   3       ,'jun-10-1994',   10          );



insert into  thietke values ('le thanh tung',   1       ,    25          );
insert into  thietke values ('le kim dung',   5       ,    30          );
insert into  thietke values ('truong minh thai',   8       ,    18          );
insert into  thietke values ('le kim dung',   6       ,    40          );
insert into  thietke values ('nguyen anh thu',   3       ,    12          );
insert into  thietke values ('le thanh tung',   7       ,    10          );
insert into  thietke values ('nguyen song do quyen',   2       ,    6           );
insert into  thietke values ('truong minh thai',   6       ,    27          );
insert into  thietke values ('le kim dung',   4       ,    20          );
insert into  thietke values ('truong minh thai',   1       ,    12          );

--------------------------------------------------------------------
--------------------------------------------------------------------
--2
select * from ktrucsu
select * from chuthau
select * from chunhan
select * from congnhan
select * from cgtrinh
select * from thamgia
select * from thietke
--3
select *
from ktrucsu
where hoten_kts like 'le %' and nams_kts = '1956'
--4
select ten_ctr, ngay_bd
from cgtrinh
where ngay_bd >= '9/1/1994' and ngay_bd<= '10/20/1994'
--5
select ten_ctr, diachi_ctr
from cgtrinh
where ten_thau='cty xd so 6'
--6
select ct.ten_thau, dchi_thau
from chuthau ct join cgtrinh cg on ct.ten_thau=cg.ten_thau
                join thietke tk on cg.stt_ctr=tk.stt_ctr
where tinh_thanh='can tho' and hoten_kts='le kim dung'
--7
select noi_tn, k.hoten_kts
from ktrucsu k join thietke t on k.hoten_kts=t.hoten_kts
                join cgtrinh ct on t.stt_ctr=ct.stt_ctr
where ten_ctr='khach san quoc te' and tinh_thanh='can tho'
--8
select cn.hoten_cn, nams_cn, nam_vao_n, ch_mon, ct.ten_thau
from congnhan cn join thamgia t on cn.hoten_cn=t.hoten_cn
                join cgtrinh ct on ct.stt_ctr=t.stt_ctr
where ten_thau='le van son' and (ch_mon='han'or ch_mon='dien')
--9
select hoten_cn
from thamgia t join cgtrinh ct on t.stt_ctr=ct.stt_ctr
where ten_ctr='khach san quoc te' and tinh_thanh='can tho' and 
                extract(year from ngay_bd)=1994 and extract(month from ngay_bd)=12 and
                extract(day from ngay_bd) between 15 and 31;

--select t.hoten_cn, ngay_bd
--from thamgia t join cgtrinh ct on t.stt_ctr=ct.stt_ctr
--where ten_ctr='khach san quoc te'

--10
select kt.hoten_kts, nams_kts 
from ktrucsu kt join thietke t on kt.hoten_kts=t.hoten_kts
                join cgtrinh ct on t.stt_ctr=ct.stt_ctr
where noi_tn='tp hcm'and kinh_phi>400;
--11
select cn.hoten_cn, ch_mon
from congnhan cn join thamgia tg on cn.hoten_cn=tg.hoten_cn
                join thietke t on t.stt_ctr=tg.stt_ctr
where hoten_kts='le thanh tung';
--12
select ten_ctr from cgtrinh
where kinh_phi = (select max(kinh_phi) from cgtrinh)
--13
select hoten_kts
from ktrucsu
where nams_kts = (select max(nams_kts) from ktrucsu)
--14
select ten_thau, sum(kinh_phi)
from cgtrinh
group by ten_thau
--15
select ct.ten_thau, dchi_thau
from chuthau ct join cgtrinh cg on ct.ten_thau=cg.ten_thau
where kinh_phi = (select min(kinh_phi) from cgtrinh)
--16
select hoten_kts, sum(thu_lao)
from thietke
group by hoten_kts having sum(thu_lao) > 25
--17
select count(hoten_kts) so_kts, sum(thu_lao)
from thietke
group by hoten_kts having sum(thu_lao) > 25
--18 tinh so cong trinh ma moi kien truc su da thiet ke
select hoten_kts, count(stt_ctr)
from thietke 
group by hoten_kts
--19 tinh tong so cong nhan da tham gia moi cong trinh
select hoten_cn, count(stt_ctr) from thamgia group by hoten_cn
--20 ten va dia chi cgtrinh co so cong nhan tgia nhieu nhat

select ct.ten_ctr, diachi_ctr, count(hoten_cn)
from cgtrinh ct join thamgia t on ct.stt_ctr=t.stt_ctr
group by ct.ten_ctr, ct.diachi_ctr having 
    count(hoten_cn) >=
        (select max(count(hoten_cn)) from thamgia group by stt_ctr);

--21 
select ten_ctr, avg(kinh_phi)
from cgtrinh
group by tinh_thanh
---------
 create table c211 as
    select tinh_thanh, sum(kinh_phi) kp
    from cgtrinh group by tinh_thanh
--select * from c211
--
 create table c212 as
 select tinh_thanh, count(stt_ctr) soctr
 from cgtrinh group by tinh_thanh

--select * from c212
--
select c211.tinh_thanh, kp, soctr, (c211.kp/c212.soctr) tb from c211 join c212 on c211.tinh_thanh=c212.tinh_thanh;

drop table c211;
drop table c212;

--22 
select ten_ctr, diachi_ctr
from cgtrinh ct join thamgia t on ct.stt_ctr=t.stt_ctr
where hoten_cn='nguyen hong van' and 'dec-18-1994' between ngay_tgia and ngay_tgia + 

so_ngay;
--23
--cach 1
select hoten_kts
from cgtrinh ct join thietke t on ct.stt_ctr=t.stt_ctr
where ten_thau='phong dich vu so xd'
intersect
select hoten_kts
from cgtrinh ct join thietke t on ct.stt_ctr=t.stt_ctr
where ten_thau='cty xd so 6';
--cach 2
select hoten_kts
from cgtrinh ct join thietke t on ct.stt_ctr=t.stt_ctr
where ten_thau='phong dich vu so xd'
    and hoten_kts IN
    (select hoten_kts
    from cgtrinh ct join thietke t on ct.stt_ctr=t.stt_ctr
    where ten_thau='cty xd so 6');
--24
--cach 1
select hoten_cn
from cgtrinh ct join thamgia t on ct.stt_ctr=t.stt_ctr
where tinh_thanh='can tho'
minus
select hoten_cn
from cgtrinh ct join thamgia t on ct.stt_ctr=t.stt_ctr
where tinh_thanh='vinh long'
--cach 2
select distinct hoten_cn
from cgtrinh ct join thamgia t on ct.stt_ctr=t.stt_ctr
where tinh_thanh='can tho'
and hoten_cn not in
    (select hoten_cn
    from cgtrinh ct join thamgia t on ct.stt_ctr=t.stt_ctr
    where tinh_thanh='vinh long');
--25
--cach 1
select ten_thau
from cgtrinh
where kinh_phi > all
    (select kinh_phi
    from cgtrinh
    where ten_thau = 'phong dich vu so xd');
--cach 2
select ten_thau
from cgtrinh
where kinh_phi >
    (select max(kinh_phi)
    from cgtrinh
    where ten_thau = 'phong dich vu so xd');
--26
select hoten_kts, stt_ctr, thu_lao
from thietke
where thu_lao <
    (select avg(thu_lao) as thulao
    from thietke);
--27
select hoten_cn, sum(so_ngay) tong
from thamgia
group by hoten_cn having sum(so_ngay) >
    (select sum(so_ngay)
    from thamgia
    where hoten_cn='nguyen hong van');
--28
select hoten_cn, count(distinct stt_ctr) soct
from thamgia
group by hoten_cn having count(*)=
    (select count(*) from cgtrinh);
--29
select c1.ten_thau, c2.ten_thau
from cgtrinh c1 join cgtrinh c2 on c1.tinh_thanh=c2.tinh_thanh
where c1.ten_thau > c2.ten_thau
group by c1.ten_thau, c2.ten_thau having count(*)>1;
--30 
select c1.hoten_cn, c2.hoten_cn 
from thamgia c1 join thamgia c2 on c1.stt_ctr=c2.stt_ctr
where c1.hoten_cn > c2.hoten_cn
group by c1.hoten_cn, c2.hoten_cn having count(*)>1;
