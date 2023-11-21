create table tests.tests (
id serial4 not null primary key,
test_name varchar(1000) not null
);

create table tests.questions ( 
id serial4 not null primary key,
question varchar(1000) not null
);

create table tests.answers(
id serial4 not null primary key,
answer varchar(1000) not null
);

create table tests.right_ansfer(
id_test integer not null,
id_question integer not null,
id_answer integer not null,
right_ans boolean not null,
constraint right_answer_fk foreign key (id_test) references tests.tests (id),
foreign key (id_question) references tests.questions (id),
foreign key (id_answer) references tests.answers (id)
);

