create table t_member(
    id varchar2(10) primary key,
    pwd varchar2(10),
    name varchar2(50),
    email varchar2(50),
    joinDate date default sysdate
);
insert into t_member
values('hong','1212','È«±æµ¿','hong@gmail.com',sysdate);

insert into t_member
values('park','1212','¹Ú¼ø½Å','park@gmail.com',sysdate);

insert into t_member
values('kim','1212','±èÀ¯½Å','kim@gmail.com',sysdate);
select * from t_member;
commit;
