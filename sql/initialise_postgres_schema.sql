-- create table CATEGORY based on design document
create table if not exists public.category (

	category_code varchar null unique,
	category_name varchar not null,
	
	primary key (category_code)
	
);


-- create table JOURNAL based on design document
create table if not exists public.journal (

	journal_id serial not null unique,
	journal_name varchar not null,
	
	primary key (journal_id)
	
);


-- create table GENDER based on design document
create table if not exists public.gender (

	gender_id serial not null unique,
	gender_name varchar not null,
	
	primary key (gender_id)
	
);

-- initialize with values
insert into public.gender (gender_name) 

select 'male'
where not exists (select * from public.gender)

union all

select 'female'
where not exists (select * from public.gender);


-- create table AUTHOR based on design document
create table if not exists public.author (

	author_id serial not null unique,
	author_name varchar,
	gender_id integer,
	h_index integer,
	
	primary key (author_id),
	foreign key (gender_id) references gender(gender_id)
	
);


-- create table ARTICLE based on design document
create table if not exists public.article (

	article_id serial not null unique,
	arxiv_id varchar not null unique,
	title varchar,
	doi varchar,
	pages integer,
	figures integer,
	journal_id integer,
	
	primary key (article_id),
	foreign key (journal_id) references journal(journal_id)
	
);


-- create table ARTICLE_VERSION based on design document
create table if not exists public.article_version (

	article_id integer not null,
	article_version_id serial not null,
	article_version varchar not null,
	publication_date date not null,
	
	foreign key (article_id) references article(article_id),
	primary key (article_id, article_version_id)
	
);


-- create bridge table CITATION
create table if not exists public.citation (

	article_id integer not null,
	cited_article_id integer not null,
	
	foreign key (article_id) references article(article_id),
	foreign key (cited_article_id) references article(article_id),
	primary key (article_id, cited_article_id)

);


-- create bridge table ARTICLE_CATEGORY
create table if not exists public.article_category (

	article_id integer not null,
	category_code varchar not null,
	
	foreign key (article_id) references article(article_id),
	foreign key (category_code) references category(category_code),
	primary key (article_id, category_code)

);


-- create table AUTHORSHIP_TYPE
create table if not exists public.authorship_type (

	authorship_type_id serial not null unique,
	authorship_type_name varchar not null,
	
	primary key (authorship_type_id)
	
);

-- initialize with values
insert into public.authorship_type (authorship_type_name) 

select 'main author'
where not exists (select * from public.authorship_type)

union all

select 'co-author'
where not exists (select * from public.authorship_type);


-- create bridge table ARTICLE_AUTHOR
create table if not exists public.article_author (

	article_id integer not null,
	author_id integer not null,
	authorship_type_id integer,
	
	foreign key (article_id) references article(article_id),
	foreign key (author_id) references author(author_id),
	foreign key (authorship_type_id) references authorship_type(authorship_type_id),
	primary key (article_id, author_id)

);