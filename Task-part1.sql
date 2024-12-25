create database Task_part1
use Task_part1

		create table actors
		(
		act_id int primary key ,
		act_fname char(20) , 
		act_lname char(20),
		act_gender char(1)
		)

		create table directors
		(
		dir_id int primary key ,
		dir_fname char(20),
		dir_lname char(20)
		)

		create table movie_direction
		(
		dir_id int ,
		mov_id int ,
		primary key(dir_id , mov_id)
		)

		create table movie_casts
		(
		act_id int , 
		mov_id int ,
		role char(30),
		primary key (act_id , mov_id )
		)

		create table movie
		(
		mov_id int primary key ,
		mov_title varchar(60),
		mov_year int , 
		mov_time int ,
		mov_lang varchar(60),
		mov_dt_rel date ,
		mov_rel_country varchar(5)
		)

		create table reviewer
		(
		rev_id int primary key,
		rev_name varchar(30)
		)

		create table genres
		(
		gen_id int primary key,
		gen_title varchar(20)
		)

		create table movie_genres
		(
		movie_gen_id int primary key,
		mov_id int,
		foreign key (mov_id) references movie(mov_id)on delete cascade,
		gen_id int,
		foreign key (gen_id) references genres(gen_id)on delete cascade,
		)

		create table rating
		(
		mov_id int ,
		rev_id int ,
		rev_stars int ,
		num_o_rating int,
		primary key (mov_id , rev_id)
		)