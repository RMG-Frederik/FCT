begin

  pit_admin.merge_message_group(
    p_pmg_name => '&TOOLKIT.',
    p_pmg_description => 'Messages for the Finite Chart Toolkit'
  );

  pit_admin.merge_message(
    p_pms_name => '&TOOLKIT._COMPLETED',
    p_pms_pmg_name => '&TOOLKIT.',
    p_pms_text => q'^&TOOLKIT. erfolgreich abgeschlossen.^',
    p_pms_description => q'^^',
    p_pms_pse_id => 70,
    p_pms_pml_name => 'GERMAN',
    p_error_number => null
  );
  
  pit_admin.merge_message(
    p_pms_name => '&TOOLKIT._REQ_REJECTED',
    p_pms_pmg_name => '&TOOLKIT.',
    p_pms_text => q'^Ihre Anfrage wurde abgelehnt.^',
    p_pms_description => q'^^',
    p_pms_pse_id => 40,
    p_pms_pml_name => 'GERMAN',
    p_error_number => null
  );
  
  pit_admin.merge_message(
    p_pms_name => '&TOOLKIT._REQ_GRANTED',
    p_pms_pmg_name => '&TOOLKIT.',
    p_pms_text => q'^Ihre Anfrage wurde akzeptiert.^',
    p_pms_description => q'^^',
    p_pms_pse_id => 50,
    p_pms_pml_name => 'GERMAN',
    p_error_number => null
  );
  
  pit_admin.merge_message(
    p_pms_name => '&TOOLKIT._REQ_PENDING',
    p_pms_pmg_name => '&TOOLKIT.',
    p_pms_text => q'^Ihre Anfrage wartet auf Entscheidung.^',
    p_pms_description => q'^^',
    p_pms_pse_id => 50,
    p_pms_pml_name => 'GERMAN',
    p_error_number => null
  );

  commit;
  pit_admin.create_message_package;
end;
/
