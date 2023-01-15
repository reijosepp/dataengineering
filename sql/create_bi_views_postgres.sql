-- create view for finding all articles where an author is the main author
create or replace view public.author_articles as (

	select
	
		au.author_id,
		au.author_name,
		a.article_id,
		a.title as article_title,
		a.journal_id,
		j.journal_name
	
	from public.author au
	
	left join public.article_author aa
		on aa.author_id = au.author_id
		and aa.authorship_type_id = 1 -- main author
	
	left join public.article a 
		on a.article_id = aa.article_id
	
	left join public.journal j 
		on j.journal_id = a.journal_id
	
);


-- create view for listing all articles published in a specific year
create or replace view public.year_articles as (

	with article_latest_version as (
	
		select
			article_id,
			max(publication_date) as publication_date
		from public.article_version av
		group by article_id
	
	)

	select
		date_part('year', alv.publication_date) as publishing_year,
		a.article_id,
		a.title,
		a.journal_id,
		j.journal_name
	from article_latest_version alv
	
	left join public.article a on a.article_id = alv.article_id
	
	left join public.journal j on j.journal_id = a.journal_id

);


-- 
create or replace view public.multiple_versions_articles as (

	select
		a.article_id,
		a.title,
		a.journal_id,
		j.journal_name,
		count(av.article_version_id) as article_versions
	from public.article a
	
	left join public.article_version av on a.article_id = av.article_id
	
	left join public.journal j on j.journal_id = a.journal_id
	
	group by a.article_id, a.title, a.journal_id, j.journal_name
	
	having count(av.article_version_id) > 1
		
);


-- 
create or replace view public.articles_per_category as (

	select
		c.category_code,
		c.category_name,
		count(ac.article_id) as articles_from_category
	from public.category c 
	
	left join public.article_category ac on ac.category_code = c.category_code
	
	group by c.category_code, c.category_name
);