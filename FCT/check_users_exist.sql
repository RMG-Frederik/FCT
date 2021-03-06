prompt &h2.Checking owner user &INSTALL_USER.
declare
  user_exists exception;
  pragma exception_init(user_exists, -1920);
begin
  execute immediate 'create user &INSTALL_USER. identified by &INSTALL_USER.';
  dbms_output.put_line('&s1.User &INSTALL_USER. created.');
exception
  when user_exists then 
    dbms_output.put_line('&s1.User &INSTALL_USER. exists.');
end;
/