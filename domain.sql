
select * from userdata
create domain user_data as text 
check (value in( 'admin','editor','viewer'));
alter domain user_data add constraint usertype_check
check (value in('admin','editor','viewer'));
alter domain user_data add constraint usertype_default
check (value in ('admin','editor','viewer'));
create domain age_type as integer 
check(value>=18);
alter domain age_type add check (value<=100)
alter domain age_type drop constraint age_type_check