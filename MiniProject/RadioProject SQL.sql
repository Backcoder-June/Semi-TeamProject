CREATE TABLE `miniproject`.`member` (
  `id` VARCHAR(30) NOT NULL,
  `password` VARCHAR(15) NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `phone` VARCHAR(13) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  `regdate` DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (`id`),
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);
  

  CREATE TABLE `miniproject`.`board` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `contents` VARCHAR(4000) NOT NULL,
  `writer` VARCHAR(30) NOT NULL,
  `private` TINYINT NOT NULL DEFAULT 0,
  `viewcount` INT NOT NULL DEFAULT 0,
  `writingtime` DATETIME NOT NULL DEFAULT now(),
  Foreign key(writer) references member(id)
on delete cascade on update cascade,
  PRIMARY KEY (`seq`));
  
  CREATE TABLE `miniproject`.`reviewBoard` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `contents` VARCHAR(4000) NOT NULL,
  `writer` VARCHAR(30) NOT NULL,
  `secret` TINYINT NOT NULL DEFAULT 0,
  `viewcount` INT NOT NULL DEFAULT 0,
  `writingtime` DATETIME NOT NULL DEFAULT now(),
  Foreign key(writer) references member(id)
on delete cascade on update cascade,
  PRIMARY KEY (`seq`));

CREATE TABLE `miniproject`.`comment` (
  `seq` INT NOT NULL,
  `contents` VARCHAR(1000) NOT NULL,
  `writer` VARCHAR(30) NOT NULL,
  `private` TINYINT NOT NULL DEFAULT 0,
    Foreign key(seq) references board(seq)
on delete cascade on update cascade,
  `writingtime` DATETIME NOT NULL DEFAULT now());


create table BoardLike(
likeNo int NOT NULL PRIMARY KEY auto_increment,
boardseq int not null,
memberid varchar(30) NOT NULL,
likeCheck tinyint DEFAULT 0 NOT NULL,
FOREIGN KEY (memberid) REFERENCES member(id) ON DELETE CASCADE,
FOREIGN KEY (boardseq) REFERENCES board(seq) ON DELETE CASCADE 
);


ALTER TABLE `miniproject`.`board` 
CHANGE COLUMN `private` `secret` TINYINT NOT NULL DEFAULT '0' ;

ALTER TABLE `miniproject`.`comment` 
CHANGE COLUMN `private` `secret` TINYINT NOT NULL DEFAULT '0' ;

ALTER TABLE `miniproject`.`comment` 
ADD COLUMN `comment_seq` INT NOT NULL AUTO_INCREMENT AFTER `writingtime`,
ADD PRIMARY KEY (`comment_seq`);

ALTER TABLE `miniproject`.`board` 
ADD COLUMN `likeCount` INT NOT NULL default '0' AFTER `viewcount`;

ALTER TABLE `miniproject`.`board` 
ADD COLUMN `likeCheck` tinyINT NOT NULL default '0' AFTER `likeCount`;


insert into member (id, password, name, phone, email, regdate) values ('minjae', '1111', 'minjae', '010-2922-2993', 'asdf@naver.com', now());
insert into member (id, password, name, phone, email, regdate) values ('kanu', '1111', 'kanu', '010-1133-2223', 'qwer2@naver.com', now());
insert into member (id, password, name, phone, email, regdate) values ('tea', '1111', 'tea', '010-6333-1232', 'z@naver.com', now());
insert into member values('idee', '123', 'dlfma', '010991191', 'asfas', '2022-11-11'); 
  
  insert into board (title, contents, writer) values ('친구 결혼식인데', '친구 축의금으로 얼마가 적당할까요 친한친군데 ', 'tea'); 
  insert into board (title, contents, writer) values ('어제 술집에서 있었던 썰', '친구랑 홍대갔는데 둘이 술먹고 있었습니다. 근데 갑자기 덩치큰 두분이 오셔서 전화번호를 물어보는 겁니다. ', 'kanu'); 
  insert into board (title, contents, writer) values ('층간소음 사연입니다', '새벽1시만 되면 윗집에서 뭘하는지 쿵쿵소리가 너무 크게 납니다. 찾아가서 뭐라했더니 갑자기 라면먹고갈꺼냐고 물어보는겁니다', 'minjae'); 
  insert into board (title, contents, writer) values ('운전하다 벤츠 들이받은 후기', '망했어요', 'tea'); 
  insert into board (title, contents, writer) values ('길 걸어가다 도를 아시나요 만났습니다', '제가 영어학과라 영어로만 대답했더니 알아서 갈길 가시더라구요.', 'idee'); 
  insert into board (title, contents, writer) values ('어제 스타벅스 갔는데', '진짜 맥북이 많더라구요. 직원한테 맥북아니어도 괜찮냐고 물어보니까 웃으면서 그런거 상관 없다고 말씀해 주시네요 ', 'backcoder'); 
  
  insert into reviewboard (title, contents, writer) values ('아 오늘방송 진짜 웃김', 'dj님 말하는거 너무 유쾌하셔', 'idee'); 
  insert into reviewboard (title, contents, writer) values ('오늘 레전드네요', '그거 두번째 사연 완전공감', 'backcoder'); 
  insert into reviewboard (title, contents, writer) values ('두번 째 사연 ㅠㅠ 슬퍼요', '저도 비슷한 일 겪어서 마음이 아프네요', 'tom'); 
  insert into reviewboard (title, contents, writer) values ('첫번 째 사연 본인입니다.', '많은 관심 주셔서 감사합니다', 'minjae'); 
  insert into reviewboard (title, contents, writer) values ('아 방금 나온 이야기 진짠가요', '믿기질 않네요', 'idee'); 
  insert into reviewboard (title, contents, writer) values ('와 저도 비슷한 일 겪었는데', '저거 진짜 힘듭니다 대단하신거', 'june'); 
  insert into reviewboard (title, contents, writer) values ('박수를 보냅니다', '정말 좋은일 하셨네요', 'kanu'); 
  insert into reviewboard (title, contents, writer) values ('감동이네요 덕분에', '따듯한 하루가 되네요 ', 'tea'); 
  insert into reviewboard (title, contents, writer) values ('재밌는 방송 감사합니다', '덕분에 웃어요', 'backcoder'); 
  
  