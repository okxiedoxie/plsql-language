CREATE OR REPLACE PACKAGE MyPackage
as
  /**
   * Comment
   */
  function get_myValue(param1 in varchar2)
    return varchar2;

  /**
   * Comment
   */
  procedure set_myValue(param1 in varchar2);

  procedure callTo(param1 in varchar2);

end;
/

create or replace package body MyPackage
as

  function get_myValue(param1 in varchar2)
    return varchar2
  is
  begin
    return param1 || ' TEST';
  end;

  procedure set_myValue(param1 in varchar2)
  is
  begin
    MyPackage.callTo('test');
    pCallInternal('test2');
    -- some other code to execute
    return;
  end;

  procedure callTo(param1 in varchar2)
  is
  begin
    -- some code to execute
    return;
  end;

  procedure pCallInternal(param1 in varchar2)
  is
  begin
    -- some code to execute
    return;
  end;

end;
/
