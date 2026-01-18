use dogs;

-- since this is a small database, we can look through it manually, but we can also see a reutrn of 14, 5, and 9 rows from the respective selections;
select * from breeds;
select * from breeds where lifespan < 10;
select * from breeds where lifespan >= 10;

-- Delete all dogs with a lifespan of less than 10
Delete from breeds where lifespan < 10;

-- again, since this is a small database, we can look through it manually, but we also expect to see a reutrn of 0 and 9 rows from the respective selections;
select * from breeds where lifespan < 10;
select * from breeds;
