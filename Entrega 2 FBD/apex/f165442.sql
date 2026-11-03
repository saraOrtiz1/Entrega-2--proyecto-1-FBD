prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.1'
,p_default_workspace_id=>412674969726327936
,p_default_application_id=>165442
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SARAWORKS'
);
end;
/
 
prompt APPLICATION 165442 - Wheels Alpes
--
-- Application Export:
--   Application:     165442
--   Name:            Wheels Alpes
--   Date and Time:   04:30 Tuesday November 3, 2026
--   Exported By:     S.ORTIZO23@UNIANDES.EDU.CO
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     18
--       Items:                   60
--       Validations:              3
--       Processes:               18
--       Regions:                 40
--       Buttons:                 22
--     Shared Components:
--       Logic:
--         Items:                  1
--         Computations:           1
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             16
--       Security:
--         Authentication:         2
--         Authorization:          3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   3
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.2.1
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_SARAWORKS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Wheels Alpes')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'WHEELS-ALPES')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'6EB63DAE5F67EA49BFA990B47D5E4E7917491F0035EE882932150BEA9BC54358'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(10003637805891618303)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Wheels Alpes'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Wheels Alpes'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102050418Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461346215239
,p_version_scn=>'15852331370946'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(10003578917668611722)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(10003579727247611728)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003573627500611714)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003573952021611715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003574217635611715)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003574554481611716)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003574876433611716)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003575139101611716)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003575493603611717)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003575798103611717)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003576029413611718)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003576368925611718)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003576602290611719)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'Y')).to_clob
,p_version_scn=>'SH256:TC1mqO_n1hWvorH6XHVejgQzJq9VjDsWoq0rKaIQUNo'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003576954003611719)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003577244607611719)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10003577565897611720)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10003579727247611728)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10003592990698611785)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10003593581505611785)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(10003592990698611785)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10003594049313611786)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(10003592990698611785)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10003578917668611722)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:oPg58Ph5490B2hn5PjQWWzRONV9VVLWQuy64kaQIzsk'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002842Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10015045524329391035)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Buscar Viajes'
,p_static_id=>'buscar-viajes'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
,p_created_on=>wwv_flow_imp.dz('20261102000232Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000232Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10010798467469128171)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Gestionar Viaje'
,p_static_id=>'gestionar-viaje'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_security_scheme=>wwv_flow_imp.id(10005140297840716919)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
,p_created_on=>wwv_flow_imp.dz('20261101231843Z')
,p_updated_on=>wwv_flow_imp.dz('20261101234400Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10003590357379611779)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10014671869265378498)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Mi Cuenta'
,p_static_id=>'mi-cuenta'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_security_scheme=>wwv_flow_imp.id(10005398761436336700)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
,p_created_on=>wwv_flow_imp.dz('20261102000027Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000608Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10015343733767405875)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Mis Solicitudes'
,p_static_id=>'mis-solicitudes'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_imp.id(10005398761436336700)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
,p_created_on=>wwv_flow_imp.dz('20261102000501Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000634Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10007343639403496041)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Mis Vehiculos'
,p_static_id=>'mis-vehiculos'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_security_scheme=>wwv_flow_imp.id(10005140297840716919)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
,p_created_on=>wwv_flow_imp.dz('20261101223715Z')
,p_updated_on=>wwv_flow_imp.dz('20261101234329Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10010767902524122251)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Mis Viajes'
,p_static_id=>'mis-viajes'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_imp.id(10005140297840716919)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
,p_created_on=>wwv_flow_imp.dz('20261101231744Z')
,p_updated_on=>wwv_flow_imp.dz('20261101234352Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10007539999436890364)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Publicar Viaje'
,p_static_id=>'publicar-viaje'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_security_scheme=>wwv_flow_imp.id(10005140297840716919)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20261101223905Z')
,p_updated_on=>wwv_flow_imp.dz('20261101234344Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10005697158743391276)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Registro Conductor'
,p_static_id=>'registro-conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20261101221948Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221948Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10014715982269986514)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Registro Pasajero'
,p_static_id=>'registro-pasajero'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
,p_created_on=>wwv_flow_imp.dz('20261101235900Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235900Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10016906365997149241)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'RFA1 Tablero Conductor'
,p_static_id=>'rfa1-tablero-conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(10005140297840716919)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
,p_created_on=>wwv_flow_imp.dz('20261102002607Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002833Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10017121481692537388)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'RFA2 Tablero Pasajero'
,p_static_id=>'rfa2-tablero-pasajero'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_imp.id(10005398761436336700)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
,p_created_on=>wwv_flow_imp.dz('20261102002656Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002842Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10016293420393495001)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'RFC1 Demanda por Localidad'
,p_static_id=>'rfc1-demanda-por-localidad'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_security_scheme=>wwv_flow_imp.id(10005140297840716919)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
,p_created_on=>wwv_flow_imp.dz('20261102001952Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002803Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10016559512535121486)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'RFC2 Ingresos por Localidad'
,p_static_id=>'rfc2-ingresos-por-localidad'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_security_scheme=>wwv_flow_imp.id(10005140297840716919)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
,p_created_on=>wwv_flow_imp.dz('20261102002130Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002813Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10016641342185137999)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'RFC3 Viajes por Conductor'
,p_static_id=>'rfc3-viajes-por-conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_security_scheme=>wwv_flow_imp.id(10005140297840716919)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
,p_created_on=>wwv_flow_imp.dz('20261102002415Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002825Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10015308437648401112)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Solicitar Cupo'
,p_static_id=>'solicitar-cupo'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(10005398761436336700)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
,p_created_on=>wwv_flow_imp.dz('20261102000413Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000619Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D0B7455D599FEF7B9F7E6FDBA492009302801E459A9124A08A2CE2C5157A7424D80116494DA35BC5ABBEA4CBBBAD674CD9ACEAC995933AB';
wwv_flow_imp.g_varchar2_table(2) := 'A3D569958476396821D1840491D55A450B08828814042C5AB03C9487481E24F7DEDCE7D9FDFF7D6F5C49C80D37E79CFB3A675FCE7F1EFBF5FFFBFBBFECBDCFD9FB1C14903F89800E042481748027B30248024916E842401248177C32B32490E4802E0424';
wwv_flow_imp.g_varchar2_table(3) := '8174C127334B02490EE842403381746995994D83802490695C999C8A4802250777D3689504328D2B93531149A0E4E06E1AAD9240A67165722A2209941CDC4DA335F1048A01BA458F6DCF5FBABEB9FCD1D5DB26AE5CD3366BE5FA576A96AF695BB87CCDD6';
wwv_flow_imp.g_varchar2_table(4) := '07AC216D0BA9CE5477C280B0204C62802EE149924C20CE96AFDE3AF5E1755B1F5DB1B6F53994F751FC7919C16E876ABB1450D4D32AE3475535F40E63FC0DC6D8ABD610FE06D599EA4E18101684096183F2FEC36B5B9F25CC083B00CE12CE9A7E0A134AA0';
wwv_flow_imp.g_varchar2_table(5) := 'A58F378F5AB9AE751182F09F283B57AC6DEB640A3BC939DB8436AD43998DE24091DBD0081036B339C07AC28CB0230C09CB87D7B6FD07B5CE4BBFDD5C3C74D6F8842690409C39FCF61ACEE14758957F46B907A510456EFA10200CEFE1C07F8CADF38F321C';
wwv_flow_imp.g_varchar2_table(6) := 'F69A44B64A7127D0EAD50D0EFCEBF88715EBDA3E02C65FC1BF1EACA03EC464EEA808CCE7C077AC58BBEDE48A35ADDF26ECA3A6342822AE047A646DF35897527A002BB51138DC6290CDB2981B22C0A700835F21F6FB69D870C3E43A12C48D400FAF699E1E';
wwv_flow_imp.g_varchar2_table(7) := '00DB41B48DC63578905B1210A872046C07967F67EB8C78E98E0B8196AF6EBB8333DB7E0630D638C365491A1198C842EC9DE5EBDAEED2987FD86C8613885A1EA6F0D7512B0DEEF020B71440A09071FEDB78B444861268F5EA1D399CD95B10B01C14B9A516';
wwv_flow_imp.g_varchar2_table(8) := '02392CC85E261F196996A104EA5102CFE12DE474230D94651988008319611F1957A661045AB1B6751503FEA871A6C992E28100F9887C6554D9861068E913CDD968D05328724B0F049E34AA2B338440191E3BB53CCEF4C04E5A890814BB59E0113CEADE0C';
wwv_flow_imp.g_varchar2_table(9) := '201067389DF77DDD96C4AF0059F2500830FE3D1CAFE29396A122630FD34DA0E56BB6DD87864C895DA54C990A08E094D2B4B0EFF459A39B408C71D9FAE8F341D2721BE13B5D045AB5EAFFB3B0F60B51E4969E082C8CDC0069B65E1781825979D5A8595719';
wwv_flow_imp.g_varchar2_table(10) := '985F6EC94340C9EC6573F5A8D7E5FC103022901EFD326F9211D0EB435D04C221BC24509209A057BD5E1FEA2010DEBC03BB436F055239BF356CD3D78B6826D0D2F52D650870098ADCD21B81B247BED3A6D98F9A0964678A66A5E98DB7F9AC0F805AAEB556';
wwv_flow_imp.g_varchar2_table(11) := '9A09A47026976C68453DC5F2E9F1A56602A93C2409946244D06A8E1E5F6A2610A8769A81D76AB3CC97420828AAC3AED51CCD04C2DB3FD90269453DC5F2A9C0E985454D5669261030902D5034C8D32C5C4F63A09D403A589B2EF8F6BA3B80245DECD56CA7';
wwv_flow_imp.g_varchar2_table(12) := '8EC640338138E341CD06A7414657CF15E8F5740AA1F334303929266A265052AC4D905257F765F07B7BA0BCAC54089DBBBA3F4F90F6F452230934C85F3DD72E81DFE786E2622754CF9929A4A4C489612EE8B97679506A792909D48F036EECB6027E0F1414';
wwv_flow_imp.g_varchar2_table(13) := 'E4C31DF36E059B4D1132BFFA56282C2C8080DF0D94A65F16CB9F4A024528E0EDED021F765BF9F97970D7FCAF82C36E8BC48038BFB36616E4E6E68834DEDE6B5FC659FD44B13A00547FEAB23CAE76C8C9C9823B913C19190E0A1E201476F782DB211BD378';
wwv_flow_imp.g_varchar2_table(14) := '5C57B135EA1D106FCC45FA95627902713524BA25860F43E657DF0659991951BD4871357367015318B87A3E07CA1B35B145222C4F20BA45E75C856953264241FE8D9F8D1615E4C294C995823C6ED71716A149F46A5A9A403E6F3776451E31689E7ACBF8E8';
wwv_flow_imp.g_varchar2_table(15) := '280D8A993E653C14E25889BA3EBFCF3528D65A97962510753F1E1CF730C6606ED54C600CFBB0187DCF1883395533300F801BC743D482C598D574C92C4B200F3E6526C74F9F1A5BD735D8F385D89551B74744A427D683E3AD726D490285827EF0E1AD7866';
wwv_flow_imp.g_varchar2_table(16) := '6626949414C1D58E6B9AA4A4B408E8EECCEBE902550D5A853303EA6949027970929450F0F97CF0F6BEF761CFDEC39A64EFBEC3E0F707A828E82B535C247E97348D9623502814C081B31B26DC5C012BFFEE6E43E4E69B2A80E6CBACD80A598E407D4F9117';
wwv_flow_imp.g_varchar2_table(17) := '7FBD0AEA1EB8CD1059F4F5F087687DBDDD496B0992A5D85204E29C8B96C28ED31473AB6E360CF379551380CAF4E154886185A64941962290DFD7031C1F1AD6CC9D0E59199A97015FE7DAAC4C3BCC9D33550CA4FD38937F5D021307588C401EE1CA053553';
wwv_flow_imp.g_varchar2_table(18) := 'C531DACEE30D40CBAB47E07F7FF18690AD784E61D1D253F89DF3C265D28C3D5D5B452C43208EDD5720E081BCDC6CA89A352EAA7FCF5FE882C77FF8223436EF8677DEFD50C8163CA7B04F2F5E8B9AEF6BB78F1793B17E7F98A451139A2CC23204A2753ED8';
wwv_flow_imp.g_varchar2_table(19) := '7FE16CFBCCA82E0CA92A3CF5EC6BD0DDE386C57F5B03FFF8F837E189EF2E16E714F6338CA334D10A58503313E8C16230E88B9624E5C2F51A6419020503E1E5170B6AA27F8DEF8F1F5F8173E72F434DF50C9834B10CA72A18288A22CE29ECCCB94BF0F1E9';
wwv_flow_imp.g_varchar2_table(20) := 'E813A80BE685FF3F99A03FAC0B2CF0B30C814221BF70E7D449A3C471A8DDF9CFDA45F0A8920271ECBF9B3D2B3CD97AFEB38EFEC103CE2757968AEB604497B830F9CE32040AE2F4456161EEB0EE2C2C082FE7F0FAC24F97FB27FE53A4E5196EC94786C306';
wwv_flow_imp.g_varchar2_table(21) := 'B9395910425DFDF39AF9DC120452D590189B143BAF6F59FA3BF79689A3C5E58727CF0370711ADEE1F98727CF01F669306552380D44F9395147B8B5C34C51D29829D822040A0A9F398BF2C431DA6E74691E3CB4E44E388B639DE77FFD26ECDC7502E538D0';
wwv_flow_imp.g_varchar2_table(22) := 'F9591C1BAD5C76379438877FA3BBB4241FC9C7F19950289A1A53855B82401CEFAEC86BC5CEE1094469962EBE1DBEB5F21EE87179E0D8F15328A7A1C7DD0B8FFDFD4278F01BB328C9B0521421A98AADDEB0094D12A998A41EC35683F3706BD0E7DCE1122B';
wwv_flow_imp.g_varchar2_table(23) := '8CC1A2FBBF022D9BBE074FFFF72AF8F94F1F832D1BD7C303F7CD048A1B2E2FC53923E32C1E212D8599522295B208815451DDE2A2E107D12251BFDD4DE39C30AEA2106870DC2F78D8D3626758471F69874D6C82484B10A8CF4F1CE7C1FACEE375642CBC34';
wwv_flow_imp.g_varchar2_table(24) := '96E393EF78E948A5722D4120C6C2D5ECE88AFF344347975BF897B13091C485897761644D5C41AA5A1F813ABBE2FF0645476758076336526D7AB1068194B033BB1240A03E1D0CA7404CCF1EACA02508448BDEB1AED0DE116E1DE83C5E72B5BD4714EDED8D';
wwv_flow_imp.g_varchar2_table(25) := '3E732F129864677A02D1777DFC9197FFDA3B47B6E4F4C44797816424BE6E6F0F1387D648D35BAF23C99B8E69474EA034AAA58B3E1485E41937B61CC6548C06578F07DA3B631F483F53FF1AFC7CE36B31D7F88B0E37F47A7DA8AB0C48A72091C93F4C6552';
wwv_flow_imp.g_varchar2_table(26) := '0271F13128BFCF0D15489CAFCD9E0615E5A304118EFFF1A238C6B2E32A073514FB9CD607272E8862C7549480D059311AFC48602232CE6F8838B3ED4C492017FED507FC6E2847D2CC9B43AF2033282F730ADF1D3D7E4E1CE3B13B7AFCAC28B6A2AC041863';
wwv_flow_imp.g_varchar2_table(27) := '40BACBCB4B91446E209B44A4C976A623100D98FDD8F28C2E2D81EA0879C867F46916FACAD8E123A770A23DF65685F2C6222A3E383C7CE434389DF8E43AF27D21C6185457CD8412F1893C37906DB194954E694C45205A87E3F174404E763654CF9D093665';
wwv_flow_imp.g_varchar2_table(28) := '60F5A83570E1C4E899739D86FBE8F49976F0E2F8A7BC2CBCA8AC4F81CDA6C0FCEAAF40567626906DA1D0F56B8DFAD2A6E37120C2E958832F6DE6E16E025B823955D3C567E9BE8C8A9C50D742A71F9CF8940E86CAB1489944D2C1053BEC769873DB741C06';
wwv_flow_imp.g_varchar2_table(29) := '456CC43670709A74BD360D8102012F84427E287616416971E190FEA0E51C0E8703DEDA730CA8CB19329186405A68BF73F751A0B28B23B3F1838B193DCA293ED4190AFA2018F00D8E4EDBEB041228BE18A991AEA1B4B428AA22060C264E1807172E5E8503';
wwv_flow_imp.g_varchar2_table(30) := '87C203DEA8894710B1EFE019B872A50B264D1C3F6CAE51A54E111F8AD82A2ED27C671A028542E15587A538601DCE279327FD15D8B14B69DABACF9056885AB2C696BDA2F5993C31FAFB6664D3A808B95549208223B584DEC7228BB2B333E81055321C7698';
wwv_flow_imp.g_varchar2_table(31) := '7ACB04D10A1D3CACFF967EFF7B67B1F5E98469532AC1610FCFB945534E5F81A5383501CB4A484F22C4342DD048C09A543916323332A079DBBB389CD57E4BAFE280BDA9751F64656541E5848AD84DC07CB1274EED94962410DD5A4F9B562916CF1FFA83F6';
wwv_flow_imp.g_varchar2_table(32) := '3B326AC12EE2786AC6D4CAEB1E19A4B6DB8DB3CE920422F82A6FAA80ECAC4CF8E50B6F81CB137EE990C26315CAF3CB4D6F424E4E36DC34BE2CD66CA64B675902D1AD77363E70BCDADE054FFEE2F5117565D475FDF4FF7E079D5D3D828454D68898814FA8';
wwv_flow_imp.g_varchar2_table(33) := '47943E8513A703810C87CFEB0FC2EEBD47A0A3B30B1853E0E8B1D3D0B6E38398F56CDD7E048E9DF80418E66DEFE812655199311760A284962310BDEFB56BCF21B876AD1B32B3F2A1A8783C28363B6C69DE05274F5DB9A16B697DD04BAD7B441ECA4B6550';
wwv_flow_imp.g_varchar2_table(34) := '5954A6DBE3BD617E91400EA2050C69B7A3CFF9EEDAF33ECE49F542766E31E4E68F06A6D820AFA01CC8A7FFF5D436B8DA6FBD10BD5941E17D15BD72D505FFF3B357445ACA4379A90C2ACBE3E985B7761F828E5896CD32D65764DA1F2DD3025DBCDC0E6FEF';
wwv_flow_imp.g_varchar2_table(35) := 'FB03048241244C1964E7849F0A9307EDF64C2012D082B37FFAF166F875CB7BD0BAE308F4F6FA906C5E714E613FF89746A0C9D89CDC127C1899495985505979056510080460CFDE4340BA448405769620D0A93F5F800307698CC3A0A0682C6464E65DE75A';
wwv_flow_imp.g_varchar2_table(36) := '22014977B71BDAB6BF039B5FDE2D5617D20A433AA7B09E1E37509AAC9CA2EBF253995436E74CE8FAE4CC300BD7B8F6674FD7294E7280E909F4010E768F1DFF588C590A9CE3C0EEC88A0A39B542CED2098264F9456380BA28123AA7BC14476920CA8FCAA6';
wwv_flow_imp.g_varchar2_table(37) := '748A62C781F94762A03D645226BBB0217149A540BF3F00FB0F9E80D39F9C03EAA20A8BC681CDE6B8A1898C2940447038B28145FED13995C1300E6EF0231D054454EC164FA1EE03EF9DC0AE2D3C4F7783AC69196DBA16E8AD5D07A175FBEF61C76B7BE1D2';
wwv_flow_imp.g_varchar2_table(38) := 'E52B407749F9D86D311C2C43827E0AEACA479D19789777F1D21578F5B76F0B9BC83630D9CF340412AD4646363884E442667621E463374477498C31D0F27364E6028996BC8C31C8C3BBBCFCC231C21647460E846D431B87E946B5E84A661ECD0462AA12FB';
wwv_flow_imp.g_varchar2_table(39) := 'FB3109A8A16869D059E4B0FCC272C8CD2B05EA7AF4A8A63248F49441A4A132F20B2B206CDB982107F17A74E8CECBA1576B199A0984F711294520AD00C87C007A7CA99940A00435B3563A2DC510D0E14BCD0452984DB64029C603ADE6E8F1A56602A98C4B';
wwv_flow_imp.g_varchar2_table(40) := '0269F5588AE5D3E34BCD04622A336F1796620E8EB7397A7CA999400116922D50BC3D9BA0F2F5F85233819CC1CE76AC5F8CEB1730A5DC5215016FC4979AECD34CA08D1BD70450E34114B9A537020723BED4540BCD048A68DB1D39CA43FA22A0CB87BA08A4';
wwv_flow_imp.g_varchar2_table(41) := '80AA4B79FA626E1ECBF5FA501781EC5ED7BB08A51C07210869BA79233ED46CBE2E026DDAF42D2F30D8AE59BBE932A65985D077C2873ACCD64520D28BF3DC4FD3514AFA216084EF741368CB86BA77190379379666FC219F91EFF49AAD9B406400E74CB642';
wwv_flow_imp.g_varchar2_table(42) := '04441A89513E33844017CB9D5B11BBCF50E496060870800B119FE9B6D61002EDFEC95F0781BFC30FBF0000028349444154B3EFEAB64616901804385F277C668036430844763436D4E2DD187B86CEA5A43202EC99A686253B8CB2D03002914179EA173FC4';
wwv_flow_imp.g_varchar2_table(43) := 'E32114B98D0C8184A4E6C076477C64983E430944732A2A28CB804317C85FAA21F039046D0F918F8C34CC500291612FD53F785665FC6FF0FC2C8ADC520381730A67F735FD6AF1E7469B633881C8C097EA971CB1DB58159EBF8922B7E422F07BF4C5ECCD0D';
wwv_flow_imp.g_varchar2_table(44) := 'B5F46EB7E196C4854064E58BCFD6B607DA43F703E3F5742D25F108708027D107F7922FE2A53D6E0422835B5A96851A372C59C7385B87D77E14B92506815EC6E1A1A6FABA1F900FE2A932AE04EA337C4B436DBD1D42959CF37FC5B04F51E4161F04E861EE';
wwv_flow_imp.g_varchar2_table(45) := '4F10EBC95B1AEA5E8E8F8A81A5268440A4F2C5FA65179A1A96FC3B36A91318402D86BD8E82AD2CEEE5A61901CC1802063B5406DF406C6F6EACAFFB37C21AC313B2258C407DB5A126754B7DDD36ACE8FD0135E4040E7701E7DFE7C05E00E0C7319D793F65';
wwv_flow_imp.g_varchar2_table(46) := '8195D3B921368811831719832738637767F9EDCEC60D758B5EDA50F71BC25667F923CE9E7002F5B7B065E3B26B8D0D756F37362C79A6A9BE765563FD925B91580E97DF5E105042150E559984B79F5F5514DB7CCED9BDD8052EB286B07BA9CE5477C280B0';
wwv_flow_imp.g_varchar2_table(47) := '204C081B81D186BA47B76CA87BBA6943ED9EE79F5FDC0349FC259540D1EAFD2A82D2F2DCB2CB2F6C7CF093CD78FBB9F9B96FEE6F6AA8DDD9848FE0AD21B53BA9CE9BB1EE840161419844C32B99E12949A0640222758F0C0149A091E125530F4240126810';
wwv_flow_imp.g_varchar2_table(48) := '20F272640848028D0C2FF3A436A8269240060169D5622481ACEA7983EA2D09641090562D4612C8AA9E37A8DE9240060169D5622481ACEA7983EA2D09641090D62966604D258106E221AF46888024D0080193C90722F017000000FFFFC135EBAF00000006';
wwv_flow_imp.g_varchar2_table(49) := '4944415403004C081299989486600000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10003581156285611731)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D796C1CD779FF6697C72EC925978724DEA44449D4415917E52B762DC76E0EA0461CB4418BD628DCA0407A20018A34FDA32D8A026D90A269';
wwv_flow_imp.g_varchar2_table(2) := '0E380DD2C6862F28810DDBB11D5F55AC5B76ACCBB228598715DD96489192255ECB5DEE2EB97DDF9B9D37B3E4EECECC72767766E793F866BEF7DEF7DEFBDEEFBDDFCC3B66663D7FFA57AF24C811066EED031EA07F84808B112002B8B8F1A9EA004400EA05';
wwv_flow_imp.g_varchar2_table(3) := 'AE468008E0EAE6A7CABB9800D4F884000D81A80FB81C01BA03B8BC03B8BDFA4400B7F70097D79F08E0F20EE0F6EA1301DCD803A8CE02012280808204372240047063AB539D050244000105096E448008E0C656A73A0B048800020A12DC80C0DC3A1201E6';
wwv_flow_imp.g_varchar2_table(4) := '22427E572140047055735365E7224004988B08F95D850011C055CD4D959D8B0011602E22E47715022E2280ABDA952A6B1001228041A048AD341120029466BB52AD0C224004300814A99526024480D26C57AA9541048800068172B41A199F110122404668';
wwv_flow_imp.g_varchar2_table(5) := '28C20D081001DCD0CA54C78C081001324243116E408008E08656A63A6644800890111A8A280504F4EA4004D04388E24B1A01224049372F554E0F0122801E42145FD20810014ABA79A9727A081001F410A2F89246A0840950D2ED4695B308012280454052';
wwv_flow_imp.g_varchar2_table(6) := '36CE448008E0CC7623AB2D428008601190948D3311200238B3DDC86A8B1020025804A4ADB221630C234004300C15299622024480526C55AA936104880086A122C552448008508AAD4A75328C0011C03054A4E80404CCDA4804308B9845FAB3B37198181B';
wwv_flow_imp.g_varchar2_table(7) := 'E40E658BB2A56C4C22400430099815EAB3333118BF7D0D62D130772863981579531EE610200298C36BC1DA33ACF38F8D5E03ED551F650CC3B80517401998428008600AAE8529C7E3D3ECCA7F1512B3333CA3EA9A2A40871E0C1BBF7D155007FDE40A8300';
wwv_flow_imp.g_varchar2_table(8) := '11A03038433C168189D1414824667989D5D57ED87ADF26EE50C6408C431D2201A25118574204280C60B994128B85619C0D7BB08363FAEAEA2AD87AFF66F0555670873286611CEA4C30A2C41961D04F2EBF0878F29B3DE58E93DBC9B1EB028840A0061EFC';
wwv_flow_imp.g_varchar2_table(9) := '3DB9F32B8148040C4B21C1D810605A4587CEF9418008901F5C79AE78351F674B9D78C600BFDF070FDCB7112A2BCAD19BE2306CEBFD9BC0E7F3F1704C33C18883671E4087BC204004C80BAC98690226C7AFB3AB781C3D505E56C63AFFA6B49D9F2BB003DE';
wwv_flow_imp.g_varchar2_table(10) := '09EEBF7703D7655E989989F23C5026971F048800F9C115421337F81A3F662F793C70DFBD1BA1BA4ABEBA635826571BA882CF315D4C833AB8573035791345727940800890075023E131988E4C889CEFDEB20E1AEA03C2AF2734325D4CA3E8C9F98D2BDEF9';
wwv_flow_imp.g_varchar2_table(11) := '670AC919012240CED0A54F884B98DA2BF61D7DBDD0DADC985E394B28A659BB7685D008B1BBC04C3C2AFC2458830011C01A1C792E89048EFB87B98C879696C5B0A2A70DC59CDCAAE51DD0DAB2444E2BF24EC87E3A5A820011C01218E54CC2A1CFD8A437C6';
wwv_flow_imp.g_varchar2_table(12) := '3D7E5F256CD9B49ACB0B39F46FEA055C3DC23C70523C15BA8D22398B1020025804648C6D76E1585DC9EEEE3BEF60AB395EC59BF319578FEEEC5F2BD247A66ED3E312028D850B44808563C81F6F088D8F889CD6ACEA3135E9150933084D0D75B06AE55211';
wwv_flow_imp.g_varchar2_table(13) := '3B393ECCCAA4A11002B25047045828822C3D4E7AF1894E264280EDF4AE5AD989A2A56ECDAA6E50768A7187788A0DB72C2DC0A599110116D8F0F1F874CA9267FFC6D52049D202739D9F5C9224E8DFB446444CB3A5D6195A151278E42A100172452E996E6A';
wwv_flow_imp.g_varchar2_table(14) := 'F2B3A404B0B4ABCDD2A18FC838293435D442272B23E985A9D02D45A4738E08100172040E9345A7431067935F9471B2DAB766198A7975EBD6F4B0C975192F2316C5F2235CA6436E08100172C38DA54A405873055ED7B7122AD23CE4C6142DFDF355948176';
wwv_flow_imp.g_varchar2_table(15) := '836C8A6D90595A80CB327330018ADB52D3E109FEB09A62C5D163A7E095D77715C41D1B38AD14CB9744A3D393C24F8239048800E6F0E2DAB8E33B35659FF1F714AD08F176C9E54004C801B5686402F01DDE1C92E625C9EC4C1CE82E901BB444801C700B87';
wwv_flow_imp.g_varchar2_table(16) := '4745AABFFFD6A3F0EAB6BF2B8AFBF637BF22EC8884E96951018609810860022C54C5E7F371230AE540A01AEEEEEF42B128EE9E2DDD505B5BCDCBC6D5A838DB93E01E3A1846800860182A5931C236A06409E00FBED80F5E4F11204C1AE0F578E04B0F6F4E';
wwv_flow_imp.g_varchar2_table(17) := 'FA00A635B6894012B22250BCD6CB6A963D23F1CA8F6BEF689D2449F0C587D49D590C2B86FBC283EACEF3345B0DB2D3DCA41878982D93086002B148441D67DF774F1FD405F45F7134917D4EAA8DF55570CF5DABE5B48944CA631972201DB3214004C886CE';
wwv_flow_imp.g_varchar2_table(18) := '9CB868445D6FFFF2EFDF3127B678DE2F3FBC5E144EAB41020A430211C0104CC0379C94273E1B1A6A61F58AC50653A6AADD1A0DC3732F1C807FFBAF37E0F1BFFD3977283FFFE241C0B8546D63BEBE55CD5057979C0CB389300D838CE1865A440044C1808B';
wwv_flow_imp.g_varchar2_table(19) := '45A784D65D9B570AD98C7064E02A7CEB1F9E85D7DEFC008E1E3B07636321EE507EF58DDFF238D43193A7A2BB65936A53341A52824BEE6C7585880006118D6908B0717DB7C154AADA5BEF9E84EF7EFF25084D45D4C03912C6A1CE3B3B4FCD89D1F76ED2D8';
wwv_flow_imp.g_varchar2_table(20) := 'A4B5553FA5BB35880006DA1F8714F1E4B73A3D5E0FAC5FDB6A2095AA72E5DA283CF38B9D22A067691BFCC91F6D856F7FF351EE50EE59AAE6F9F4B69D3038AC4EB845C22CC2FABE36600B535C23160DB333BD31C640D0FD2302E8420410D55CFDD7F72D83';
wwv_flow_imp.g_varchar2_table(21) := '8A72E3EFFACECCCEC20FFEFB6D9889CB9F44DF70C77278F4913BA1ADB51E788F65BD16E5471FB90BD6AF5B0EF82F1E8BC38F7EFA0E605AF41B7155BE7258BB7A29574D24662116CD7CA7E14A74E0081001380CD90FCAD51FB5366F588627C3EEECF99B70';
wwv_flow_imp.g_varchar2_table(22) := 'E553F95329F865B8871EE8CB98F6E1AD7D803AA870EEC2205CB86CEE81BBFE8D3D98943BDC19E6021DB2224004C80A8F1C3933A37E90AA7779B31C68F0387253FD42DC72FC4610BBE2674CCAE2B84E5261E4869A361994F5D4BB42B54D6B73D6442E8F74';
wwv_flow_imp.g_varchar2_table(23) := '10018AD752DA676CDADBEA4C19323E86E37139494D8DBC5429FBD21F0301BF88181D53579E446016A1BD55B52D4EEF0B67414A8D2202A858A495F0F107603BAC18D9D418047C230B65A3AEB52528542727F59727272654C2B436AB69452659849AAA0A08';
wwv_flow_imp.g_varchar2_table(24) := '066BB806B71B6822CCC1C8722002640107A3B457D2CE8E451864CA757736087D1CD72B6412815A8111ED77E7AF89902E4D5A11A82374772E111A5ADB4520092908100152E098EFD18EA5BB3A9AE62BE884E0B33A5B36AFE25AA1501876ECF998CBE90E3B';
wwv_flow_imp.g_varchar2_table(25) := 'F69C80A9E43E017E12B1A14E1D0EA5D34F17D6D1AEDA3843C3A07410A584110152E098EF999991BFF58931ED6D8D7832EDBEF1F803505959C1D30D9C3807AFBD7110AE0DDE067E376057FD6B83A36C77F8200C9C38CF7550F7AFBFFE2097CD1E3A5A551B';
wwv_flow_imp.g_varchar2_table(26) := '67349377B3F9B8459F08A0D3D2B809A6A83436E84F62155DED19EF028FFFD9E745D0F98B83F0C2CB7BE0073F798DBB175EDE0DE7D9B2A7A2F0F5C71E8286A0E6EAAF44183837D4AB366A6D3790D4952A44009D66C74D2545C5EF93AFE28ADFCCF94B9F5F';
wwv_flow_imp.g_varchar2_table(27) := '0DFFF49DAF8975FE7469ABAB7CF0CF4CE70B0FCA43A6743A7A61556C22ACE8686D57C2E89C8A001120158F79BE041BA228817EB6DBAAC8B99CFBD7B7C313FFF9387CF5917B61E3FAE510A8A982FAFA00A0FC875FF91C8FDBCC7472C95B49A3B57196ED42';
wwv_flow_imp.g_varchar2_table(28) := '2BE1744E8F80277D30852A082412F2230CE8F7FBE7FFBA23869B7138B4F9F33FBE0BFEE53B8FC0F3FFF30D78FA277FC9E5C7BE7667CEC31E6DF95A1B1389596D14C969102002A401451B94D05C45FD3EF99384DA78BBC97ECD5D2A31AB92D76E76DAC51E';
wwv_flow_imp.g_varchar2_table(29) := '22804E4B68AFA2DACEA593AC68D1BE4A95A45ADB8B66D0020BCE777222801EC29224346667EDBFB3AA3197ED03DBDF5E016E910422800EF0124842231C51F70444A0CD8448242E2C9234B68B401252102002A4C091C6A3B9A46A3B571A4D5B0469492A49';
wwv_flow_imp.g_varchar2_table(30) := 'D4BC7A8D4208E920A4ED44DACEA593AC68D1539ABB94D6F6A21964F38289003A0DE4F1A893CA88A673E9242B5A7438AC0ED33C5EE36FAE15CDE022176C630214199964F11E8F0AD1A8E6D9FE64B4ED4EA39A7708248908A0D7406AEBEA69BA343EA1D909';
wwv_flow_imp.g_varchar2_table(31) := '1E1E31F7A27A3120D3DAA8B5BD18B638A14C224096560A4DDC8098E685F8A111F5B3E8599215356A6858B531160D01D6A1A806D9BC70224086060A4D8CC0B4E65BA0A8767DF8369E6CED8647526DC43A8418916D6D74118D2302A4011F3BCC7464FE0BE9';
wwv_flow_imp.g_varchar2_table(32) := '8343EA4FA2A649662AE8169B4FFCE3BFFF0AD0A16C2A7116E56B43F3BF2431CD881CA21FD34B8B1A11600E2C72E757C7FA9DED2D4263EED55544E4207C70E8029C3E73993B9453B25880E7E64D7508D4A1B11D7F3B8048301F5822800693D09C614F6757';
wwv_flow_imp.g_varchar2_table(33) := '1BF46F5E054D4DEA5B56973E4D1D6268929B122311F5532B5AD954267394CF5F52EF508B163502BE8A897550D43809581D153F9D018800C95E20777E75D8D3CD3AFF960DBD20B1FFF83588A41A9CFA6450116D773EF5C990B0096D46DBB10E581725629A';
wwv_flow_imp.g_varchar2_table(34) := '0DEDB0AE8ADFED672200EB01D821B0633091FFF52CEB84CDACF3730F3B3435D4B2A3FCF7F1E9ABB260C3E3C7A73F15563535AADF08C2BA100904342982EB0910622B24DACEBFB2A70B36AC93BFD1A920D5D8A81260E0B8FCE2BA126797F32CDBAF38F1F1';
wwv_flow_imp.g_varchar2_table(35) := '456E0E3EBED450AFDA8C8148821E563794D1619D694E00EE1E0245C2A3294B9DAB562E85757DEAF735B1A3A02BF37A211894AFA853E169C0AF3D63B89D1CDA148E4C7393EA834128F3CEBFB66D60754382732576C0390162C044DBFC15DA90F92815DA82';
wwv_flow_imp.g_varchar2_table(36) := '2295871B5C5393EAA4B1B77799F8BA723A939A973489E0A3C7AF08D92EC287C72E0B535A9A555B4560524082AF5C217F451A83108318FF9C3AFADCE75C49007C446052B31AD2C526BC7DABBAB3B67E47DB6211BFEFFD5342B68BB073CF71614A57C71221';
wwv_flow_imp.g_varchar2_table(37) := 'A713D6AD590A5D9D6D226A726218101311E022C19504C0DB7E22F9BE6C5D5D2DF46B26BC99DABE36E0874040FEEEE6C54B43307C53FDC1BC4C690A158EC39FA1EBF2DD2CC8866A7E7FA56ED1FD1B7BA13610E07A88050E87B8C765075712603AAC6E74F5';
wwv_flow_imp.g_varchar2_table(38) := 'AD9E3FE6CFD407BA3A5A44D4DEF7CE0AB9D8C2FB07D58979677BB36173D6AE592674232EFD916DD711007FEC6276567E6DD0EFAB84E625F5A213E8091D6D8B84CAF69D1F01AEBC88802209F82B323B761F13A577B4AB368AC00C426B7323F8FD3E1E8B98';
wwv_flow_imp.g_varchar2_table(39) := 'C4E3F2249A07B8E46023021406F16854FD447987E68A6EA4F4AA2A1FD4D7D701FEBB757B1C0E1D2DFE64F8E08757006D419B1A1A82E04B7E8314FD465C5B9B7AC7884EABD818495B0A3AAE23403CA65EE5DA5BD589ADD1C65CD6DD2E547FFDCE87422E96';
wwv_flow_imp.g_varchar2_table(40) := 'F0EA1B8744D13D4B55DB44A08ED0D6D2243466E2EEFB5D31D711006FF54A8B0702558A68F8DCD5B1182AD9D00913E0C36C97AE5AF36C10E667D6FDEEC24D387741FE3D011CCA7468866846F3AAD360303BE3BE0F69B99A00E9368BF43A8E2449D0BBBC5B';
wwv_flow_imp.g_varchar2_table(41) := 'A8BDFEF647422EB4F0E67675ECDFBBA21B2449326D8247B361A6BD3898CEC8A1095C4700B6E0BDE0A6EAEE6A86F232F965F97DEF1D87EB23EA43740BCEDC6006D7AE8FC3FEDF9EE0DA1515E5D0DDA98EE579A0C183D7A37681840BBF25AAD6DE2060A406';
wwv_flow_imp.g_varchar2_table(42) := 'ACF37BA1A7A79343313B9B80677EF91E97733EE490F0C9E7760B2E2FEFE902AFE64A9E43769287F61E0000070749444154AE4DE2716DCD1758F195CBDB01AFBC98CDA12367E0D4D961140BE28E9F1A828113177859E5E5E5B0A247DDD5E58174308C0011';
wwv_flow_imp.g_varchar2_table(43) := 'C03054A98A3804EA5BB342043EF5FCEE82EC0B2420014F6FDB2DCA5DBF6E059479E9F3270210930211C024605AF5A56C2EA0EC0BE0E311FB3F507764B57A56CABBF79F83CB57E4BB4D3058075D1DB98DFD81FE710488001C86DC0F1BD7F78AC44F3DBF03';
wwv_flow_imp.g_varchar2_table(44) := '2626D57D06116191303A1E81677EB153E4B6D9C0334C429984B4081001D2C2623CB0BEAE06F069524C31391986277EBE03C5BCB81FFF6C3B6019987977571B0459D9283BD915DB762280052DE0D73C7E70E4E859D8B9CFFA07E5B6EF3E2D26BE68B2D947';
wwv_flow_imp.g_varchar2_table(45) := '1E300DB9F9081001E6636238249148C0E1639FC099B3F2AB884AC2279F7D17462C7C5C7A88ED33E0F04AC91FCF5826968D36A09F5C6E08100172C30D62F138ECFFE0385CB92C3F8A80D948C9EFF14F47A3F01F3F7E13A2B1853F5A1089C6E17B3FFC35C4';
wwv_flow_imp.g_varchar2_table(46) := '63F213AC4A19581E968D36A02DE827671E01228079CC201C9E869D7B8EC08D1BF24B289845A5AF16820D9DE0497E4EFDE2A52178E27FD5092BEA9875B8E4F9C39FBE0B9F5E1DE149316F2C03CBE201EC8036A02D6813F3D29F490488002601BB757B0276';
wwv_flow_imp.g_varchar2_table(47) := 'EC3904A1D094485955D304D581452079BC5053C7962525F9999CF70F9C845FBD3520F4CC0A2FBFFE111CFEF08C4886796319581696A944A02D68D3ED31FBBCA5A6D866F7731109607768E6DB7775F006ECD97F04A251F94728703812A86B019FBF4E2897';
wwv_flow_imp.g_varchar2_table(48) := '9555425575A3F06F7B61170C9C34FF31AD230357E1972FED15F954D53402E6AD0460995836DA806168D3EEBD87E1DAD04DF492338880C7A09EEBD54E9FBD02070F9F0065D2E9F194416DB00DCA2BE63F528D9DB3A2B29A63C6E6C9F0AFDF7B11DEDE7112';
wwv_flow_imp.g_varchar2_table(49) := '701D9F076639A0CE5BEF9E84EF7EFF25A18579F9FC41E157042C3B106C15C32EB4EDC0A1E36C525EFC1775C021FF88003A0D859DEAE0915370EAF439A1E96557F9DAFA76F0965588B0B94275603178BCF213A318F7E4B3BF81BFF89B9FC1571FFB1177DB';
wwv_flow_imp.g_varchar2_table(50) := '5EDC83C1DCA1AC84A3CE53CFFD8687E301F3A80E2C4131ADC3BB826C4BA5883FC96C3DCC56A7D0761148425A048800696191037158B1F7FD6370F5DA7539801DCB2BAAF995DFE3F1325FE63F49F230BD76282B97DFB9CDAC9939A6ACDCCFF39024794E91';
wwv_flow_imp.g_varchar2_table(51) := '49136DA99D7337C21522B49D568832A126871301641CE61D27A722B06BDF11F8EC33F58D2F5F5510026C922B49D93BA49299D23171FC8EC4C161931297E98C3AA88B696AF9F0C69B4935255C9224665B4BCA7C046DC71522AC4B8A32790402440001852A';
wwv_flow_imp.g_varchar2_table(52) := 'DCBC350EBBF61C662B3D613990752EBEF2A299DCCA11C68E387E47E2041BBBA061510F3430E7AFAA17895156C2510775318D503021E0EA10DAAA24C11522AC0BAE5E29617456112002A85870E9DCC541D8CB567A6231CD4A4F6D0B68D7DEB9A28D0F686B';
wwv_flow_imp.g_varchar2_table(53) := 'A0AE1524360C4333B12EBBF71D86F397CCAF4661FA52764400D6BA6313537081758EFFDB7900068EABEBEE3801AD6593DDF20A3FD372D61FDA5CCBE6055807C5F263036760FBCE838C0843807556C2DD7C7635015E797D17A0DBB1EB007CC43A476852DD';
wwv_flow_imp.g_varchar2_table(54) := 'DCC209685DB01DBCDE72C7F60F5CA5C23A946926E29393213836701AB0CE5877748EADA00586BB8E0052725890093BBC62D6D42E61AB2F6C08A1B3D293290F23E15A3BB4B291B46674245607BC13E0A45AAF1CBD7833E53A45D77504A8F0C91F84D53610';
wwv_flow_imp.g_varchar2_table(55) := 'AEA5E3E6554D6D33041BBAA0A2B2461B9D17B99C6DA0793C65800EE5BC14A2C91427D5756C38872B59581E125D13CDC574D8F0080B0F76CBCA7504A8AE69122B310D6C35065D2DEB18B87A823BAE856A201C9EE08A0F3A940B51AEC75BCE1FD308D4B570';
wwv_flow_imp.g_varchar2_table(56) := 'A23724EBAF9C111B70D93FD711C065ED4BD5D5418008A00310459736024480D26E5FAA9D0E0244001D8028BAB4112820014A1B48AA9D3311200238B3DDC86A8B10200258042465E34C048800CE6C37B2DA22048800160149D9381301224021DA8DCAB02D';
wwv_flow_imp.g_varchar2_table(57) := '024400DB360D195608048800854099CAB02D024400DB360D195608048800854099CAB02D024400DB364D691866F75A1001ECDE42645F5E112002E4155ECADCEE081001ECDE42645F5E112002E4155ECADCEE081001ECDE42645F5E11C82301F26A37654E';
wwv_flow_imp.g_varchar2_table(58) := '0858820011C012182913A7224004706ACB91DD96204004B00446CAC4A90810019CDA7264B7250810012C81714E26E4750C024400C73415199A0F048800F94095F2740C024400C73415199A0F048800F94095F2740C024400C73495330C759A954400A7B5';
wwv_flow_imp.g_varchar2_table(59) := '18D96B290244004BE1A4CC9C860011C0692D46F65A8A0011C052382933A7214004705A8B91BD96226021012CB58B3223040A820011A0203053217645800860D79621BB0A820011A0203053217645800860D79621BB0A820011C00A98290FC7224004706C';
wwv_flow_imp.g_varchar2_table(60) := 'D391E156204004B00245CAC3B10810011CDB7464B815081001AC4091F2702C024400C7369D3D0C77BA15FF0F0000FFFF95D561C90000000649444154030053C23B79E89AAFAC0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10003581489997611731)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC5D099814C7757E35B3F70D0B0BAB65B90F0981580448026109255F1C478E2D8905D91C72E47C890039FEA2C4CEE7C4B11D1CD98E73385122';
wwv_flow_imp.g_varchar2_table(2) := '5B1C762C45120B027641976DD94220041692400224108790B8C4BDC0B2E7CCEE74A55ECFF631BBB33B33BB7D544FBFDDAEAEEAEA3ADEFB5FD5DFD5553DDD01A03F428010F02D024400BE353D294E08001001502B20047C8C0011808F8D4FAAFB1B01D49E';
wwv_flow_imp.g_varchar2_table(3) := '080051204708F8140122009F1A9ED426041001220044811C21E0530488007C6A7852DBDF0868DA13016848904F08F8100122001F1A9D542604340488003424C827047C880011800F8D4E2AFB1B01B3F644006634284C08F80C0122009F199CD42504CC08';
wwv_flow_imp.g_varchar2_table(4) := '100198D1A03021E0330488007C667052D7DF0874D59E08A02B22744C08F8080122001F199B542504BA224004D015113A26047C840011808F8C4DAAFA1B8178DA1301C44385E208019F204004E01343939A84403C048800E2A1427184804F102002F089A1';
wwv_flow_imp.g_varchar2_table(5) := '494D7F23D093F644003D2143F184800F102002E862E4AF7FFD57D90F3EB8A964FEC3EB877EF9E1CD950FFCD50BA3162ED9386ED192F513172CDB78D3E2876A6F5EB86CD33472F26180B6411BA1ADD066683BB4E17C614BB429DAB68BB97D7FE84B02F8D2';
wwv_flow_imp.g_varchar2_table(6) := '439BC62C5C523777D1B2BAEF2F5CBA71B3682CEF2D5C5AFBA970BCBEBDB52D9CA35CC9548267034AE464A4A3FD6360EC0867C1038CB37D4A00F600577693930F03B40DDA086D853643DBA10DD1966853B42DDA58B84FA336DFB8596D03A22D2C5C563BDA';
wwv_flow_imp.g_varchar2_table(7) := '8F6CE00B0258F8F0A62A61F4EF0AF7BA30745330A07C048CD772CEBF07C0EE118DA50A00AE138E367F20705DD4E6EC1EB50D88B6001C8E61DB106D649BF0BFB37849DD947481A2373DD29200E6CF5F9F2518FE6E61CC27843B098AF29E00E19F85BB4318';
wwv_flow_imp.g_varchar2_table(8) := '3A5FF8B41102DD11E0806DE34ED1461E5518DF2B88E0E3854BEB1E5BB464C31F629BEA9EC1FB316945008B1F5E3F76C1B2DA1F65940671D8FEB230CF32E12A85A38D10481D010EA300F85F73167815DB94B898FC10DB58EA05C99BC3F30430FFE1F5058B';
wwv_flow_imp.g_varchar2_table(9) := '966EFC73C1D66F284AF028E3F00F0CA0425EC849322F22D0D9A6BE8D6D6CC1D2BAED820C1EC4B6E7455DCC327B9A00162DADBD2F3312DCC581FDAF18B6CD362B466142C02E0418F0CF88B29F14938BDB162EDDF8C7222CED9648304F12C0E2A51BE62C5C';
wwv_flow_imp.g_varchar2_table(10) := '5AFB2607A8030637265292CE13023621300D80FD06DB22B649F0E09FA70800875C02ECB50A04B60AAC6F138E36424006046EC336B96849DD33D84665102859193C43005F7E78C32C31E4DA2714FBB270B41102D221C0195F2CDAA8583DD8244606D28917';
wwv_flow_imp.g_varchar2_table(11) := '57204F10C0C225755F0928EA55DF970F6BC4B51C45CA8AC018E0CAEFB1CDBA2D6032F54B4E009C8921FF0F81F1FF13CA6409471B21E00504B2B0CD2E5C52FBA8ECC24A4B00F8E08558DADB2800FCB670B41102DE4380C177441BFE3F6CCBB20A2F2501CC';
wwv_flow_imp.g_varchar2_table(12) := '59BE3523B334500B9CCD951538928B10480A010E5FC9280D6EC0369D547A871349490015E7AE3C0DC0FE14E88F1048030418C0172BCE5E79D2495592AD4B3A0210F74D3FE6C01724AB00A52304BC8000AE1060DB964D56A90860D1B2DA4780C1B7640389';
wwv_flow_imp.g_varchar2_table(13) := 'E421042C4140B46DB58D5B529835854843008B96D6DECE39FCC41AB5A81442404E04441BFF8F050FD549F3D8BA140480B3A41C0097FAA49047CEA64352A509024116E04F629BB74B9F54CA95A2C3650E0CE26FF5C7A42238A525043C8CC0D8CE36EFBA0A';
wwv_flow_imp.g_varchar2_table(14) := 'AE13C0034BEB2601836FBA8E0409400838898068F38B1EDA3CD9C92AE3D5E53A014440F981102C281C6D84809F1008F24087EB4F0ABA4A00F8031FC077F201FD11027E4480DD63F58460AA28BA4A004125F0EFA90A4CE909817442404C08E208D835955C';
wwv_flow_imp.g_varchar2_table(15) := '238005CB36DE2B66FE67B9A639554C08C881C09D0B96D47DCE2D515C2300C6D9236E294DF512023221C018FF7BB7E4718500167EAD768450F80EE16823040801803B1EF88BF5A3FA0B445FF2BB42001081AF0A619970B411028400008B6404FF0C5CF873';
wwv_flow_imp.g_varchar2_table(16) := '81003876FC075DD095AA2404E44580C15700D4BEE1A88C8E13C0A26575B70A0D4708471B21400868087018D5D937B418477CC709802B702FD01F21400874438073E8F36A40B7C2928C709E0098F34A2689052523045C4580B9D0371C25802FFFD5F3D789';
wwv_flow_imp.g_varchar2_table(17) := '09809B5C45992A27042445408C006E99FFD0FA6227C5739400021D1D9F15CA090E107BDA080142A02B022C3390F1275D23ED3C76940044CFA7AFF9D8694D2ADBF30830E0735255A23FE91D2500605005F4470810023D23E0701F718C00962F5F1E10F738';
wwv_flow_imp.g_varchar2_table(18) := '74FFDFB3E9E90C2100A28F4CC6BEE214148E11C0910B53B0F3E73AA518D54308781481BCC367268D774A76C708804538DDFF3B6555AAC7D308B04020E95BE5FE2A1AE86F0149E767DC31A59296891212023222C09DEB2B8E1100071809F4470810028911';
wwv_flow_imp.g_varchar2_table(19) := '60FCFAC489AC49E124010CB546642A8510486F043830C72E968E110003200248EF764BDA598440B27DC58AEA1C2180CE658D522B04A63208011F2030B0B3CFD8AEAA2304F0EEC9A9F942930CE16823040881C40864EE39539E933859FF53384200031585';
wwv_flow_imp.g_varchar2_table(20) := 'DEFBDF7F5B51093E42A0345C96E584BA8E104024873BA28C1380511D8480130824EA3356C9E008017085D308C02A8B5139BE40C0A93EE30801746484E9FEDF17CD9694B40A01A7FA8C2304004A0E8D00AC6A19548E3F1070A8CF3842005C0122007F345B';
wwv_flow_imp.g_varchar2_table(21) := 'D2D222047AEB331655A116E308016465D024A08AB6643B2E5A193AC9C4227110814C67E6CD1C2180302A444E2A04C2A126B85A7F427518964A381206803B336A768400C89E7221801DBEA9F102E0D51F1D86C3A166B98424691C418008C01198E5A9242C';
wwv_flow_imp.g_varchar2_table(22) := 'AEFC4DD7CE8B2B0C3784E21C9A1ACF039E33222924230256CB44046035A21297176A6B04B5F377CA985F9007E8D4432401410C98463DA69D2F102002F0859901426DD7A0590CFB3575F3F37361CEEC9B55A793803889694282284490361F204004E00323';
wwv_flow_imp.g_varchar2_table(23) := '875AB1F35FD435CDCFCF83399F990639D959AA43222828C0DF6B45934449E05AF480F6698D4020ADB523E5A03DDC02CD4D46E72F2C2C80BBEE88767E0D1E24823B0521C492C04535AF96867CF711B0430222003B5095A4CC8E8E50CC3D3F76FE39B3A742';
wwv_flow_imp.g_varchar2_table(24) := '765666370973B2320049A0A8A8503F87F305910E5AC4D50149C30011401A1A155552940E686C38AB2EF5E1715E5E2EDC21EEF9B3E2747E3C8F0E49E033B74F85DC9C6C3C54F362198A12518F69977E081001A49F4D45C7E5D0785574FECE8E9B9191019F';
wwv_flow_imp.g_varchar2_table(25) := '995505D8C113A98B6966CF9A0A9807D32A3A9198960DF104B9B4408008202DCC6856828B61FF398844A24377C60066DD36050AC4ACBF39556FE1A2C23CB86DC664C0BC982ED2E55602E3C8398B805DB51101D885AC4BE5B634D5C74CDE4DADBA11069716';
wwv_flow_imp.g_varchar2_table(26) := 'A72CCD90B2015075D30D7ABEF67033B4345FD68F29901E081001A4871D552DDAC3ADD0D6DAA08671376A44058C1A3E04837D72A34796C370518696B9ADE50AB4B7B76A87E4A70102440069604454818BFBFDA6C6F318541D2EE94D993C4E0DF76777B328';
wwv_flow_imp.g_varchar2_table(27) := '23E641A16BD1DF10F4A74CCA2B0F024400F2D8A25F92E00F7A9004B0101608A8F7FDC160FFCD8B65CCC4F9005126968D9382CD8DC673051847CE5E04EC2CBDFF2DC44EE9A8ECA41008B55E83F6708B9EB6EAA60950986FDD5BA58B8BF2A16AF204BD7CFC';
wwv_flow_imp.g_varchar2_table(28) := 'D1103A3D82029E458008C0B3A68B0AAE44DAC5E45C7DF440ECCB870E86D123CA45C8DA0DE703CACBCBF442711480A3013D82029E448008C0936633845687FE5C512332C57AFFF4A9F67D57727AD504C03AB0327C8F40B3E9C7451847CE7B08100178CF66';
wwv_flow_imp.g_varchar2_table(29) := 'BAC4380CEF686FD38F274D1A07BD3DE9A727EC6300CB9E74E3383D77BB58756837DD7AE82728601902761744046037C2B695CF6386FE2525C5B60CFDBB8A3F6AE45030FF5E009F3BE89A868EBD83001180776C1523699B98F853221D7ADC341B87FE7A25';
wwv_flow_imp.g_varchar2_table(30) := '22C080C1F4A9C60342914818E8FD0102188F6E44001E341CE71C5A5BAEE892E3033F2562A65E8FB03930A0A400460CAFD06B696DC12704E9B7023A201E0A100178C8589AA86DAD57415BF3C7B82B0D8DF0C69BFB1C750DD79AB06AD5296224822312F580';
wwv_flow_imp.g_varchar2_table(31) := '769621E0444144004EA06C611DD8F1DB5AAEC69478F5EA35B870A1DE5177F5AAF1C8310AD32A46243832C13039EF204004E01D5BA992B6B63600EF5CF6532324D9213185DA62494112D1488C5E102002E8051C194F85DA8C77F54DBF79022CFED21C57DD';
wwv_flow_imp.g_varchar2_table(32) := 'F49BC7EB30B50972D20F28E0090488003C61A6A890A1B646C02B2D1EE16FF597FDF95D50FD85A9AEBAA55FBD0B50169409E702E8B90044A2FFCEA91288009C42DA827A42A62BECAD336E808125B91694DABF224A07E4C18C69C6D387340AE81F9E4EE726';
wwv_flow_imp.g_varchar2_table(33) := '02701AF13ED6D7D11102745AF6BBFFA84A0BBAEEDFFDD929BA0C3802C0DF27E81114901A012200A9CD630867BEB2960F2D8549370C314EBA1CBA696239949595E8529865D523292025024400529A2556289CF50F8BFB7F2DF69ECFCF007C224F3B76DB47';
wwv_flow_imp.g_varchar2_table(34) := '59EEB9FB165D0C9CABD00F289032024E6620027012ED3ED685C36A2D6B4E4E36DC79BBF1831C2DBE2FFEE9B30D80AE2F79BBE699337B3C646567AAD14858EDE156354C3BB911200290DB3EAA7461D32FEE6E9B717D52AFF75633C6D9BDB2F543F8EBBFAF';
wwv_flow_imp.g_varchar2_table(35) := '81FB1E780CBEFE77BF541D861FF9871A7865EBA13839928BCACBC984196259524BDD1E6ED682E44B8C001180C4C6D1446B0F199DE9E62923B5E894FC503802FFB5E25558F9BFBF8193A7CF0370D3B3FB227CE2D47971EED722CD1608B7F7ED4320D3AB46';
wwv_flow_imp.g_varchar2_table(36) := 'E932854DA4A54752403A048800A43349AC40F87B7F1C526BB155938C1FE16871C9F8DFFB511D6CDFF97EC2A4DB77EE87EFFE6853C274F112544D1EA647E34A003A3D82024921E074222200A7114FB13EF39574FCD861505810FD6C572AC5ACDFFC2E1CF9';
wwv_flow_imp.g_varchar2_table(37) := 'E8B49EE5FAF1C361E197FE00BEF1F57B5587618CD3121C397A0A36BEB8573B4CDA2F29CA81D1A3AED3D39B65D7232920150244005299A3BB30EDA6A1F4F49BC7764F9020E6F8A92BB0AE76BB9E6AE6AD13E1F39F9B06E5438A01F0113EE1308C71336F35';
wwv_flow_imp.g_varchar2_table(38) := '7EE75FB3E17538F9E95548F56FFA544346B3ECA99643E99D418008C0199CFB540B3EF68B9FE5D2324F9D3C5C0B26EDFFEA77FBC5ED7EF47EBFB2B20C66DD32A1C7BCB36EB91E2A2B07ABE7B9A2C06F5E4D7CCBA02636EDA6DE64C84804600246D2201180';
wwv_flow_imp.g_varchar2_table(39) := 'A48641B13A4C9FE6668CC1E89103313A2577E2E4053DFDE489620291E987DD03E2DCE489C644DEF153A9BFFF7FECA85231B0100575961E31E9D019455E0F08B8114D04E006EA49D6198984F49423470C858020013D22C9C089530601940E2C4C98CB9CE6';
wwv_flow_imp.g_varchar2_table(40) := 'C449B15A9030476C828C6000865544471178261209A3474E5204880024350C8A65BE7A8EE81C9A637C2AAEB4B4484F6E5E4DD023BB05A2B70B183DA0A400BD94DDA81143F43CE6518C1E49016910200290C614DD0531779EE1C306754F9044CCD851E57A';
wwv_flow_imp.g_varchar2_table(41) := 'AA4F4E5CD2C33D053E3E6E5CF5C78E3666F47B4A1F2FDE2CAB99C4E2A5A538771120027017FF5E6B370F9F2B2B52BFFFC7C2478E28434F75BBDF3B0C2DADED6A38DEAEA5350CEFBC7B443F3566A47125D7239308540E336435DFC62491D5B749DC529C08';
wwv_flow_imp.g_varchar2_table(42) := 'C02DE413D4AB5E39B9311CAFAC18902047FCD3736E1F077979D1EF0486DAC2F0FC4BBBA0A547CFBCB30000100049444154A5FB7D794B4B0836BFB80BC2A128411414E4C29DB3C7C52F3441AC595625D2A1AF4224C846A75D408008C005D093A952518C77';
wwv_flow_imp.g_varchar2_table(43) := 'FE63FAB2C1F9E8A5EC0614E7C2D7FEF24FF47C67CE5E8215BF78197EFBDA3ED8BBFFB8EA5ED9B257C4FD0ACE9E33BE31F8C8B23F85A23E3C748415E14B42D0D71C3D11A821219F4F04209F4D5489CC1376D9D959C0C4BF7AA20FBB593346C23D9F9F1993';
wwv_flow_imp.g_varchar2_table(44) := 'F3FD0F3E862DDBDE53DD07073E893937FFBED9306D8AF1586FCCC9240EB2328331A9CCBAC49CA003D711200270DD04F10530779AC282BCF88952887D70C16DF0E87716C0C001C6AA40D7EC834A8BD5340BAB67743D95F2B1B91E45E9DB8F8B52AED4A319';
wwv_flow_imp.g_varchar2_table(45) := 'DC149B08C04DF47BA99B9BEEFFF3F3A3F7F0BD244FEAD4A4EB87C2FFFCDB03F0ADBF990B8BEE9F03B367DE28EEF36F52DF2A8C71FFFDAF0F00A6010BFEB479072C8A4BF81A73948B1C001180A4ADC0DC698A0AFB3F02D0D4CCCFCD82DBA68D80795F9C0A';
wwv_flow_imp.g_varchar2_table(46) := 'DFF8DA67E191A57FA8BE5518E3F037FD5ABAFEFA4585C60B4BCDBAF4B75CCA6F2D024400D6E2695969DC34022828C8B1AC5CA70ACACF2702700AEBFED44304D01FF46CCCCB4DC3E6028B6E016C14B75BD166D232EBD22DA1CF23DC569F08C06D0B24517F';
wwv_flow_imp.g_varchar2_table(47) := '1F7E029044A9F6260906985E01378D66F4480A48810011801466E82E046346076AEDE5E9BDEE39E588696D351E3662CCD0450EE9480A0D0122000D09E97CA3D334B7B449275D22815A5A8D5F32B27E3CC390A81E3ADF3F048800FA879F6DB903CC304D6B';
wwv_flow_imp.g_varchar2_table(48) := '9B7135B5AD428B0B6E6E36488B050C5D2CAEC6D3C5C9203C5946062BC491C1DC695A4DC3E93849A58CC21F1669820502195A907CC910200290CC209A38E64ED3D2EABD8F6CB4986E5B188B7D3458D3917CF711200270DF0671256001A3D35CAABF16378D';
wwv_flow_imp.g_varchar2_table(49) := 'AC918A98F5BF7AAD49178FD12D808E856C012200D92CD2294F5B8BF1465E25A2C0C5CBC6C7413A9348EB5DB8D80428B326A059172DCEEFBE2CFA1301C862095D0E0E4DD7CE4138645C41F1D4B9F38DE879C29DBD103B62415D502700E3FD069E50C40742';
wwv_flow_imp.g_varchar2_table(50) := '12014866E4A66B1744E7EF7EB53F7BCE18115825F2DE0FCE003AABCAD3CA89276B38D42C88CD7841A996967C771120027017FF98DA9BAE9D179DDFB8F2676418B3E7672C26801D6F7D02DFFFF173AA7B73F7F11839FA7B70E65C835E845987B018D5A08E';
wwv_flow_imp.g_varchar2_table(51) := 'FA490AB88E001180EB26880AD0D465D85F59791D4CBA715CF4A4D81FFBE49CD85BB71D3A7A462FECC02123AC47F62370ECE3B37AEEC993C601EAA2451009006858C8E01301B86E050E8D0D78CF6F0CFB87550C8519374F8041038D97771C3A72123AC464';
wwv_flow_imp.g_varchar2_table(52) := 'A055E272C5743F2E66EDAD2A37DC1E81A3C78CEF100E1A58ACEA823A69752009A0CE3427A021E29E1F70AF6AAA193B4063C379680FC776FE5BA6DD00F8F86C51511E6476DE06747444E0931397A507EDD8F17A88741215CA8EEF32405D50A7F2A18375F9';
wwv_flow_imp.g_varchar2_table(53) := '5167D41D31D02329E0380244008E43AE558857FED8CE8F1D043B0A634C4DC4040D0C1A5CAA867177E8A8B5B70158A6D5CE2CE3E0324376C618CCBC6512A08E5A9D44021A12EEF944002E61DF2426FCB00368D50F1952A67610C69816A5FA834B4B541F77';
wwv_flow_imp.g_varchar2_table(54) := '1F1E3686D6786C998BADB25FC51E3C64C8387890213B16CA589404860C891D09201678DE0F4E361D89005CB0484BD32531DB6F0CFB870C19243AFF4460AC7B4F2C35CD031C3C7CD21E694DD301FDA9009F003CF8A1B1A2502AEEFFBB96C71892C08D30D8';
wwv_flow_imp.g_varchar2_table(55) := '34B2098B25C29666E395E45DF3D0B17D081001D8876DDC92436DD7A0ADD558261B346820CC9C31098281F8A61838A010323333D5B21A1A9A01EFB1D5032B77DD79A74FA57FF4F12568E9FC19707676360C282E885B4E301080DB6F9D0CA8BB96009F160C';
wwv_flow_imp.g_varchar2_table(56) := 'B579E761274D6EAFFBF15B9DD7B592547E458940B3B8FA6BE2E517E4C3ACDB6E8260B07733540E33BEEFB763D7512DBB75BE4523801D6F7DA4CB54396CA81E8E17409D67893981FCFC3CFD348E8C10233D8202B623D07BCBB3BD7A7F55D08AC3DCCE2537';
wwv_flow_imp.g_varchar2_table(57) := '9C219F3D730A6426E8FC8850A5E973DBDB771E002EFE31DE3267C1080065DAFAC67E5DA4CA8A323DDC53203333036E9F5905DAC3429C2BD0DA2CFF4A474FFA248A97F13C118043568944DAC13CC4BD61C26828E8FC665F2211F0831D3939396AB2CB57AE';
wwv_flow_imp.g_varchar2_table(58) := 'C187472C7EA4D68211C0C1C317A0A9B14595313B271BF0D6453D48B02BCCCF81EBC78FD25385428D621931FA7D423D9202B6214004601BB4B105874CF7FDB9B9393066CC75B109121C0D370DA977DA711B90A0FE44A777EE3AA22719353C35DDC68EAE00';
wwv_flow_imp.g_varchar2_table(59) := '240DB50031420A897912354C3BDB112002B01DE26805EDEDC62BB2468F1C06E6577E4553F4BE1F36CC18526F1343EDB650ECC7437BCF6DEF5994E5F51DEFEB95542431FCD7138B00CE078C1E314C84A25B47D87B2F40894AEEBD3D11800336E362F22FD2';
wwv_flow_imp.g_varchar2_table(60) := '61BC24B36C70EA9FFAC619F5929262555A9C697FED8DC36A5886DD96ED87F5D9FFE2E22228294AFD4BC66565C633031D022B9C0F904137AB6490B51C2200072CD3D111FB52CF0125F197C712893261DC703DC9E697DF065C77D7235C0A44140536BFF4B6';
wwv_flow_imp.g_varchar2_table(61) := '5EFBC40923F5702A81E2E2C298E44802311174600B024400B6C01A5B28E7113D222B3B2BEE033F7A825E0215E583202F37FAC9AD8B17AFC2DBEFDAF460502F32743DF5D69E9370A93EFAAE82FC823C282F2FED9A24A9635C0DD15603300317C4823E397B';
wwv_flow_imp.g_varchar2_table(62) := '112002B0175FB574F37036B773365F3D91E28E3106E3C78DD073D5BE605C79F5C8BE04FAB10C58F7C25B7A8D13C68E0426FEF58814033839AA653163A6C5916F3D024400D663DABD44D3325B86E99359DD13268E19397C286465459F0CFCE8D8696BDEE8';
wwv_flow_imp.g_varchar2_table(63) := '63922FB104468ADD7B4FC1B14FA2EF124099460E1F629CEC43089F8D30B2F55128A3006942320B420420B375E2C88633E6E3C618A3809F3FBDC595B9007C37C1CF9F7E559770DC3871F51723143D82029E408008C013668A1572CC9861FA28E0CC994BF0';
wwv_flow_imp.g_varchar2_table(64) := 'EAEBC61A7C6C4AFB8E7EB7ED105CB810BDF7CFCECE86B1A3525BFBB74F322A391504880052414B92B438613679E2385D9A67D66D85D690734FCF35B786E1D975DBF4FA27DF38163282C6770CF41314901E012200E94D145FC011238640414174BDBDA9A9';
wwv_flow_imp.g_varchar2_table(65) := '159E79CE988C8B9FC3BAD8A7D7BD69ACFB1716C088CAFEDDFB5B27997C25C92E111180EC16EA413E9C6D9F5A75BD7EF6D7BF7D070E1C39AF1FDB1578FFC3B3F0DB2DEFEAC54F9D7A831EA680F7102002F09ECD7489CB4A8BC5BA7B997EFCD8CF5EB6F556';
wwv_flow_imp.g_varchar2_table(66) := '0087FE3FF9E94B7A7D151543A07440EC033CFA490A780201220027CCC4ECAB6478E550BDF04BF50DF0CB6777EAC749079294EF17CFEC808606E3BB0595820092AE83124A890011801366B16949FBECF9CBF0F6EE0F62347875EB7BB0EF60746D3EE6446F';
wwv_flow_imp.g_varchar2_table(67) := '0749C8B767DF69D8B67D5F4C29EFEC390028434C241DE80878214004E0052BC591F1F047A7E1F7BBF642BC47667FF2F84B507F25FADBFC3859538EBA58DF0CFFF5B317BBE58B4422AA0C47852CDD4E528427102002F084990C2139E7F0CEDEC3F0C10163';
wwv_flow_imp.g_varchar2_table(68) := 'ED3F10C880A2920A401F53363636C30F7FF222E0473AF0B83FAE2DDC018FFEFB66686E89FE9C19EB30D78565EF17B2EC1132A16C784CCE3B08100178C756D0DED1016FBCB91F4E9EF854973A18CC82A201C3202333070A8A8CE5B84F8E9F81C7576FD1D3';
wwv_flow_imp.g_varchar2_table(69) := 'F52580AFF9FACF9FFD0E4E9DBEA067C73AB02EAC13EBD64E1C1732A16CED1DC60F9FB473E4CB8B00118013B661FDAFA4B535045BB6ED868B17EBF5C232B3F244E7C72B7F508DC38E999B37400DE36EC79B07A0EEE5D8FB768CEFE67A906FE30B7BE19D3D';
wwv_flow_imp.g_varchar2_table(70) := '87F4E4B9F90355A2C1884020A8D68D32E0313A946DEBF63D80B2E2B19F9D57742702F080A52E5F698457B7BD0DCDCDC67D7D764E211416970363B126C44E6AEE94CFAC7D0D5EFFBDF1B6DE78EA8ABB8A6ED15BB61F819AF5C6D37E58A6995C3003D68D32';
wwv_flow_imp.g_varchar2_table(71) := 'A02C788CAEB1B14995F5CA557AC537E221BB8B6D3DB24BEB43F93E3D7B09B6BDB11BC261E351DFBCFC52C82F2CEB110D1CA60782D15F0C62A2C79E7811FEF107755053FB0ED4BEF89EEA8E1E33560A8E7EF4A91A87E7D68834DF7EB4167EBAFA65CCAA3A';
wwv_flow_imp.g_varchar2_table(72) := '2C0BCB540FE2EC501694493B85B26EDDBE1B50762D8E7C3911200290D32EAA54F845E05D6FEF07F3E41A76C49CBC12F57C4F3BF5CA5C34149818A66B690E1E3A011B36ED80679FDBA6BAA3C78C79040C6BF11B459A0F0F1B2F1AC132F02A8F656A65C5F3';
wwv_flow_imp.g_varchar2_table(73) := '5126944D3B8732A3EC878F9ED2A2C89710012200278C92C43ABB590CEC3C6FED3E08073E3486EED8018BC44C7F567672AF130B666441F1804AFD9EDD5C7EB2E18C8C6CB58CA0693401BDFCA16C2823CAAA25FBE0E05175D50275D2E2D2DDF7927E44004E';
wwv_flow_imp.g_varchar2_table(74) := '588B255F090E9F5FDFB9174E7F7A4ECF1408668809B7E84CBF1E9944409DA813A45120460339627230332B1F32B37255170864E82560588BC7349816F31489D5052C434F9844002722D57C42662D39AE5ABCBE731FB4B7CBF326634D36BFFB44004EB480';
wwv_flow_imp.g_varchar2_table(75) := '2447004D62ADFD3571EF5C5F7F45972A8857E19261100C1AF7F4FAC9240359D9F9902766F00B8B878A89C3EB5497295610B4EC182E2C8EC6631A4C8B79B4F3A9FA286B11CA2C6487CEBFFAFACBB0E5F5DDB442D089872C1E1180139648620470EEFC6578';
wwv_flow_imp.g_varchar2_table(76) := '6DDB3B62A6DF78277EA6B86217892B3833DDCBDB222E4B42C0142BC69103CA9E69221A5CC5C0D58CF3170C824BB1584A6E3102440016039A4A71F894DD95862678E7DD43B073D75E31443666FAB3738BC5955A4CE4D9D0395391B13F691963428772C8CE';
wwv_flow_imp.g_varchar2_table(77) := '29D28BC15B9C1D6FBEA7EA8CBA874CAB1BE9304FA02BEA91001180138632DD02D45F6980DAE75F53DDCBBFDE2EAEFA6FC3C953C6921C8A9357500AF9058330E88C8BF720808535E7170E16B720B1AF0B479D5FDBF636BCF4EB37542C10932B571B2CAC95';
wwv_flow_imp.g_varchar2_table(78) := '8A4A060122806450EA671A16480E66BCDFC761734E6E493F6B4C9C9D3163D89FAC7C894BED39458E58BA44DD82C1AC9E1399CEB02E0F38994E51D04204926B991656E8C7A232327381F5D2A071B92D4F5CF18BC5AC7B4666F42BC076E394292606B53AB2';
wwv_flow_imp.g_varchar2_table(79) := 'B2F2B5A0AD3EEA563CB0127084833AF7541913731E9902B39ECE53BC750810015887658F25E1845849E948282C1133ED9D0EAF8625A52360E0E03150243A7E8EB8E70707FFB0830D10320D18340AB0633A5835E008077546DD1103C4A2B01317F4512E24';
wwv_flow_imp.g_varchar2_table(80) := '01F0D89F17C57586001844BC088E953233C6003B9DE6B0D30502C65ABC9575255B1613575AC69C69023DC914101820161A2EE8F794D657F11D2CF683923629EF8CF5DB99EF09C026FB51B1698A80E06547FA8C2304E0943269DA16482D3F2210684B1F02';
wwv_flow_imp.g_varchar2_table(81) := '008794F1633B219DE540C06A29323AB21C796EDA91118053CA586D042A8F10700B011670E6B6D9190208078CE75BDD4294EA25043C8440B02D8D26019B47B61BAFB2F19011485442C02D049CEA338E8C00362CBF1F9734426E8149F5120276226043D9A1';
wwv_flow_imp.g_varchar2_table(82) := 'CE3E6343D1B1453A42009D559EEBF4C923040881DE1170ACAF3846008C81634AF58E2D9D2504A447E0B853123A46009C732200A7AC4AF5781B01072F968E11007066BC60DEDBE621E909011D015B020AA4DF080018DB0BF447081002891170B0AF383602';
wwv_flow_imp.g_varchar2_table(83) := 'E08A420490D8F49482100027FB8A630430E1BA0FF06B960AD9971020047A45A0A5B3AFF49AC8AA938E11C0F2E5452137100000066049444154CB45E76747AD129CCA2104DC46C08EFAC56AD9FBD1BE6247E9DDCB748C00D4AA19A7DB001508DA11023D20';
wwv_flow_imp.g_varchar2_table(84) := 'C0C1D13EE2280130856D03FA230408819E11E02C7D090022FC25A139178E36428010E88E008F64065FE81E6D5F8CA3238035BFA83E2D7AFF7EFBD4A19209016710B0A316EC1BEB7E7A4FEC3BE2EDA8C854A6A30480F5320EBF419F1C214008C422E046DF';
wwv_flow_imp.g_varchar2_table(85) := '709C00024C210288B53B1D11022A022C009BC1E13FC709204FB9BC53E8784238DA080142C040E0E4A74306EE360E9D09394E00AB572FC10FE03DE58C7A540B21603D023695F8E4B6E57739F21E40B3FC8E13805A79109E14BE98F3107BDA080142A023A8';
wwv_flow_imp.g_varchar2_table(86) := '447EE9060CAE1040CDCFAAF116E0B76E284C751202F221C05F7E66F5FD27DD90CB1502404503A0FC187D728480DF1108007FCC2D0C5C23806757CEC7A7025F714B71AA9710E80B0236E479A5B32FD85074E2225D2300142DC0D9B7D0274708F81501A604';
wwv_flow_imp.g_varchar2_table(87) := 'FFCE4DDD5D25806757CDDD07C09F771300AA9B10700F01FEFC9AD5F7BEEF5EFD00AE12002A1E0828DF147E9370B41102FE4180417344097EC36D855D2780679FB8FF23C6E0BB6E0341F513028910B0F23C53D8379F5B7DDF312BCBEC4B59AE13000A1DBE';
wwv_flow_imp.g_varchar2_table(88) := '14791C18ECC0303942C00708EC5CB36AEE4A19F4948200366CB83F126091AF0A40E8564080405B1A23A00EFD037F268B865210008281B7021CF88322AC08471B21908E08288CC303320CFD3570A521001468EDCA79B58204FE11C3E408019910B0421631';
wwv_flow_imp.g_varchar2_table(89) := 'D7F58D352BAB375951965565484500A89420811F0307FCAD001E922304D20401F6DF6B5654BBF6C45F4F204A4700286801BFB444F8BF138E3642C0F30870804DE387EEFF5B1915919200F027C3054AD6BDC0789D8CA0914C8440F208F0E70B95ACC5CB97';
wwv_flow_imp.g_varchar2_table(90) := 'E36BF193CFE5544A290900955FBDFA0B2D352BAAE701871FE0313942C02D04FA5A2F67F02F352BABEFC3B6DCD732ECCE272D01441567BC6655F57781335C368944E3684F08488F4018802D5EBBA2FADBC2E720F15F4062D974D16A56CD7D5A51F8ED00EC';
wwv_flow_imp.g_varchar2_table(91) := '30D01F21203502FC7D85F3DB6B56CE5D23B5989DC279820050D675ABE7BD95D5D65025C2DF170E5F2B263CDA08016910C036F96881523F6DDDAA798EBFDBAFAF2878860050C1A79EFA6A5BCDCAEAE591089B040C5EC4387284809D082451361763FC8D81';
wwv_flow_imp.g_varchar2_table(92) := '4064A2689BDFC309EC24F24893C45304A0A1F6DCCFE71E1113845F6400B3451CBE655878B41102CE22C0816D53804F5BBBB27A3E3EC9EA6CEDD6D4E64902D0545FB3B27AA760DDD98CC14C11F78C7021E1682304EC4400DBD81ABCF8AC5D39F7AE752BE7';
wwv_flow_imp.g_varchar2_table(93) := 'BD6767657697ED6902D0C059B3A27A972082AF70256B985831C037ACB8FE334B4D36F2D306818F45A7FF16B631D1D616E3C5271D344B0B02D00CB176F5172E891583FF10061A0BC03F270CF68438774A38DA088194111019B0EDACE09C7D56B4A931A2D3';
wwv_flow_imp.g_varchar2_table(94) := 'FF1BB631119F365B5A1180D92A352BE7BDB26665F5D784E1860738AB129386F8D291EDC26F36A7A33021A023C000DBC67671FC3D0804A662DB11EEE1B5ABE6A6ED63E9694B00C288FA86EF1E1493863F10C6BC53F8058204C6885B856AC6D83F03BE9390';
wwv_flow_imp.g_varchar2_table(95) := 'F3BD22B1A35F6515F5D1E61E026740B5397F5E6D039C554794C0586C1B6A1B5959FD68CD13F7619B704F42876AF6050174C55218FA6371AB50B766C5DC7FAA5939EFDE9A55F390ED2B84F15969666E4E565B60407B2052AE0482C3831999A3456319CF78';
wwv_flow_imp.g_varchar2_table(96) := 'E446CEF8948002D38005A693930F03B40DDA086D059C8F47DBA10DD1966853B42DDA58B88AA8CDE7DDABB6815573EB9E93E0F55C5DDBA913C7BE2480DE807DFCF1BB434F3D75DFD50D4FDC7F6EDD13F79E7AE6A75FFC443496A36B56DD7F70ED8A79FB9F';
wwv_flow_imp.g_varchar2_table(97) := '5D5DFD6ECD8AFBF690930F03B40DDA086D853643DBA10D37085BA24DD1B6BDD9DE7CCE2F612200BF589AF42404E22040041007148A2204FC820011805F2C4D7A12027110200288030A45F91B013F694F04E0276B93AE844017048800BA00428784809F10';
wwv_flow_imp.g_varchar2_table(98) := '2002F093B5495742A00B0244005D00A1437F23E037ED8900FC6671D2971030214004600283828480DF102002F09BC5495F42C084001180090C0AFA1B013F6A4F04E047AB93CE8440270244009D40904708F8110122003F5A9D7426043A112002E804823C';
wwv_flow_imp.g_varchar2_table(99) := '7F23E057ED8900FC6A79D29B10100810010810682304FC8A0011805F2D4F7A13020201220001026DFE46C0CFDA1301F8D9FAA4BBEF112002F07D132000FC8C0011809FAD4FBAFB1E012200DF37017F03E077EDFF1F0000FFFFBF511D3200000006494441';
wwv_flow_imp.g_varchar2_table(100) := '54030052E9A5C43E2C096D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10003581761597611734)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000237494441547801EC53DB6A1351145D33CD65B4994E7369126314AC4452695F8B227E82FD00BFC0777D52DFFC031FFD00F1C11B480505152C6894E2A5DA8A3E94';
wwv_flow_imp.g_varchar2_table(2) := 'DA07B13197D6689A993317679F36412B24E74C1F0A6542D63EE7ECBDF63A8B3D1CF5FC853BDE5E42C51EFF4203E104C209EC6E024E0B20ECE2290737E0FDC6E9E9131C9EFB2BB085400618DBC4D444115A3CC63175F2086CD609644295EFF2E0B016EAB5';
wwv_flow_imp.g_varchar2_table(3) := '757CFEB2CAD1F0F70EDB9097F23BA40D58661B572FCDE0DA9573FFE0F2C519306BD39794FB4B1B184928982865615A0EAEDF78C241FBB29F1B3E287739B1A50D948EE7A80FF5661B631983A3B9DE86AA28288D67794D26481BC8A4125CBF90D3512CA470';
wwv_flow_imp.g_varchar2_table(4) := 'B498463EABF35C2A293F026903A6C9F86514CE9E1AC799E963B4E5B06D9BAF3241CA80D9696165B5DAD3DF687540E826A8469CEE59641536C0FCB73F59CEC1B2DC9EEEB7EF3F41A084EB79304D0F93E53C884B3911081B488E44FC6F3E8664D2C0CBF995';
wwv_flow_imp.g_varchar2_table(5) := 'FFB42BF35F91491B3E270323212C0B61A63E1CE3971E3E94C6CDDB2FC06C879F2958CCC1ADBB1514F2693AC2D035BE8A046103CAB69AA22888C70FE0FEC385ED0C706FF61D344D83A26CB1B662AFDC77A3F6ADEE287AFE777EFF71193F1A361E3CFA8067';
wwv_flow_imp.g_varchar2_table(6) := '739FF0F4F912661F2F61ADC6B0B0B80CE2EC68EB7B143650AD3731575944ADE9221289231A1BC5AB376B78FDB68A68DCE0B96AC3E51CE2F6BDF5AFA2B001DB1B85E3E95087A2BDF6485403A19B18F26BC4216E3737681536304828683D34104E60FF4F60';
wwv_flow_imp.g_varchar2_table(7) := 'D0EBF8030000FFFF12AAB16E000000064944415403007A040B104BAA4AE50000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10003580882252611730)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECBD07905C477AE7F9BDAA6A57ED2DDA0068780F90040DE8A4999166A51B9908492BDD4A138A59C59E4E3ADD9D624FBA8BDB5885F636646EB5';
wwv_flow_imp.g_varchar2_table(2) := '2B77D249A35DAD7624CD8CC692E3FD0C871C820401100441588200E1086FBB1BDDD55DBE36B380061A40BD7CAFBACB3CF36B747555BDCCFCF2FB7E59A8F74FF3F2453EFCBF7CA1C003067C06F80CF019E033C067205C9F8188F0030108400002108040C8';
wwv_flow_imp.g_varchar2_table(3) := '0888200042D7E4040C0108400002104000F01980000420000108848E800E9811004D81070420000108402064041000216B70C2850004200081B013B8153F02E01607FE420002108000044245000110AAE626580840000210083B81D9F81100B324788600';
wwv_flow_imp.g_varchar2_table(4) := '04200001088488000220448D4DA8108000042010760277E34700DC65C12B084000021080406808200042D3D4040A0108400002612730377E04C05C1ABC860004200001088484000220240D4D981080000420107602F7C68F00B89707EF20000108400002';
wwv_flow_imp.g_varchar2_table(5) := 'A120800008453313240420000108849DC0FDF12300EE27C27B084000021080400808200042D0C8840801084000026127F060FC0880079970040210800004201078020880C0373101420002108040D809948A1F01508A0AC7200001084000020127800008';
wwv_flow_imp.g_varchar2_table(6) := '7803131E0420000108849D40E9F81100A5B97014021080000420106802088040372FC1410002108040D809D8C58F00B023C371084000021080408009200002DCB8840601084000026127601F3F02C09E0D2910800004200081C012400004B669090C0210';
wwv_flow_imp.g_varchar2_table(7) := '800004C24EC0143F02C0448734084000021080404009200002DAB0840501084000026127608E1F0160E6432A0420000108402090041000816C5682820004200081B013708A1F01E0448874084000021080400009200002D8A8840401084000026127E01C';
wwv_flow_imp.g_varchar2_table(8) := '3F02C09911392000010840000281238000085C9312100420000108849D809BF811006E2891070210800004201030020880803528E1400002108040D809B88B1F01E08E13B92000010840000281228000085473120C0420000108849D80DBF811006E4991';
wwv_flow_imp.g_varchar2_table(9) := '0F0210800004201020020880003526A1400002108040D809B88F1F01E09E15392100010840000281218000084C5312080420000108849D4039F12300CAA1455E084000021080404008200002D290840101084000026127505EFC0880F278911B02108000';
wwv_flow_imp.g_varchar2_table(10) := '0420100802088040342341400002108040D809941B3F02A05C62E4870004200001080480000220008D48081080000420107602E5C78F00289F192520000108400002BE278000F07D1312000420000108849DC07CE24700CC871A65200001084000023E27';
wwv_flow_imp.g_varchar2_table(11) := '8000F07903E23E0420000108849DC0FCE24700CC8F1BA520000108400002BE268000F075F3E13C0420000108849DC07CE34700CC971CE5200001084000023E268000F071E3E13A0420000108849DC0FCE34700CC9F1D2521000108400002BE258000F06D';
wwv_flow_imp.g_varchar2_table(12) := 'D3E1380420000108849DC042E247002C841E65210001084000023E258000F069C3E1360420000108849DC0C2E247002C8C1FA521000108400002BE248000F065B3E1340420000108849DC042E347002C9420E5210001084000023E248000F061A3E13204';
wwv_flow_imp.g_varchar2_table(13) := '20000108849DC0C2E347002C9C211620000108400002BE238000F05D93E1300420000108849D4025E2470054822236200001084000023E238000F05983E12E0420000108849D4065E247005486235620000108400002BE228000F05573E12C0420000108';
wwv_flow_imp.g_varchar2_table(14) := '849D40A5E24700548A2476200001084000023E228000F05163E12A0420000108849D40E5E24700548E259620000108400002BE218000F04D53E1280420000108849D4025E34700549226B6200001084000023E218000F04943E1260420000108849D4065';
wwv_flow_imp.g_varchar2_table(15) := 'E34700549627D620000108400002BE208000F04533E1240420000108849D40A5E34700549A28F6200001084000023E208000F04123E1220420000108849D40E5E34700549E2916210001084000029E278000F07C13E1200420000108849D4035E2470054';
wwv_flow_imp.g_varchar2_table(16) := '832A36210001084000021E278000F07803E11E0420000108849D4075E2470054872B56210001084000029E268000F074F3E01C0420000108849D40B5E24700548B2C76210001084000021E268000F070E3E01A0420000108849D40F5E24700548F2D9621';
wwv_flow_imp.g_varchar2_table(17) := '0001084000029E258000F06CD3E0180420000108849D4035E3470054932EB6210001084000021E258000F068C3E0160420000108849D4075E3470054972FD6210001084000029E248000F064B3E0140420000108849D40B5E34700549B30F62100010840';
wwv_flow_imp.g_varchar2_table(18) := '00021E248000F060A3E0120420000108849D40F5E34700549F3135400002108000043C470001E0B926C1210840000210083B815AC48F00A80565EA80000420000108788C0002C0630D823B1080000420107602B5891F01501BCED402010840000210F014';
wwv_flow_imp.g_varchar2_table(19) := '010480A79A0367200001084020EC046A153F02A056A4A907021080000420E0210208000F3506AE400002108040D809D42E7E0440ED585313042000010840C0330410009E690A1C810004200081B013A865FC08805AD2A62E08400002108080470820003C';
wwv_flow_imp.g_varchar2_table(20) := 'D210B8010108400002612750DBF81100B5E54D6D108000042000014F10400078A21970020210800004C24EA0D6F123006A4D9CFA200001084000021E208000F04023E0020420000108849D40EDE34700D49E393542000210800004EA4E000150F726C001';
wwv_flow_imp.g_varchar2_table(21) := '0840000210083B817AC48F00A80775EA84000420000108D4990002A0CE0D40F51080000420107602F5891F01501FEED40A010840000210A82B0104405DF153390420000108849D40BDE24700D48B3CF542000210800004EA4800015047F8540D01084000';
wwv_flow_imp.g_varchar2_table(22) := '02612750BFF81100F5634FCD10800004200081BA114000D40D3D15430002108040D809D4337E04403DE95337042000010840A04E04100075024FB51080000420107602F58D1F01505FFED40E010840000210A80B0104405DB0532904BC42A0E01547F003';
wwv_flow_imp.g_varchar2_table(23) := '02A12350EF801100F56E01EA87408D09140A0599991E93C9890B7273FC822467C6259FCFD5D80BAA830004EA4D000150EF16A07E08D49040369B9289B1F76426714332E919C96692323D755D098173A2D36AE80A554120E404EA1F3E02A0FE6D800710A8';
wwv_flow_imp.g_varchar2_table(24) := '0981746A4AA66E5E927C2EFB407DFAD8E4C445D1791E48E4000420104802088040362B4141E05E02BAB79F98BC5AF2E43F9BB3A0A601F468403A95983DC43304205025025E308B00F0422BE00304AA482095BC59ECF9170A79C75AF2F9AC4C4D5E965472';
wwv_flow_imp.g_varchar2_table(25) := 'D2312F192000017F134000F8BBFDF01E024602C99989E21CBF9B93FF1D4385822A734D92D3E3770EF1020210A824016FD8420078A31DF0020215265090E4CC78F1445ED6C9FFB617BACC74E27AF16A81DB87788200040246000110B006251C0868027A2E';
wwv_flow_imp.g_varchar2_table(26) := '5F3FF4EB853C6612372431756D2126280B0108DC47C02B6F11005E6909FC8040050814F4F0BDEAB927D5D07F05CC154DA494ADC4E4D5E26BFE400002C1218000084E5B120904D490FD0D713B77DFD2D228D168832B6AA9E44D9956C2C255663241000206';
wwv_flow_imp.g_varchar2_table(27) := '02DE49420078A72DF004020B205010DD4B777BF2EFEBEB95F73FBB557E583D4686075CD5AB6D23025CA12213047C410001E08B66C24908D813B835EC3F26BA976E9FEB6ECA405F8F6C7B7C83C4E371E9E96A9587B7AC968181BEBB190CAF6E89801B861C';
wwv_flow_imp.g_varchar2_table(28) := '2441000226025E4A430078A935F00502651398BD646FCC55C9C145FDF2CC535BA4B9F1EED07F7353933CBD6D930C0DF5BBB2919C1E2B6E25EC2A3399200001CF12400078B669700C026602BAE7AF87FDDDF6FC878606E4C9C7D74B24F2E07FFB6824225B';
wwv_flow_imp.g_varchar2_table(29) := '1F5A274B960C992BBD9D3AA3444062F2CAED773C410002EE08782BD783DF04DEF20F6F20008192040AC5057F29973BF60DAB79FE6D8FAD97683456D29A3ED8DCD4200F6F5A25C3C38BF45BC787AE9B35018E98C80001CF12400078B669700C02F604A613';
wwv_flow_imp.g_varchar2_table(30) := 'EE57FB2F1E19946D8FAA937F246A6FF0764AA39A1AD8F6D8061971290292D3E34A88B89B7EB85D054F10082D01AF058E00F05A8BE00F041C08A49237C5ED75FE23238BE4B1AD6BD5B0BFF3C97FB6DA8865C9D687D7CAB2D1E1D943C6672D02DCFA633444';
wwv_flow_imp.g_varchar2_table(31) := '22042050530208809AE2A632082C8C40F1AE7E7A67BE42C1D1D0881EF67F7483445DF4FCEF37D6D810932DC5E98081FB931E785F28E48B7B046432330FA4710002109825E0BD670480F7DA048F20509240263D2DC585772E4EFECB4617CB136AD8DFB2AC';
wwv_flow_imp.g_varchar2_table(32) := '92B6DC1C6C88C5E4C9C736CAD2A52E4602944F53372F0B22C00D59F240C01B041000DE6807BC808091402E9791C4D455D1B7EB35665489236AFEFE912D2BCB1AF657C54AFE5A96250F6F5E25A3A32325D3E71E2CE4733233755DB4AF738FF31A021010F1';
wwv_flow_imp.g_varchar2_table(33) := '22030480175B059F203087803EE94F4E5C907C2E3BE768E9978B16F58A5EC41799C7B07F698B227A2460CBC65532D0DF6397E5CEF16C36257A24404F0BDC39C80B0840C09304229EF40AA720008122017D22D5C3FE6E4EFE1D9D1DF2C4D6F56259F31FF6';
wwv_flow_imp.g_varchar2_table(34) := '2F565AE24F6343B4282CDA5ADB4AA4DE7B28A7444062F2AA14D4B4C0BD29BC8340580978336E048037DB05AF2050249098BA2699B4F3E2BAA6A60679EAB10DD2D8D8582C578D3FDAF6635BD749BCA5C5D17C3A3525FA2E828E19C9000108D48D0002A06E';
wwv_flow_imp.g_varchar2_table(35) := 'E8A918026602FAD2BAB48B8D7E1A1A63F2C4A39BA4AD2D6E365881D4DE9E0E7968CB3A89469D2F2BD49B04E94B162B502D2620E06B025E751E01E0D596C1AF501348A712329370BEE98E6559B275CB7A353FDF5D335EC383DDF2F043EBD45483F3D7871E';
wwv_flow_imp.g_varchar2_table(36) := 'C1D0EB026AE61C15410002AE0938FF0F766D8A8C1080402508E4F3B9E275F58542DED19CDEBF7FF148BF63BE4A6758B66491AC5BB7C2D96CA120D3935745C7E49C991C10082201EFC68400F06EDBE0590809E893FED4CD4B92CF651CA35FB57254464707';
wwv_flow_imp.g_varchar2_table(37) := '1DF3552BC386354B64C5F2258EE6F508805E1428E2BC7991A3313240000215238000A8184A0C4160A1040AC57DF5B399A4A3A191A101D9B271B958EA9F63E6AA65B08A7B048C0C0F38D69049AB298DE971C77C648040D00878391E0480975B07DF424520';
wwv_flow_imp.g_varchar2_table(38) := '397353F4BEFA4E41F7F776A939F8B56259F5FFEF6B59963CBE75BDF4299F9CFCD66B1A32E969A76CA4430002352250FF6F901A054A3510F032815C36ED6AD15F6BBC551EDDBA41F4AD7BBD128FBE22E0F147374A67479BA34B7A51A08ED5312319201008';
wwv_flow_imp.g_varchar2_table(39) := '02DE0E0201E0EDF6C1BB1010D00BE412935744CFFF9BC28DC662F2D4131BA535DE6CCA5697B4784B933CF2D03A6972D88740AF6D984E5CAB8B8F540A0108DC4B0001702F0FDE41A0E60466A6C7249B4D19EB5523EDF2F8231BA4B3D3B9976D3454C544BD';
wwv_flow_imp.g_varchar2_table(40) := '47C0D6ADEB1C6BC8A4678A6B1D1C339201023E27E075F711005E6F21FC0B3401BD518E9BCD7ED6AE5926C3C3BD9E673134D02BCB972D76F4538B9E746ACA311F19200081EA114000548F2D96216024706B38FC86E3D07F676787AC5D3D2AF55DF16F0CE5';
wwv_flow_imp.g_varchar2_table(41) := '4EA26559B265E30A696F7718A9D0FB03246E483EEF7C83A33BC67901015F11F0BEB30800EFB7111E0690809EEF4F4C5D95423E678CAEA121264F3CB641622EB6DE351AAA61622C1693C7B6AE2FDE45D0546D51004DB11EC0C488340854930002A09A74B1';
wwv_flow_imp.g_varchar2_table(42) := '0D011B0233D3E38E37F9519D69D9B87EB574D4608F7F1B37E77DB8A7AB5D1EDEB2D6B17C3A517F4D7C000010004944415495903453018E9CC8E03F027EF01801E08756C2C74011D08BE09233CE9BE22C1B1D9195CB877C1BFB922503B2787891A3FF5C1A';
wwv_flow_imp.g_varchar2_table(43) := 'E888880C10A80A01044055B0621402A509E8396F7DC99FA839F0D2396E1D6D6F6F5773E92B6FBDF1E95FBD6661EBC36BA5B3A3DD18819E06293231E62211027E22E00F5F1100FE6827BC0C0881A41AFAD722C0144E2C1695471F5E237A2EDD94CF0F697A';
wwv_flow_imp.g_varchar2_table(44) := '0DC3A64DABA4B1B1C1E8AEBE0C32393361CC432204205059020880CAF2C41A046C09A4D57C773279D3367D3661CD9AE5D2DBD339FBD6F7CF83FDDDB26EED72C738A613D71DF74370344206087880805F5C4000F8A5A5F0D3D7040A6AC85F9FE09C86FE87';
wwv_flow_imp.g_varchar2_table(45) := 'D59CF99A954B7C1D6B29E7572D1F96C1457DA592EE1E538C6612630A51FEEE315E41000255238000A81A5A0C4360964041A655EF565FF6367BA4D4737373B36C5ABF5CA211AB54B2AF8F5956444D6BAC95B6F6B8310E7DD7403D4D62CC4422043C4DC03F';
wwv_flow_imp.g_varchar2_table(46) := 'CE2100FCD35678EA53027AE83FE530BFAD2FF97BF4E175D2EEC34BFEDC364B7373936C5AB74AA251F3D7CECCCCB8E47219B766C9070108CC9380F97FE23C8D520C0210B845209FCFB9BAC5EFB2D1C532B8A8FB56A100FF1D1EEA95A58B87CD11AAA980E9';
wwv_flow_imp.g_varchar2_table(47) := 'E2064105733E5221E041027E720901E0A7D6C257DF1148BAB8D14F7B6B5CD6AD59A6620BDED0BF0AEA9E5FCBB264DDDA51350A10BDE7F8FD6F32E969C9A493F71FE63D042050410208800AC2C41404E612C865D3E266D5FFEAD5CB25DED238B768A05FC7';
wwv_flow_imp.g_varchar2_table(48) := '5B9A64D386558E31EA75137A8F00C78C6480806708F8CB110480BFDA0B6F7D4240AFFA9F99BE21A286B34D2E0F0CF4CBE8D27E539640A6AD5C312CBDBDBDC6D872D95471F1A43113891080C0BC092000E68D8E8210B027A057B3EBC57FF6394422D1886C';
wwv_flow_imp.g_varchar2_table(49) := 'D9B8522256F8FE1B5A62C98675CBA5A1A1C1844852C949F606301222D14B04FCE64BF8BE79FCD642F8EB3B02BAF79F9C76DEEB7FE99211E9EC305F16E7BBE0CB7078A0AF43562C77DEF340EF10A89996619AAC1080800B0208001790C802817208CCB858';
wwv_flow_imp.g_varchar2_table(50) := 'F8D7D6D626EBD78C9663369079D7AE5E2C4D4D4DC6D8D26A14408FA81833910881BA13F09F030800FFB5191E7B9880DEECC7E99A7FEDFEE68DAB43B5F04FC75CEAD1108BB95F10E8B09EA2947D8E410002F6041000F66C48814099040A726BB8DABC95ED';
wwv_flow_imp.g_varchar2_table(51) := 'A2C14532B828387BFD9709E981ECA34B06A4AF6FE081E3730FE47359C5D6795A656E195E43A09604FC581702C08FAD86CF9E2490C9248B8BD68CCE59966CDEB822940BFFECB85896251BD72F735C10989C1E17D602D851E43804CA278000289F19252050';
wwv_flow_imp.g_varchar2_table(52) := '9280DEF4A75030F7FE572C1F95CEB69692E5C37CB0AFA75556AF1A3522D06C356363261221501702FEAC1401E0CF76C36B8F11C8AADEBF1E0130B9D5D9D92EAB570E99B2843A6DE9E27E89C79B8D0CB82CD0888744089445000150162E3243A03401BD6B';
wwv_flow_imp.g_varchar2_table(53) := '9D1A9F2E9D78FBA8DEEB3FDEDCA0B2E57814EE679097E6A606593232206A46E036B1079FF2F9ACE8AB021E4CE10804EA47C0AF352300FCDA72F8ED1902E9D494E811002787DE39F69E7CF59B3BE43BDF7F5DBEF3E29E5BCFFA350FF9F60BBBE56BDFDA21';
wwv_flow_imp.g_varchar2_table(54) := 'EF1C7F4F892333493D0A90CFE7CC99488500041C0920001C11910102F6040A8582A49237ED33DC9792CBE524919891C4D4B4149FF56B1E323D9D14CDE63E5C25DF160A799949DC5069DC2D5041E0B7EE04FCEB0002C0BF6D87E71E20A07BFF4E73FF1E70';
wwv_flow_imp.g_varchar2_table(55) := '33702EA4529392CB660217170141A096041000B5A44D5D8123A02F4D731CB30E5CD41E08488DBCE83D173CE0092E849C809FC34700F8B9F5F0BDAE04D2A984E472E9BAFA10E6CAD3A929C96466C28C80D821B02002088005E1A3705809E879E8E40C3BD3';
wwv_flow_imp.g_varchar2_table(56) := 'D5B3FD751BA466DCAFBFA8A7AFD41D5402FE8E0B01E0EFF6C3FB3A1148ABDE7F3693AC53ED543B4B20939E16AE0898A5C13304CA238000288F17B921A00814C4CD0D7F5ADBE23230D0CD63BE0CFA7BA44D3154C06D7F8BA300655C85616B880408CC8380';
wwv_flow_imp.g_varchar2_table(57) := 'DF8B2000FCDE82F85F730299B4BE64CDBC02FDC73FF8A87CE23FFF9AFCED9FFF8AFC171EF362F0B7FFDFBF948FFDD5AFCA8FFDE8C3C636D69761E673E6F6301A201102212580000869C313F6FC0924672644F73CED2CB4C69BE4879F5E2B91DB5BDA592A';
wwv_flow_imp.g_varchar2_table(58) := '230F91721988FA696C88CA873EF8B0718BE07C2E2BA9D494CACD2F046A49C0FF752100FCDF864450430239D5D3CCA413C61A57AD5C2CAB96F719F390E89EC0F060876CD9B4DC58408F02140A6C0C6484442204EE238000B80F086F216022904A4E9A92A5';
wwv_flow_imp.g_varchar2_table(59) := '41F5583FF8FECDA27BAEC68C24BA26A0597EE0873618F3E7D52800F708302222B1C20482600E0110845624869A10C865D39272587036D0DF251BD70DD5C49F3055B27EF522195DBAC818B29E9A116114C008894408CC21800098038397103011C864A6A5';
wwv_flow_imp.g_varchar2_table(60) := '60B8098D9EF27FDFB39BA5BBD37C4B5B531DA49526D0DADA283FFCCCC6D289B78FE67269C92A9176FB2D4F10A822816098460004A31D89A20604D2A969632DBDBD5DF2C456F35CB5D10089B604F482CAF73FB3463A3B5B6DF3E804BD3F837EE601010838';
wwv_flow_imp.g_varchar2_table(61) := '134000383322070454CF3225B96CCA48422F541B5DDC65CC43E2FC0974B437C9138FAE311A286E0C94E39240232412174C2028061000416949E2A82A81D4CC4D2914F2B675C4A21179F649F3C9C9B63009AE0868C61F7CBFF3340077677485934C101004';
wwv_flow_imp.g_varchar2_table(62) := '001F02083810D05BCDA61DAE33D797FEAD5EC1A57F0E28179CBC64A44BD6AD5D666FA7509074CA7C99A67D615220E0864070F2200082D39644522502D9CC8CB1F7AFABFDD1F76F96B678A37EC9A38A049A9B62F2933F66DE1950B797166D557403D31008';
wwv_flow_imp.g_varchar2_table(63) := '04010440209A9120AA49C0A947B97871BF6CD930524D17B07D9B8025963CB47158BA0C8B01F5544D3A65DEAFE1B6399E20503681201588042918628140A509643349D10F93DDA71E5F2B037DE6D5E9A6F2A49547405F12F8A3EF378F02A492538EA336E5';
wwv_flow_imp.g_varchar2_table(64) := 'D54A6E08048F000220786D4A4415249051C3FFF97CD6D66277579B3CB175856D3A099527A02F09FCE0FB3748434383AD717DC5468EAB016CF990305F02C12A870008567B124D8509641C16943DB465A5AC5ADE5BE15A31E744408FB86C7D7895319BBE24';
wwv_flow_imp.g_varchar2_table(65) := 'D098814408849C000220E41F00C2B72790CFE7249B4BDB6750298F3FE2CFDE7F2E5F90543A27E96C4EF205FF6D9F5B1C05789FF9FE0099B4F3E24DD584FC42C03581A065440004AD4589A762048A77FD339C1C47867B64F9A8F77BFF63134939F8F665F9';
wwv_flow_imp.g_varchar2_table(66) := 'E4E7DF90FFF897DF953FF8D3AFCBBFFFA32FA9C7F3F2EFFEF039F5FC65F9C33FFB86FCF15FBF20CF7D75BFEC3F7249C626662AC6B15A8656AF1C90E6E6265BF33925DEB219F3E64DB6854980400808444210232142A06C020575E24F3B5DFBBF7C488606';
wwv_flow_imp.g_varchar2_table(67) := 'DACBB65D8B02BA577FFED24DF9EC97F6CA7FFA8BAFCB1FFDF9F3F2C5AFBE22BBF71C9637DF3A2E87DF3E23EF1CBF20C7DEBD28878E9C96BDFB8EC9CE5D07E5D39F7F517EEF8F3EABCA7C439EFFDA3E397B61A216EECEAB8ED678A33CF290FD088CBE6F43';
wwv_flow_imp.g_varchar2_table(68) := '51C4CDCB3A8520703F81E0BD470004AF4D89A802040AF9AC38F51E37AC5B52819A2A6FE2F2D52979EE2B6FCAEFFEC167E5735FD8AE4EF4676566C63C9531D70B2D7EDE397E563EF5B91FC81FFEC917E5F9AFBE29576F786F731DBD33E0D62DCBE7BAFEC0';
wwv_flow_imp.g_varchar2_table(69) := '6B3D0DF0C0410E400002450208802206FE40E05E02FAC451306DFD1B8BC9AA1503F716AAF33BDDEBDF77F09CFCC11F3F2F9F7D7EBB8C4F2CFCA47DE5EAB87CEAF32FCBEFFFC72FC8F69D27EA1CE183D56FDA302CFA2E8C0FA6DC3A92CB6724CFD500B760';
wwv_flow_imp.g_varchar2_table(70) := 'F07741048258180110C45625A60513C864668C36366F1895FEDE36639E5A26265359F9EAB7F6AB1EFBF372FEE258C5AB3E77E1BAFCCD7FFB967CF99B6F493697AFB8FDF91AECEB6995C1453DF6C5D5548E1673F61948814078092000C2DBF6446E4320AF';
wwv_flow_imp.g_varchar2_table(71) := '87FF1DEEFCB769C352696F6BB2B150DBC353D369F9A7CFBF261FFFF44B92CF576F457F2A9529D6F10F9F7A55B4E0A86D94A56B8B462D7966DBBAD289B78F6A31575042E0F65B9E20300F02C12C82000866BB12D50208E81E63219F335AD8B076C8985EAB';
wwv_flow_imp.g_varchar2_table(72) := 'C4643A2B9FFBE26EF9C677F6D6AA4AF9E677F7CAA79FDF55B3FA4C15E9AD811F7D64995811CB365B263DAD8451D6369D04088495000220AC2D4FDCB604F409A36098FF5FB17C507A7AEA3FFCAFE7FC5FDA7E54BEFEED376C63A95682AEF32B6ACAA15AF6';
wwv_flow_imp.g_varchar2_table(73) := 'CBB13BBAB847DAE2F65B31EBB6CC65DD2F822CA76EF286834050A3440004B565896BDE04B2D9A4B1EC9A9523D2DF1B37E6A945E2DBEF5C92BFFFE4F75D57D5DFDB21CF3EB5597EE917DE2FBFF13FFFA4FC9FBFF9B3C5877EAD8F3DFBD4261557872B7B05';
wwv_flow_imp.g_varchar2_table(74) := '35A4FE99E75F917D87CEB9CA5FCD4C4D4D31D9BC69D45885BE43A0310389100821010440081B9D90ED09E4D5D0BF7ED8E71059BF6EB158EA9F294FB5D36E8CCFC8C7FEE945570BF2FAFB3AE5677EEA69F9C8877F54B63DBE4A8687BA25DED228C5102C29';
wwv_flow_imp.g_varchar2_table(75) := 'BED6C7B63DBEBA98E7677EEA29E9EBED14A71FBD26E0139F7959A667324E59AB9A1EB12CD9F6E84A631D5946008C7C483411086E1A0220B86D4B64F32090CDA8DEBFEADDDA15D543FF2B97F5D925D7ECF8EEBD27E5F4992B8EF53DB479957CE4977E4456';
wwv_flow_imp.g_varchar2_table(76) := 'AE5824C513BE38FC2841B072C5A0FCCB0F7F401EDA6C3EA96A4BDA87EF6F7F5BBFACEB63D3FA218946EDBFCEF2B98CE4D4A3AE4E5239043C46C0FE7F8CC71CC51D08D48240C6E1F2BF55CB87455F7A560B5FECEAB87A3D21DFF8F61E31E89462D1A7B66D';
wwv_flow_imp.g_varchar2_table(77) := '920F7E60B3B83AF1CB7D3FAA57FDC10F6C91A7B66DBC2FE1C1B75FFEFA2EB951E7AD83BBBB5A64E96225721E74AF78245FC809D3004514FC29934090B3230082DCBAC4561601DD4BCCEA11004329BDFB5F5363D490A3FA496F1E38E378ADFF230FAD96A7';
wwv_flow_imp.g_varchar2_table(78) := 'B7AD5EB0334F6F5B230F2B5B264337C612F2E2F6A3A62C554FB394CA79FC5143BC4A2D65D2E6BD1DAAEE241540C0630410001E6B10DCA91F815C2E6BDC35CEB222F2F0E6FA6EFF3B9948CB2BAF9987DC07067AE447DEB7A962207F54D9EAEFEB36DA7B6D';
wwv_flow_imp.g_varchar2_table(79) := '777D058076EEF1ADCB24629806B8B5B8B37AFB24681F78048D40B0E3410004BB7D89AE0C02B95C5A0DABDBEF72B76AE5B0B4B7359761B1F2592F5DBE29172E5E371A7E66DB0663FA7C129F7DCA6CF3D2A51B72EEE2CDF998AE5899154B7B54FBB4D8DACB';
wwv_flow_imp.g_varchar2_table(80) := '6B8197B76F5FDB82244020A0041000016D58C22A9F40CE6191D8EA1543128F37946FB882258E9FBC2C63E3F67BFC0FF475C98AE5FD15ACF196A915CB07445F4D70EBDD837FD399ACEC3BF0DE8309353C62A96FB365A38B8C35E6F36C08640444E23D0482';
wwv_flow_imp.g_varchar2_table(81) := 'FE46FD97097A88C407017704F26A04C094737051A73437C64C59AA9E76F2B479E5FFDA35D59BA258BB66A96D7CB95C5E4E9EBE6C9B5E8B044B2C59B96C9158967D6D39872D9EED4B920281E011400004AF4D89681E040A8582E4D410B1A9E8D0609729B9';
wwv_flow_imp.g_varchar2_table(82) := '2669C9947947BBC52395EFFDCF06B664A46FF665C9E7CB57274A1EAFE5C1A54BFA241AB55FA4E934CA534B5FA9CBEB0482EF1F0220F86D4C842E08E454EFBF60D8FE579BE8F7C0DDFF666692DA15DB477757AB6DDA42139C6C4FDE9C5E68150B2EBF4A4D';
wwv_flow_imp.g_varchar2_table(83) := '7F44230601904D4B3E6FBECFC3829DC000047C420001E09386C2CDEA12D097FF9904407373A3B434D777FE3FAB50B13418000010004944415486D967665246102D2DD59BA2686931C79F4CA65CED4C680C608189BDDDAD62194700B400601DC0023187A2';
wwv_flow_imp.g_varchar2_table(84) := '7818828C8421486284801381AC9E1B56D30076F956AF1C96E63A0B8048C452F3DB969D8BB78E57F32A3707DBB97C5E0DBF3BF877CBCBAAFD6D6A8A1A172BE6D5344F4E8D0254CD010C43C0470410003E6A2C5CAD0E81823AF13B9D14562C1F94A63A2F00';
wwv_flow_imp.g_varchar2_table(85) := '8C589612214D46083349F31A016361874427DBADF116B1D43F0733554DD6F50F0FF618EBC83B5CED612C4C62480884234C044038DA99288D040AC60D8074D1A1455D4A00D8CF2DEB3CB578B4B4980580DE95AF5A7E5CBF316534DDD11937A6D72A71F968';
wwv_flow_imp.g_varchar2_table(86) := 'BFB1AA1C02C0C887C4F010400084A7AD89D48640A190376E00645911593C6CDE09CFC674C50F3737351A6D9EBF60DE24C858D821D1C97667679B8385DA242F19E991C606FBB51079F602A84D43F8B896B0B88E00084B4B13A72D81BC9A17B64DBC9DD0DD';
wwv_flow_imp.g_varchar2_table(87) := 'E58DDEEDF0907978FB9DE3E76F7B5CF9A76327CE1A8D2E5F6AEE791B0B573071C568AFE8F5127626F3C5AB000A76C91C87406808200042D3D4046A4720EFD023ECEBEB90E6A606BBE2353DBE7AC522E3C9EDCAD51B72F2CCB58AFB74E2D455B972C5FE3A';
wwv_flow_imp.g_varchar2_table(88) := '7FDDE37E78F3D28AD73B1F83BD3D716934B557A120853C5B02CF876D38CA84274A044078DA9A486D08E41D04C0B2A503D258E73B00CEBABE78B84B56AF1C997D5BF2F9D5D70E963C3EEF83AAB3FCEA4EB3CDC145BDB26A79CFBCABA864C18658547ABADB';
wwv_flow_imp.g_varchar2_table(89) := '6D4DEA299F7C7114C0360B09100805814828A22448081808384D012C19E995B6B879EEDD60BEA249DD9DCDB2EDF135469B57AF8ECB8B2F1F32E62927F1851F1C946BD7EC7BFF9625F2E4136BC452FFCAB15BCDBC23437D46F3B95CF5AE9630564CA2E709';
wwv_flow_imp.g_varchar2_table(90) := '84C9410440985A9B584B12C83B8C008C38CCBB97345AC583DB1E5D21036A5AC254C5BEFDC7E5B5DDC74D595CA5EDD8754CF61F7CD798B7B3232E1FFAE026639E5A278EEAF5085A9994A8584D0048DEC5BA8F12453904814011400004AA3909A65C02D96C';
wwv_flow_imp.g_varchar2_table(91) := 'CAF164B078A4BB5CB355CD3FBCA85D7EFC9F3DEA58C7CEDD87E48597D4D0BD1AC277CC7C7F06354FFEC24B0764D7EB87EF4FB9E7BD3EC77EF0471E95AE8EFADE26F91EA7D49BE5A3FD627BC5848A2D571C01980F18659CDF0013085768088070B537D1DE';
wwv_flow_imp.g_varchar2_table(92) := '47A090CF4BBE60BF377C2412911E8F5C0130D7F5F73DBD46160FF7CE3D54F2F57ED57BFFC4675F9493A7DD2F0CD40BFE3EFE999754CFFF44499B730F0E2DEA917FFE530FCF3DE489D7A38BBBA521667F29604E8D00149410F084B33801813A114000D409';
wwv_flow_imp.g_varchar2_table(93) := '3CD57A8340419DFCF3860561EDEDED128D7AEFBF496F775C7EFA27B6B98278F5EA847CE9ABAFC8A73EFF8ABCBEF7A45CB8382ED3336A0E5C7780D54950BF3E7F615CA59D904F7DEE15F9F2D75E35CEF9CF56DAD818935FF8B967554FDBFE443B9BB7D6CF';
wwv_flow_imp.g_varchar2_table(94) := 'DD5D2DD2E0B0170002A0D6ADE2FDFAC2E6A1F7BED9C2D602C45B5702C593BF3A09DA39D1DE1E17CBB2EC92EB7AFC03CFAE969FF9E9A75DFB70E9D2357965C77EF9CC732FC97FFEBB6FC89FFDD597D4E3CBC5D79F7DFE259576402E5D763752605996FC0F';
wwv_flow_imp.g_varchar2_table(95) := 'FFEC7179DFD32B5CD75FCB8C3125DA1A1BED2FDD2C14459F5640B5F48ABA20E02D0208006FB507DED498C0AD13817DA5F19626CF0A808658447EE9E71E930FB9580F601FE1FC52B63DBE563EF22FB689A5FECDCF42F54B35AA110ABB5AF442404600ECE8';
wwv_flow_imp.g_varchar2_table(96) := '84F578F8E2460084AFCD89780E817CC1BC214C67478B44AC39053CF6B2B1212ABFF2E167E4FD3FB4B9269E5996258F3EB25A7EEB377E4CA25E06A368B4341B2EDD54A33E0587B65726F88540A009200002DDBC04E748C0E124D0DFD72E96C74F745A04FC';
wwv_flow_imp.g_varchar2_table(97) := 'C6BFFA80FCC2CF3E23D55CAFA04FA8BA8EDFF9ED9F145DA723DB3A67683609803AFB46F5DE2310468F1000616C7562BE43C0A917A887915B9AEDE792EF18AAF30B7D42FEF03F7F42FEB75FFB09E9EA6AADA837961A011918E8945FFF573FAEA61C1E5723';
wwv_flow_imp.g_varchar2_table(98) := '22EA40456BA88EB1786B93D170216F1EFD31162611020120800008402312C2FC09E41D4E02ADF126F1FA50F7DCE83FF0CC6AF97FFFDD2FCA877EEC3131EE873FB790E1757B7B8BFCC48F3F217FFC7B1F96F73DBDCA90D37B497AC4C2E455A1607FF9A7A9';
wwv_flow_imp.g_varchar2_table(99) := '1C69412410CE981000E16C77A2BE4DC0690420DED2783BA77F9E861775C8AF7DE487D449FB97E5C73EF8987476B6893E19BA991ED0799A9A1A6468B057898827E4F7FEEDBF905FFDE567A4B3BDD93F006E7BDA645804A8B33002A029F00833010440985B';
wwv_flow_imp.g_varchar2_table(100) := '9FD825880260B659471777C96FFCCA0FC93F7CF457E5F77FF717E5177FFE87E5C9C7D7C9E60DCB64E5F241D1EB1B8607BB65D58A21D9B271B93CB56D9D7CF87F7C9FFCC91FFCB2FCCD9F7E4489886764F9D2EE5973BE7B8EB7384C0138ACFFF05DC0383C';
wwv_flow_imp.g_varchar2_table(101) := '6F02612D8800086BCB13779180E570195B8B0F47008A81CDF9A3635CB5AC577EFEA71F917FF3AF3F24BFFF3B3F2B7FFA07BF24FFF52F7E553EFAA7BF227FF2FBBFA87AFA3F23FFF76F7E487EEE271F9625C35D734AFBF7A59EBE3179EF24FE4C65498340';
wwv_flow_imp.g_varchar2_table(102) := '1008200082D08AC4503502B158B46AB6315C5D02F17883B4C6ED4701F45E00C20F0424BC081000E16D7B2217E79DE0FC7005000D599A809E02B02CAB74A23A5A2838B7BFCAC62F04024B000110D8A6253037049C7A812DCDDEDBE7DE4D5CE411195CD42E';
wwv_flow_imp.g_varchar2_table(103) := '11D31E0E08003E2622126608088030B73EB13B12686E6A70CC43066F12686C308B3727F1E7CDA8F00A0295238000A81C4B2C058C801E3D6E68640D805F9BB5A5B9C16104808D80FCDAB695F33BDC961000E16E7FA23712B01CAE11301626B1CE049A9A62';
wwv_flow_imp.g_varchar2_table(104) := '625996AD17CC00D8A2212124041000216968C22C9F40AC212A2C142B9F9B574A34AAD19B06E334008B00BDD256F5F223ECF52200C2FE09207E5B02BA87C829C2168FE7130A7937ADE7268FE743C54108CC8B0002605ED8281414029658B6A1E4B239B12C';
wwv_flow_imp.g_varchar2_table(105) := 'FB74DB82247882403A93936C2EE7E00BEDEB0028C0C9848600E033106202E62FFFE2F0BF1E060831213F879E4C662597352DF433B7BF9F63C77708B82180007043893CA125A07B91A10DDEE781A73359E31A0E06777CDEC00B749FE22208003E05E126E0';
wwv_flow_imp.g_varchar2_table(106) := '7016D0BDC87003F26FF463E3D30ECE5B0EE9244320D8041000C16E5FA25B20819964668116285E2F02E3133392372C04B42C0440BDDAA6FEF5E281268000D01478849680D3290001E0DF8FC6F44C5AA6124943004EAD6F284A1204024000011080462484';
wwv_flow_imp.g_varchar2_table(107) := '051070E805CEA893C802AC53B48E04A6A7D3E6DA1DDADE5C98543F13C0F75B041000B738F037A4042CCBDC0B4CA6B22125E3FFB0134E02C0FF2112010416440001B0207C14F63F01F37F81549A35007E6D63A7B68B58E6B6F76BDCF8ED4480F45902FC0F';
wwv_flow_imp.g_varchar2_table(108) := '9825C17328095811F37F01C761E45052F347D0C9A4790AC0A9EDFD11255E4260FE04CCDF7EF3B74B4908F88280E5D00B4400F8A2194B3A99984E953C3E7BD0A9ED67F3F11C2C024473970002E02E0B5E85904024123546AD4F229309734FD26880C4BA11';
wwv_flow_imp.g_varchar2_table(109) := 'D05701982AB72C73DB9BCA9206812010400004A1158961DE049C04C0F5B12911B6039E37DF7A169C9E365D0228E2D4F6F5F49DBAAB4500BB73092000E6D2E075E8085896F9BFC0858B3784FBC5F9EF635150AD3695304F0188C31520FE8B1A8F21501E01';
wwv_flow_imp.g_varchar2_table(110) := 'F3B75F79B6C80D01DF11B01CA6002626A6259B75BAA39CEFC20EBCC389E98CCCCC1804803AF95B0EE22FF09042182021DF4B0001702F0FDE858C803E09E8875DD8E94C5AD80BC08E8E778F5FBD9E905CCE5EB859A2FE2911E0DD08F00C02D5278000A83E';
wwv_flow_imp.g_varchar2_table(111) := '636AF030816C7A464DF1DBDF32369FCBC8E52B931E8E00D74A1178EFDC985100140A7949A7A64A15E558600910D8FD041000F713E17D680864B3294926271CE3BD72EDA6631E32788BC0F90B63924A9937714ACE4C484609406F798E3710A81D010440ED';
wwv_flow_imp.g_varchar2_table(112) := '5853938708E82FFEC9F10B92CF396FF57BF5DAA424D3CEF93C145EE85DB97069CC38B2A301E9B69FBA7949329919FD9647C00910DE830410000F32E148C009A45309494C5D713C41CC623877E1863A49D84F13CCE6E3D93B04AE5C751ED9D1DEEAA980A9';
wwv_flow_imp.g_varchar2_table(113) := '9B9725939ED66F79402054041000A16A6E82D5C3FE89A9ABAE7AFEB3B48EBD7B912B016661F8E0399F2FC8E5CB63AE3D2DE4739298BC2A8C04B846E6C38CB85C8A0002A014158E059280EEE54D4E5C14FD855F4E80894452090076032887593DF34E2652';
wwv_flow_imp.g_varchar2_table(114) := 'AABDCADBBD319FCFCAD4C425C9B026A09E4D47DD35268000A83170AAAB0F01DDBBD33DFF724FFEDADB6C362BE98CFD25653A8F1F1FF94241F2AAB7EC47DF4D3E8F4F2425972F7FCA464F0724D4D45086E900135E5FA6E17469020880D25C381A20027AD8';
wwv_flow_imp.g_varchar2_table(115) := '5FCFF3EA455FF3094B9F182E5E0ACE950087DFB92CFFE12FBE2BBFF67F7C5C7EFDB7FF51BDFE8E1C3B716D3E683C59E6D47B37D428CFFC466CF467646AF28A6433E66D843D19384E41A04C020880328191DD5F04746F6EEAE625754258580FFEFA58C25F';
wwv_flow_imp.g_varchar2_table(116) := '81DB787B489DFCFF9FFFF039D9F3C661B97E7D4CAE5D1B57AF8FC8EFFFA7E7E4EDE3576D4AF9EBF0D9F363F31A01988DB290CFC9A49A2ACA301D308BC4E7CFB86F470001604786E3BE27A07BFE893217FC950ABA2005B974655CB2B9F287954BD9ABE7B1';
wwv_flow_imp.g_varchar2_table(117) := '2F7C75AFE44BEC9097984ECA0B2F1F5ED089B39E71CDADFBC2C571C92DB0ADF4A84F82E980B958791D4002088000362A2149710877D2E575FE918825D16883D8FEA8B9F273E76FC8CC8C796319DBF21E49D073FE274E5DB2F5E6FC856B7263DCFFD7C45F';
wwv_flow_imp.g_varchar2_table(118) := '5462CD364895108F3789B8D806389FCBCAD4CDCBC5CF92F0E35B02386E4F000160CF86149F12C8A4A745CFE3EA5E9C5308CD2D2DB2EDB18DB27AD552B19410B0CB7FE8C8199949F97B33A06C36AFA642EC4731CE9DBFE67B91339948ABA90DFBF51ABA8D';
wwv_flow_imp.g_varchar2_table(119) := 'D7AE199587376F94D6B6B85D73DF39AE3F43936A0A29C374C01D26BC080E01044070DA92481481BBC3FECEBDF596E62679EC91F53234D42F4B970C4ABBE184904A25E5DC05779BCB28373CF9AB0632C4D4F3CD6673A24709C4C73FEFBC7B55D269FBBB00';
wwv_flow_imp.g_varchar2_table(120) := 'C65BE2B2786840562CEB974736AF95E6A666C768F59A80849A4AD29F2DC7CC64F01801DC3111400098E890E62B02BA97A6176FE9A15B27C79B9A9AE4C96D0FC9A2FE2EB1D4BFD678A37475B6DB16D33D417D8319DB0C247882C0FE43E7246310009DAA8D';
wwv_flow_imp.g_varchar2_table(121) := '1B1A626259962C1AE896679EDA220D0D86E99FDB51E57399E2C24044C06D203C058200022010CD4810FAE4AF7B69BAB7E644231E6F91679EDC223D5D6D77B246D409A1A7BBF3CEFB522F4E9CBA2253D3E56D3053CA0EC7AA47E0C8D173A2C59A5D0DDD5D';
wwv_flow_imp.g_varchar2_table(122) := '1DEAE47FF76BAFABB34D9E7A62B3B4B6B6D815B9735C7FB6F49A800CF70EB8C3C4EB2FF0CF4CE0EEFF04733E5221E05902BA5736357959742FCDC9C978BC59CDF96F92EEAE077BFBDDDD0F1E9B6BEFC091F7647ADA796A616E195ED78EC04C3223972EDF';
wwv_flow_imp.g_varchar2_table(123) := '3056D8A54600EECFD0DFD7255B1FDE204D6A4AE8FEB4FBDFEBCF5842EF1390B59F66B8BF0CEF21E055020800AFB60C7EB92290D10BFE6E5E12DD3B732AD0A24EFE4FAADE5E8FCD89BEBDB5590D0737DA9A994E4CCBB51BC1D80FC036481F279C3C3326C9';
wwv_flow_imp.g_varchar2_table(124) := '94FD063EED6D2DD2DEDE5232C281BE4E79F6C987A4494D0D95CC30E7A09E62D2534D59360B9A43C58B2FF1C9890002C08910E99E251B3AFA770000100049444154A0BF801353D754CFDF79757E4B4BB33CBB6D8B7497E801CE06188BC5A4A3C37E1420A7';
wwv_flow_imp.g_varchar2_table(125) := 'E6814F9DB93E9B9D670F11284841F40E87F9BCFD864F9DED6DD2DC18B3F5BA4B4D07E8A9A1F6F6B86D9ED9042D3813DC40681607CF3E258000F069C385DD6D3DECAF7B617A48D689456BB1E7BF459DDCEFCEF9972A635911E9E9E92C95543CA6BFF44F9E';
wwv_flow_imp.g_varchar2_table(126) := 'BEE2FBCB018BC104EC8FBEC2E1F0DBE745F40B9BD8BA54DB46A3E6AF3C3D35F4A89A0ED053453666EE1CCEE5D2A2D704E4B2AC0BB903C5432F70C59980F97F8373797240A0E6046E0DFB5F56DFF5F6D7B4CF3AA5AFF57EF2892DF72CF89B4D2BF53CA0E6';
wwv_flow_imp.g_varchar2_table(127) := '83A311AB5452F1D881C3EFC9D4145FF845181EFA934EE7E4D419FB4D8E8AE2AEBBC395C7BD3D1DF28C9A0E6876311DA045A116A2191606BA624B266F11400078AB3DF0C68140369B12BDDADF4DCF5FF7E29EDDB659F4D0AE83D93BC9BDDD6D126BB4BF2C';
wwv_flow_imp.g_varchar2_table(128) := 'ECC6D8782076CBBB1370405E5CBC3229D3D393B6D144D5F44E7B5BAB6DFAFD091DEDADF294FAECB82993CF67454F07645913703FC63ABEA76A370410006E2891C71304F4C95FF7B6F239E739FF76F505AE7B716D657CE9EB201B1A62D2DA527AA1984ECF';
wwv_flow_imp.g_varchar2_table(129) := 'AB39E67317FDBD21908E23488F829EFF3F7A597259FBCF853E91371AE6FF4BF1E85123068F3EB2DED525825A90EACF668EE980522839E6510208008F360C6EDD4B2097CBC8F4E455D143AEF7A63CF8AEBDAD4D9E787C93E85EDC83A9CE47BAD417BF6D2E';
wwv_flow_imp.g_varchar2_table(130) := '35C77CE2E415DB64126A4F4035891C7AFB9CB1E201BDE19365CC5232514F073CF9F866698937974C9F7B50EF3F9098BC22FAB33AF738AF6B4F801ADD114000B8E344AEBA1228DC1A6255C3FF4E6EC45B5BE4E9A7B648971A0170CA6B97DEDDD52162D99F';
wwv_flow_imp.g_varchar2_table(131) := '2D4E9EBE24D7C6A6851F6F10D0F3FFC78E5FB475C6B22CE953F3FA9658B6794C097A0AE9E927B62841695E44AA6D64D5677426715D0A5A95E8033C20E0610208000F370EAE6902B74FFE2E1659B577B415176FB5B9E8AD69CB760F3D72105373C676E927';
wwv_flow_imp.g_varchar2_table(132) := '4F5D904B97EDE79BEDCA71BC3A044E9F1D97C949FBF6D0D33ADDDDCE276F93775A04E8E9808E76673BE954A2B84E45D4D484C92669D522805DB70410006E4991AF2E04661263924ADA7FB9CF3AD5DED12ADB1EDD201D861BFACCE6757A6E8BB7488F615B';
wwv_flow_imp.g_varchar2_table(133) := 'E04C2625FB0F5F107EEA4FA0A04EB23BF79C340EBBC7E3716974B1DFBF53347A03A9C7B7AE57D3012D4E5925AD3EB3C919FBBB123A1A2003046A4000015003C854313F02E9D494CC4C8F39166E6D6B91F73FF38874AA1100C7CC2E323434468A43C6A6AC';
wwv_flow_imp.g_varchar2_table(134) := '87D59CF3F5F1195316D26A402095CEC9CED78FA92177FB4B42FBFB7BC5B22AF355D7D5D52ECF3EB945DA5A9B1DA39B565301FA33EC98910C15258031F7042AF3BFC27D7DE484802B027A215562F2AA635E7D139767B66D91C6C646C7BC6E335862C9D050';
wwv_flow_imp.g_varchar2_table(135) := '9F31FB8953E7E5E225E79109A31112174CE0D49931B97EDD5E24C66251191CE859703D730DE829A2C7B66E72BE3AA050102D02F4952373CBF31A025E218000F04A4BE0C71C0205494E8F1B7B753AB3FE727F68F31AD19778E9F7957C74B6C7A5B5CD7EBE';
wwv_flow_imp.g_varchar2_table(136) := '37934EC95B87CC2BCF2BE90FB61E24905727D89D6F9C917CDEFEF2BFAECE76E95DE0FCFF83358BE8AB031EDEBC5A2211F357683E9795E9A96BCA44413DF8AD3E016A288780F9D35B8E25F242A0420432E919713374BAF5E1F532B4A8B742B5DE6BC6B222';
wwv_flow_imp.g_varchar2_table(137) := 'B26478E0DE8373DE150A793972F4AC5CE76A8039546AFB329DC9C99E374F182B1D1CEC17A7ED7F8D060C89838BFAE49187D61A72DC4AD29FE56C86BB07DEA2C15F2F11400078A935F0A548602671C3B1F7BF7EED72593CD25FCC5FAD3F4B160F48540D21';
wwv_flow_imp.g_varchar2_table(138) := 'DBD93F71EA825C601AC00E4FD58F9F3C3D26D7AEDADF9CC98A44D5F07F7755FD185D3A282B572C71AC2339A347B418057004B5C00C142F8F0002A03C5EE4AE3281626F296BEE2D0D0E0EC8BAB5CB44CFD557D39D0E350DD0D66A7F67B8742A29FB0FDB5F';
wwv_flow_imp.g_varchar2_table(139) := '7F5E4DDFC26E5B0FFFEFDE7B5AF475F7762C7ABBBBA45DB5A15D7A258EEBCFE0E60D2B6578C82C46D3A9841AD562CD48259863A372042295338525082C8C801E569F4ED8F7E8B4F59678933CB471A5442C4BBFADFA63647891B18EA3EF9C936B37A68D79';
wwv_flow_imp.g_varchar2_table(140) := '48AC3C01BDF9CFDEFDA78C8697AA119C889ACA3166AA4062341A9187B6AC16D3DE11BA9A99C4981AD9621440B3A8CE03ABE5124000944B8CFC5523904ADE14BD68CA54C16A35DCDAD6D662CA52D1B481FE6E696CB2BFC2E0D47B97E4EC79EE0D5051E82E';
wwv_flow_imp.g_varchar2_table(141) := '8C9D3C3326972EE9C575A533C71A623234D8533AB10A47E3CDCDB27AD5A8D1B25EACA83FE3C64C2442A08604100035844D55F60472D9B424A7CD27D256351C3FBA64C8DE481552BABBDAA4B7A7DBD6F2CC7442F6EC7BCF369D84CA13D0C3FFAFBF794689';
wwv_flow_imp.g_varchar2_table(142) := 'C58CADF1AECE4E696EB6176EB6051790B066E5883419C4A2369D9C1E375EB5A0F3F0981F014A954F0001503E334A5481402A35E5F8C5B869C30A696C6CA842EDF626F554C3A0E14A033D6D71EAF445B9CEA640F6102B9C924A6565CF9BC7D570BAFDE63F';
wwv_flow_imp.g_varchar2_table(143) := 'C3C57D1C6A334D341B9E9E0258BF66D9ECDB92CFB74601580B50120E076B4E00015073E454588A4026952875F8CEB1EEAE4E19297EA9DF3954B31783035D625A7270F6DC15397376BC66FE84BDA293EF8DC9C54BF69B44C55B9A64D140752E0F7562BF64';
wwv_flow_imp.g_varchar2_table(144) := 'F1A01A31EA3266CBBAB8AF85D10089250870683E0422F3294419085492403E9F935C2E6D6BD2B22C59A5E657AD1A2CE82AE5448B3AA1F4F5F5964A2A1E4BCC4CCBABBB4E482EEFED055E0E7BD61463F1FA9F6C2E2FAFEE3C2905F599B1F3B5AFAF473ADA';
wwv_flow_imp.g_varchar2_table(145) := '9AED92AB7ABCB13126CB978D18EBC8E5B2C6E90B6361122150410208800AC2C4D4FC0864334963C18E8EB80CF69B7B5546030B4CB4C492D12583F6560A0539FCF629CF2F06546EDAC7E09394EB6333F2D22B878CDE0E2EAADDE2BF528E0C0FF648535353';
wwv_flow_imp.g_varchar2_table(146) := 'A9A4E2312D5E320E9FF96246FEB82640C6F9114000CC8F1BA52A46A020598721D1DE9E1E35F71FAB588DF331343CD463FC52BF72E59AECDE7B763EA66B56260802E0D55D2745AF17B183D6D8D8E438046F57B652C7630D313505D1676B4EAF1BC9387CE6';
wwv_flow_imp.g_varchar2_table(147) := '6D0B9300810A124000541026A6CA27A087FFB30EBDA1BE9ECEF20D57B84443AC41FA7ACDA310AFEF3D261393E64D8C2AEC56A8CC25A6D3B2FDB5232206253332DC2F2D2D8D75E5A2478C8606FB44CD5CD9FA714BF47A7BCAC8D679CF25E0D07C092000E6';
wwv_flow_imp.g_varchar2_table(148) := '4B8E7215219057F3A159C3FC7F341693AEAEB68AD4B550234B970C482462D99A3977FE92ECDC73C6369D848511D8BBFF829C3D77D96864D9D241B1D43F63A61A24F6F776482C12B5AD490BDF42DEFE2A06DB822440A082041000158489A9F209E4F59DDC';
wwv_flow_imp.g_varchar2_table(149) := '0C3DBA9E6E7D3DB7FD7C6AF935CEBF447F5FB7F4F776DB1A48A7D3B263D731496773B67948981F81C44C46BEBFFD88E8F9733B0B3D3D1DD2D3DD6E975CD3E34D4D0DD2DAD62AB63FEA339FD39F7DDB0C24B82540BEF9134000CC9F1D252B40206F58CDAD';
wwv_flow_imp.g_varchar2_table(150) := 'CDF7F7764A2CEA8D8F69831A8D185D36ACDDB27D9C3C754E0E1C36F7526D0B93604BE0C83B57E4D011FB3BFF5996252B8AABEF2D5B1BB54E686F370800E54C8111004581DF7A12F0C6376B3D0950775D09987A74EA3B5D3A3B5AC5B2BCF3A53EBCA8579A';
wwv_flow_imp.g_varchar2_table(151) := '0DBBBD4DCFE855EAC7A4A0FED5156C802A4FA6B2F2CACE77454F17D985A5478A9CEEDB6057B65AC7DB5B9B8DA60B05468A8C805C259269210410000BA147D90513C8174CF3A096C462D105D7514903D16854563BECF676F8E829397ADC7E9FFA4AFA1306';
wwv_flow_imp.g_varchar2_table(152) := '5B67CE4DC8CED7DF3686BA7C74D8332345B38E46D588D1ECEB52CF8C0094A2C2B15A124000D49236753D40C06904A0A1A1BE97FF3DE0B03AB062E9A0C4E3F6B7099E181F573DD6932A27BF9520B0EB8D539233DC22BAB52D2E83833D95A8AAA2361A1ACC';
wwv_flow_imp.g_varchar2_table(153) := 'E29535000BC78D85851140002C8C1FA51748A050305F0A15F3D808800E37A67A764B4C1B03A94CFB0E9C9473176FAA57FC2E84C085CB93B26BCF512918468A562D5B2C4D8D8D0BA9A62A651B1BCCF7AD28B008B02ADC31EA9E0002C03D2B72568180E98B';
wwv_flow_imp.g_varchar2_table(154) := 'DDB2ACBA6F006417F2D29101D17BCEDBA5EB8D8176EEE12E81767CDC1E7F63DF39B964D8F7BFA13126A3A3836ECDD5345F831200CDCDF6EB00F2F99CE8474D9D0A546504B3500291851AA03C04E64F40F7FEF5A3B405CBB23CB50070AE971DED7159B17C';
wwv_flow_imp.g_varchar2_table(155) := 'F1DC43F7BCCEABDEDDABBBDE16BD80ED9E04DEB82670E55A42B6EF3C6ACCBF786448F4D519C64C754A8CC422D2DCDC645B7B418D7E159408B0CD400204AA4C00015065C098B727A0BEFFEC13554A2412510240BDF0E8EFB2D161E59F65EBDDB97317E55B';
wwv_flow_imp.g_varchar2_table(156) := 'DF3F6E9B4E8299C0AEBDEFC9C993F6A3284DEAE4BAD2E1B24C730DD54D6D8C3548341AB1ADA4A0A635B85AC4168F630219164EC0FED3B970DB588040A009343536C892C543B631E655EFEEFB2F1F904B57A76CF390509A805E3FF1BD17DF32CEFD0F0FF5';
wwv_flow_imp.g_varchar2_table(157) := '172F132D6DA1FE475B9ACD6B00F2B98C715BE3FA47800741278000087A0B135F5509AC5935229188FD6AEF0B172EC9B75E300F6357D5419F1A7FF9B51372FEC215A3F74B471619D3EB9D18298E60D98F10E9DEBF7ED4DB4F7FD68FD795208000A804456C';
wwv_flow_imp.g_varchar2_table(158) := '84964067479BF4F474DBC6AF87795FDE71404E9D1DB7CD43C2BD048E9FBA212F6D3F60ECFD8FA8937F4F4FFBBD05790701089445000150162E3243E07E0296AC5C69BF1850E79E98B8295FFBF621FD92870381742627DFFBC151B97EFD8631E7AA154B24';
wwv_flow_imp.g_varchar2_table(159) := '62F1F5658414E04442AB0C01FE0755862356424C60A8BF4B0607FBEC09140AF2EACE8372E4D855FB3CA414091C3D7E55B6EF38587C6DF7A7B7A74B7AE9FDDBE1E138045C134000B8464546089426108D4664F5CA51B1ECA77B25934ECA17BEB6AFB4018E';
wwv_flow_imp.g_varchar2_table(160) := '16094CCF64E49B2F1C925472BAF8BED41F7D6DFD860D2BC552FF4AA5732C0C0488B1520410009522899D5013E8EFED90A58B878D0C0E1E7A575EDF77CE9827CC89078E5C9237DE7CC78860E9D26119E8ED30E62111021070470001E08E13B92060246059';
wwv_flow_imp.g_varchar2_table(161) := '966C58BF4C1A9BEC377EC96452F285AFBE21793525603416C2C489C9A43CAFD8E4B269DBE89B9B9B6445F1BA7FCB360F09C127408495238000A81C4B2C859C40BCA559562D1F355238FEEE1979F1156E14743FA4BDFBCFCBC953F69BFEE8FCEBD72E938E';
wwv_flow_imp.g_varchar2_table(162) := 'B616FD9207042050010208800A40C404046609AC5C31281D1D6DB36F1F78D697053EF7E5DD3293CA3E9016D6037ACBDF2F7D7DAF14F2F6B786EEEAEA94E5C5DE7F582911F72D02FCAD240104402569622BF4041A1B62B269C36A11352520363F57AE5C96';
wwv_flow_imp.g_varchar2_table(163) := '6F7ECF3CD76D53349087F5A63F7AC324BBE022D1886C5CBF522CF5CF2E0FC7210081F2092000CA6746090818090C2EEA92D125C3C63C5FFAFA2EB974852D82DF3D7543BEFE9D3D92CFE76C790D0F0DC9E040A76D3A09E12140A495258000A82C4FAC4140';
wwv_flow_imp.g_varchar2_table(164) := 'F5532D59B776542211FB2D82135337E5A37FFFB2847941606226239FF8EC2EB93971D3F653D3D018938D6B97AA744B3DF88500042A49000150499AD882C06D026DF16659B162F4F6BBD24F870E1F976FBE70AC7462088E7EF37B6FCBA1B7CD774B5CB77A';
wwv_flow_imp.g_varchar2_table(165) := 'B9B4B1F02F049F06372192A7D204100095268A3D08DC26B076D588B41B16044AA1209F79FE5539732E7CF70978FBF855F9C677DE908261E15FBCB54D960B57D38A00001000494441542F1BBA4D93270840A0D204100095268A3D08DC26D0DCD4206B562D';
wwv_flow_imp.g_varchar2_table(166) := '13312C089C4EDC948F7D6AA7A4B3F673E012B09F642A2B1FFFCC0E999898B08D4C23DBB87EB934C462B67948081701A2AD3C010440E59962110277088C0CF5CAD0D0A23BEF4BBD3874E8987CEB7B474B2505F2D817BF71488E1D3F658C6D787848160FF7';
wwv_flow_imp.g_varchar2_table(167) := '19F3900801082C8C00026061FC280D0123818658548607BA8D79F4DE009FFCEC4B72ECE47563BE20241E3A7A59BEFDC25E51B31FC670FA7BBB24A287018CB9480C0F0122AD0601044035A8621302730844A3CE2BD873B94C71585CDF10674ED140BDD49B';
wwv_flow_imp.g_varchar2_table(168) := '1FFDFDA75E95C99BF6ABFE67038E5885D9973C43000255228000A81258CC42A02005397CF4A4EC79F3882B186F1F3D25DF79E9A82A15CC93DFE7BFBC4FCE9C39E78AC5BE03EFC821C5A3E03454E0CA1A99FC4E00FFAB430001501DAE580D39815C3E276F';
wwv_flow_imp.g_varchar2_table(169) := 'BE754CDE3976DA71B87B1655A190974F3FF7AABCF36EF0A6028E1CBBA286FEF748DEB0EA7F96837E2EA813FFB163A7E4C0A1E392C9B26DB266C2030295268000A83451EC859E40369B919DBB0FC9E933E75D9FFC67A1653349F9D473AFC964C2FEAE78B3';
wwv_flow_imp.g_varchar2_table(170) := '79FDF2AC87FE3FFADFBE2FC99954592E2B0D20EF9E3C27AFEF3D2CE9747078940581CC2202846A114000548B2C764349607C7C527EB07DAF5CBE32FF5EFCA1C327E4EBDF392441D82550C7F04F9F7B5D4C7BFD3B7D502E5DBA2EDB5F7B4B266EB275B213';
wwv_flow_imp.g_varchar2_table(171) := '2BD221500E01044039B4C80B0103811B6313B273CF4199989C36E47297F4DC975E911DAF9F7697D9C3B9BEF7F271F9EE8B7B17ECE1C4C494BCB66BBF5CB936B6605B18F01701BCAD1E010440F5D862394404CE9EBF24DB77EC93E9E96445A22E14F2F277';
wwv_flow_imp.g_varchar2_table(172) := 'FFF83DD197CD55C4601D8C1C3B794D3EFEE9EF4BB64273F8D36A0AE1B5DD07E4FCC52B7588862A21103C020880E0B52911D590805EE97FF4D87BF2C69B6F4B2E97775573537387B4B4F6486353AB31FFE464423EF6C91FC885CB93C67C5E4C1CBF99943F';
wwv_flow_imp.g_varchar2_table(173) := 'FBEB6FCB8C8320B222D15B2C9ADB5D8591CBE664D79EC372F4F87BA24592AB4264F231015CAF2601044035E9623BD00432EA6474E0E0BB72E4E809C9E75D5CBA6759D21CEF96D6F67E6951CFF1B63ED1274013A4D3672EC8A7BFB05B26A7CA5B4067B259';
wwv_flow_imp.g_varchar2_table(174) := 'ED34BDE8EFCF3FFA5DB972E5AAB1AA4824261D9DC34516AD6DB798180BCC26160A72F8C8BB72F0F049C9E6C2B385F26CF83C43A0520410009522899D501148A692B2F7CD23F2EEC9B3AA27EA7CF2B7AC88B4B50F485CF5FC6741E91360AB16012A6DF658';
wwv_flow_imp.g_varchar2_table(175) := 'A9E71D3B0FC957BE75509DECDC8D3094B251AB633925843EF5DC1E75723EE158A51640D15863319F6559A24745DA3A1689E5C0A35840FD397EE23DD9F3C661D1575DA8B7FC0690002155970002A0BA7CB11E400253896979F5B5836A2EDADCC39D0D3D12';
wwv_flow_imp.g_varchar2_table(176) := '8D495BC7A01AF26F9B3D74E7B9B1A94D9A5A3AEFBC2FF942F578BFF0D557E5B53D674A267BE5A09E0E7979C7BBF2CDEFEE7674A939DEA5783C3805A2799423022E5CBA26DB5FDB2F5C21E0889C0C10788040E481231C8000046C095CBD3E2E2F6DDFAB4E';
wwv_flow_imp.g_varchar2_table(177) := '38EEE6E5A3D1466957C3DC0D8D2D62F7136FED9686C6B85DF2ADE34A047CECE32F787A51E0D1E357E5BFFEC377A5A046016E395DFA6F2CD674CF48C8FDB9348B8EEEC5128936DC9F54F2FDD8D84DD9BDE7905CBE1ABEDB2A970412988304526D02916A57';
wwv_flow_imp.g_varchar2_table(178) := '807D080485C0F98B97E5D59D6F493A9D7115D2AD13D988441D4F6496B4AAE901A713DECDC929F9DB7FFCBE9CBBE8BC97BE2B072B98696C6246FEECAFBE2129870D7BAC4854E2EDFDAA66F3FD1134B38EAE61715A28A90C157F27A7A69508D82FE72F5D2D';
wwv_flow_imp.g_varchar2_table(179) := 'BEE70F0420E04C0001E0CC881C2127A087B68F1E3FA34E308725EF72A5BF3E71B5770E8A65B9FB2F16D127C6D61EB11CF29F3B77593EF9B91D3231E99D4581FA06467FFE37DF93EB379C7BE02DF12ED123006E3E529148AC288C1A5D5E2190C9E464F7EB';
wwv_flow_imp.g_varchar2_table(180) := '07E5F80977F71B70E30379EA47809AAB4FC0DDB753F5FDA006087892805EE97FE8F071397CE484A85178573EC65B7B45CFF98B5852CE8F9EFF6E89773B1679FD8DA3F2A5AFEF93B43AE139669E93C12ACF9D3925ED5F6A1F3EF3C53DA2772FB4CF752BA5';
wwv_flow_imp.g_varchar2_table(181) := 'A9B9439A5BBA6EBD71F9D75282A84D8D8EC4DB7A455C04A0DBE8E0E163F2D68177249FE70A01E1070206020800031C92C24D20AD86B3DF7CEB6D39F6AEBB1EA5A57AF1AD6DFDA217B8CD975C534BA7E8A903A7F25FF9E62EF9C2D7DE9264CAFD8D726E9D';
wwv_flow_imp.g_varchar2_table(182) := '3F9DAE5870AF12F4E57E5FFCFA5BF28DEFBCEEE4AEC41A5A546FBECF319F5D8666251CB410D08CEDF2CC1ED722E0C4A9F3F2C65BEF4826CB3D0466B9F8EB196F6B410001500BCAD4E13B0293891979F9D5B7E4DC7977BBCEE913933E4135B5742C2856CB';
wwv_flow_imp.g_varchar2_table(183) := 'B28A970B462231B31D7596FBFC17B7CB5FFFDD4B72F1F2A4E83DF7CD054475A02D31EECAA7CEFDB1A8FA23E61F5DD78DF119F9FFFFF6FBF2B92F6C9782C3A23FBDB641EF7D20E26C5B0C3F7A84445F21A0ED19B2DD493A7BF692BCBC63BF4C4DCFDC39C6';
wwv_flow_imp.g_varchar2_table(184) := '0B0840E02E0104C05D16BC824091C0E52B3764E7CEB7442FBA2B1E70F8A37BB79D5D23AE7AEE0EA68AC9961E49E818104B0D7F170F18FEECD87548FECDBFFFB47CF68B6FC86B7B4ECAE9F7AECBC4CD19191B9FBEFB9850AFD543690B4926EDB72ACEE772';
wwv_flow_imp.g_varchar2_table(185) := '4A206424319DBE5BF6B69D2BD7A7E4C4E96BF2EAEE13F289CFEE94DFFE9D4FC8AED78F183CBB9DA42AD5277FBDA8EFF691053D35A89184CEEE25126B68766567627C525EDDB1CFD5FA045706C954130254521B0291DA54432D10F00381825CB87855DED8';
wwv_flow_imp.g_varchar2_table(186) := 'F7B6E81100371E3736B7ABF9FE0171DB2B756353E7D127BAE2BCB77EE3F0D02BE09FFBD2ABF2277FF915F92D7562FE95FFF5BFC8FFF49B7F7BF7F1BFABD7EAF1F31FF94B11357260674E2FA2FBAD7FFB49F9E55FFBE8DDB2B7EDFCFABFFE3BF9BF7EF793';
wwv_flow_imp.g_varchar2_table(187) := 'F2677FF555F9CA37762B91E1EE8647F1788FE858ECEA9CCF71CBB2A4BD73C8F5150289E9A4ECD875502E14AF10709A02998F479481803F092000FCD96E785D71020535D77F5676BE7E50F592DDADB06F6AEE50C3F5FD1289380CD7CFD3576D5F5F4D309F';
wwv_flow_imp.g_varchar2_table(188) := 'E2FA3C7FFFA31C3B0B293B5B8F1EB25FC87A88593BA59EF5E8885E68D9D4E2B089D2EDC2994C468D581C946327CEAB23880005C1C3BFB8562B0208805A91A61ECF12C8E7B3B2F7AD77E4E0E177DDF9A87AA07A2E5A0F6D8B2C6C5E5B1C7EF4A2C2F98A00';
wwv_flow_imp.g_varchar2_table(189) := '07D3554DD60B19F556BF55AD44196F6DEB13BD85B07AE9F8AB458DBEA2435F2190CBE71DF393010241278000087A0B139F9180DE47FEF5BD4745DF74C798F176A2654554AF7F400D3FB7DD3E52DD272B12157D59A13EA156B7A6CA59D7F3F35A1CE9BD0D';
wwv_flow_imp.g_varchar2_table(190) := '2A67D5DE92BE74523FEC73DC4D29281570E2D405D9F7D6DB9256A302775378E51502F8513B020880DAB1A6268F11D07BFABFF4CA9B72FEC215579EE993FFADB9E7DA9CFC679DD2EB0BF470B71F46021A9BDB8BF3F3912A4D8BCC32B9FF598F0274748D48';
wwv_flow_imp.g_varchar2_table(191) := '241ABB3FA9E4FB33672FCB2B3BDE929919FB4591250B72100201228000085063128A7B0257AF8DC98E5DFBE5E6CD84AB42D168A3B4770D8BEEDD4A1D7E2CCB92D6F645A217066A215207178C555AB7472A5ADBFAC5B2EAF3B5A2DBA6BD63C8F5D518E313';
wwv_flow_imp.g_varchar2_table(192) := '93F2E22B7BE5C6D84D636C24D6920075D592407DFEA7D63242EA82C07D042E5DBE2ABBF71E96A92977D7873734B64A47F788B8DDC2F6BEEA2AF6D6B2ACE24E7A6D9D8375F7656E50B18616D16B22F4823FCBAAEE9A88B9F5967A1D8D354A6BFB806B1190';
wwv_flow_imp.g_varchar2_table(193) := '9C49C98EDDFBE5D295EBA5CC710C02812680000874F312DCFD04DE3D79565EDB7D485249773BC435C7BB8B27B77AF56AEFF75FBFD797D575742F96CEEE25EA64D72F7A25BC3E09EB5EB858553C012BDB9148AC7872D575EA79FECE9EA5D2A14646B44FDA';
wwv_flow_imp.g_varchar2_table(194) := '372F3CF4DA8376259274DBB9F1279DCAC88E9DFBE5E4A9735250FFDC94214F750860B5B6041000B5E54D6D752290CBE565DF8177E5C0A177452F047372C352C3D87A5E39DEDA2D9655C593AA93238674DDDB6D6AEE282E12D43DF08ECE61D18FF6CE2125';
wwv_flow_imp.g_varchar2_table(195) := '5A06EF3CDAD5095A1FD379553062FAD127F64E252CDA952DBDEE60F6A1CBCF3E740F5B2F4CD4F62AB5C18FC9A7F9A5598A4BB7E82909A79867EDEF3B704C0EBF7D4AB239F7DB2BCF96E519027E248000F063ABE1735904F42D6ADF78F3B0EAE1BDE7FAE4';
wwv_flow_imp.g_varchar2_table(196) := 'AF2F61BBB5B2DC9B27FFB9002CCB12DDEBD58220D6D05CECA1EB0583B30FDD3B6F688C4B8B1233D14883D8FD58564474CCDA4E43638BCC96D7CFBABCB6A3D3745D96E57D2E22961A1DD17B350C88A56213173FEF1C3B2DFB0F1E974C1611E0025785B360';
wwv_flow_imp.g_varchar2_table(197) := 'AED60422B5AE90FA20504B02D333D3F2DAAE0372EEC25557D546A20DC5C57E4DCDEDAEF2FB29933E095A11F37FF94200EFA0A737246A57A320119757089C3E7351F402D1A461DB64E10702012060FE360840808410560205B9767D5C5E7C799FEB55DEBA';
wwv_flow_imp.g_varchar2_table(198) := 'D7DBA186CFEBBDD8AF7A2DA67BEDFA615F4350E7C0759BEA698D68ACC93EF83929D7AF4FC8F6D7F6CB95ABD7E71CE565350960BBF6041000B5674E8D55269057BDD8D3EF5D90D776EF9754CADDB6BE0D8DADA24F101135025065F7305F27027ABD42871A';
wwv_flow_imp.g_varchar2_table(199) := '09D0D3246E5C989C4CC8EE370ECBB11367859D03DD10238FDF082000FCD66261F2B750104BFD731B72A19097B1B171D9BEE32DD9BBEF1DD137B77153B639DEA54EFE836EB292C7E7042C2B22ED1D83A2059F9B50D2E9AC1C3C74BC789580FE6CE9CF989B';
wwv_flow_imp.g_varchar2_table(200) := '723A8FCE5B509F61FD9A871301D2EB410001500FEAD4E98A40365770954F0F5B8F4FDC943D6F1E9517B7BF29D76F4CB82AA733E98D75F48A76FD9A4738085891A8B4770E8ABECA430B023751EB8DA3B4B0D4570ADC9C9C52459C3F9BE96C567239EE39A0';
wwv_flow_imp.g_varchar2_table(201) := '60F1EB510208008F360C6E89E4558FFEE2E531B99948C9947ADC4CA465523D8F4F24E4F2D51B72EAF4393974E498BCBEE740B18776F6DC25D7D82291983A090C1537D6715D888C8122A0AF7868EB5824961A15701358569DCC4F9DBEA03E6B6FC96BBBDE';
wwv_flow_imp.g_varchar2_table(202) := '92236F1F97336AAAE9D2951B327E735A12D3B73E9FD3336935FA9495B3E7AE4B22E1EEB6C96EEA0F721E62AB0F81487DAAA55608B820A0864FF7BC79445E7EE54DF9C1ABFB64FBAB6FCA4BDBF7C94BAFEC555FC207E4CDFDC7E49DE3E7E4DC85EB924C65';
wwv_flow_imp.g_varchar2_table(203) := '5C18BC95452F08D35FFC0D8DF15B07F81B5A02FA33D0DE39246E17076A50FA04AF85E9DBC7CECA1BFB8E2A3170405EDAFE861A7DDA2B2FABCFE98B6A14EADB2FBC2E878F1C5742C0FDE752DBE601815A124000D4923675954DA090CF4B3A3523A9E474F1';
wwv_flow_imp.g_varchar2_table(204) := '91494F4B3E9795821A1D28DB982AA01780B5A9E15FFDACDEF20B01D19F052D08B5309C0F0EFD59D49FC9B99FD3743A39EFCFE87C7CF07719BCAF17010440BDC8536F4D09E8615E3DE7DBDE392C7AF8BFA6955399E709E82B04DABB46A439AE777EE46B51';
wwv_flow_imp.g_varchar2_table(205) := 'F80905013EE9A168666F0659DC4C4E0DF357DBBB68B451DA54AF5FCFF95A962561FD710CDD3143B0C9599625F1D61ED1F73888441BAA1EAC16A5FA51F58A3C5E01EED58F0002A07EECA9B9DA04D417BAEED175742F16BD8D6DB5ABF3BE7DB3F8D1232311';
wwv_flow_imp.g_varchar2_table(206) := '8BAF04BD7360A71E0D68E914519F21A9D24F5409537857092E665D1188B8CA452608548580259158A354FA479FC8F4707F77EFB2628FCEB2CC27BE4AD7EF657B9188FD7FF9AFF075D30000094649444154986A8B88CBED72BD1C63257CB32251D1F783E8';
wwv_flow_imp.g_varchar2_table(207) := 'EA592AFA0649FA7D25ECCEB51155ACAD486CEEA110BE26E47A12B0FF36A8A757D41D1A028D8DADAA9355818FA13AC947A38D6A0EB76BCE707F24341CDD06AA7BB7A5F25AAAE7AF4F7422882599F3135127E8D6B63ED19B07E9BB1FEAF7A23E6B73B2CCFB';
wwv_flow_imp.g_varchar2_table(208) := '656373BB3205EF7903A4E08209F00DB96084185808017DA7397D7B59FD6518D1F3AEFACBD5E161A9935544F59EF4DEFDFAA4A5E76C3BBB974867CF12D5E3EF9558CCDD7EEF0BF1DBAF65B500D02BDEF5CD8EF4EAF788625E3CD639083743A36A56FA73D6';
wwv_flow_imp.g_varchar2_table(209) := 'D5BB54F467ADB5AD5F9A9A3B24D6D02211F559D49F49B1D4C9DCF0B0AC88446EF3D6971E322D2562404E520D0820006A00992ACC04B408686B1F103DDCDAD3B7429C1EDD7DCB55DE5169EF1C9656D53BD35FC451F5C56AAE85D45902FA84AF4557879AE7';
wwv_flow_imp.g_varchar2_table(210) := 'D6CCB520E064344BC7E9D992A8FAAC35B5748816041D5DC3C5CFA2FE4CBAFBDC2E9522EF46F6A0107EEA4E000150F726C00108400002612440CCF5268000A8770B503F042000010840A00E04100075804E9510800004C24E80F8EB4F000150FF36C00308';
wwv_flow_imp.g_varchar2_table(211) := '400002108040CD0920006A8E9C0A21000108849D00F17B810002C00BAD800F108000042000811A134000D41838D541000210083B01E2F70601048037DA012F2000010840000235258000A8296E2A83000420107602C4EF15020800AFB4047E4000021080';
wwv_flow_imp.g_varchar2_table(212) := '00046A4800015043D8540501084020EC0488DF3B041000DE690B3C81000420000108D48C0002A066A8A90802108040D80910BF97082000BCD41AF802010840000210A8110104408D40530D04200081B013207E6F11400078AB3DF0060210800004205013';
wwv_flow_imp.g_varchar2_table(213) := '0208809A60A61208400002612740FC5E238000F05A8BE00F042000010840A00604100035804C1510800004C24E80F8BD470001E0BD36C12308400002108040D5092000AA8E980A20000108849D00F17B910002C08BAD824F108000042000812A13400054';
wwv_flow_imp.g_varchar2_table(214) := '1930E621000108849D00F17B930002C09BED825710800004200081AA12400054152FC621000108849D00F17B950002C0AB2D835F108000042000812A12400054112EA621000108849D00F17B970002C0BB6D836710800004200081AA114000540D2D8621';
wwv_flow_imp.g_varchar2_table(215) := '000108849D00F17B990002C0CBAD836F108000042000812A11400054092C6621000108849D00F17B9B0002C0DBED837710800004200081AA10400054052B4621000108849D00F17B9D0002C0EB2D847F108000042000812A10400054012A262100010884';
wwv_flow_imp.g_varchar2_table(216) := '9D00F17B9F0002C0FB6D8487108000042000818A134000541C290621000108849D00F1FB810002C00FAD848F108000042000810A134000541828E620000108849D00F1FB830002C01FED8497108000042000818A124000541427C620000108849D00F1FB';
wwv_flow_imp.g_varchar2_table(217) := '850002C02F2D859F108000042000810A124000541026A620000108849D00F1FB870002C03F6D85A7108000042000818A114000540C258620000108849D00F1FB890002C04FAD85AF108000042000810A1140005408246620000108849D00F1FB8B0002C0';
wwv_flow_imp.g_varchar2_table(218) := '5FED85B7108000042000818A1040005404234620000108849D00F1FB8D0002C06F2D86BF108000042000810A1040005400222620000108849D00F1FB8F0002C07F6D86C710800004200081051340002C18210620000108849D00F1FB910002C08FAD86CF';
wwv_flow_imp.g_varchar2_table(219) := '10800004200081051240002C1020C521000108849D00F1FB930002C09FED86D710800004200081051140002C081F8521000108849D00F1FB950002C0AF2D87DF10800004200081051040002C001E4521000108849D00F1FB970002C0BF6D87E710800004';
wwv_flow_imp.g_varchar2_table(220) := '20008179134000CC1B1D0521000108849D00F1FB990002C0CFAD87EF1080000420008179124000CC131CC520000108849D00F1FB9B0002C0DFED87F71080000420008179114000CC0B1B8520000108849D00F1FB9D0002C0EF2D88FF1080000420008179';
wwv_flow_imp.g_varchar2_table(221) := '104000CC031A4520000108849D00F1FB9F0002C0FF6D480410800004200081B2092000CA46460108400002612740FC4120800008422B1203042000010840A04C0208803281911D02108040D809107F3008200082D18E4401010840000210288B0002A02C';
wwv_flow_imp.g_varchar2_table(222) := '5C6486000420107602C41F14020880A0B4247140000210800004CA2080002803165921000108849D00F10787000220386D492410800004200001D7041000AE51911102108040D809107F9008200082D49AC40201084000021070490001E01214D9200001';
wwv_flow_imp.g_varchar2_table(223) := '08849D00F1078B00022058ED49341080000420000157041000AE30910902108040D809107FD008200082D6A2C40301084000021070410001E002125920000108849D00F1078F000220786D4A44108000042000014702080047446480000420107602C41F';
wwv_flow_imp.g_varchar2_table(224) := '4402088020B62A31410002108000041C0820001C00910C01084020EC04883F98041000C16C57A282000420000108180920008C784884000420107602C41F54020880A0B62C71410002108000040C04100006382441000210083B01E20F2E01044070DB96';
wwv_flow_imp.g_varchar2_table(225) := 'C820000108400002B6041000B6684880000420107602C41F6402088020B72EB1410002108000046C0820006CC0701802108040D809107FB009200082DDBE44070108400002102849000150120B0721000108849D00F1079D000220E82D4C7C1080000420';
wwv_flow_imp.g_varchar2_table(226) := '00811204100025A0700802108040D809107FF009200082DFC6440801084000021078800002E001241C80000420107602C41F0602088030B4323142000210800004EE238000B80F086F21000108849D00F187830002201CED4C94108000042000817B0820';
wwv_flow_imp.g_varchar2_table(227) := '00EEC1C11B08400002612740FC61218000084B4B1327042000010840600E0104C01C18BC84000420107602C41F1E020880F0B4359142000210800004EE104000DC41C10B08400002612740FC6122800008536B132B042000010840E0360104C06D103C41';
wwv_flow_imp.g_varchar2_table(228) := '000210083B01E20F17010440B8DA9B6821000108400002450208802206FE40000210083B01E20F1B010440D85A9C78210001084000028A00024041E01702108040D809107FF8082000C2D7E6440C0108400002101004001F0208400002A1270080301240';
wwv_flow_imp.g_varchar2_table(229) := '0084B1D589190210800004424F000110FA8F0000200081B01320FE7012400084B3DD891A0210800004424E000110F20F00E1430002612740FC61258000086BCB13370420000108849A000220D4CD4FF0108040D809107F78092000C2DBF6440E01084000';
wwv_flow_imp.g_varchar2_table(230) := '02212680000871E3133A0420107602C41F6602088030B73EB14300021080406809200042DBF4040E0108849D00F1879BC07F070000FFFFF3113FBF00000006494441540300F20DCA96BAAC2FA40000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10003582025628611735)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10003583396434611736)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/security/authorizations/es_conductor
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10005140297840716919)
,p_name=>'Es Conductor'
,p_static_id=>'es-conductor'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT 1',
    '  FROM conductor',
    ' WHERE id_estudiante = :AI_ID_ESTUDIANTE')))).to_clob
,p_error_message=>'Esta opcion es solo para conductores.'
,p_version_scn=>'SH256:rqWjxk2ucvb9OboN9aPBljbpXwODEbzXZ_urjB9qzh0'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20261101221011Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221011Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/security/authorizations/es_pasajero
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10005398761436336700)
,p_name=>'Es Pasajero'
,p_static_id=>'es-pasajero'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT 1',
    '  FROM pasajero',
    ' WHERE id_estudiante = :AI_ID_ESTUDIANTE')))).to_clob
,p_error_message=>'Esta opcion es solo para pasajeros.'
,p_version_scn=>'SH256:Bvd5pqhO7KpOGhIoNdWOHjFd39sLpYqnKdNLTWndVoY'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20261101221042Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221042Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items/ai_id_estudiante
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(10005108888636708447)
,p_name=>'AI_ID_ESTUDIANTE'
,p_protection_level=>'I'
,p_version_scn=>'SH256:oALtkuEnHWtYxY-nUMmJdlQ3aMwAd3Nn6FSxOjfeJtU'
,p_created_on=>wwv_flow_imp.dz('20261101220846Z')
,p_updated_on=>wwv_flow_imp.dz('20261101220846Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/logic/application_computations/ai_id_estudiante
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(10005074233699328090)
,p_computation_sequence=>10
,p_computation_item=>'AI_ID_ESTUDIANTE'
,p_static_id=>'ai-id-estudiante'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'SELECT id_estudiante FROM estudiante WHERE UPPER(correo_institucional) = UPPER(:APP_USER)'
,p_version_scn=>'SH256:jTx48KPdVdwFzeb4xdPmaOYiHwTcekI0DIBOZi39OTc'
,p_created_on=>wwv_flow_imp.dz('20261101220916Z')
,p_updated_on=>wwv_flow_imp.dz('20261101220916Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10003591891064611782)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(10003591891064611782)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10003592584478611784)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10003592198163611783)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/punto_direccion
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10007542763479890543)
,p_lov_name=>'PUNTO.DIRECCION'
,p_static_id=>'punto-direccion'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PUNTO'
,p_return_column_name=>'ID_PUNTO'
,p_display_column_name=>'DIRECCION'
,p_default_sort_column_name=>'DIRECCION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:f0DLW6XZFMr4_VaYn9w4lqIf1KDgBOFm3b4Qy6uKT5Y'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/vehiculo_marca
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10007542098274890542)
,p_lov_name=>'VEHICULO.MARCA'
,p_static_id=>'vehiculo-marca'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'VEHICULO'
,p_return_column_name=>'PLACA'
,p_display_column_name=>'MARCA'
,p_default_sort_column_name=>'MARCA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:E01cct5U7iGshQNC_oPCMzuQpiYaqKGAAZmxtc5isa0'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(10003583612523611737)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(10003578476893611722)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002656Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10015046549392391070)
,p_short_name=>'Buscar Viajes'
,p_static_id=>'buscar-viajes'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20261102000232Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000232Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10010799570759128206)
,p_short_name=>'Gestionar Viaje'
,p_static_id=>'gestionar-viaje'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20261101231844Z')
,p_updated_on=>wwv_flow_imp.dz('20261101231844Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10003578659478611722)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10014673458159378560)
,p_short_name=>'Mi Cuenta'
,p_static_id=>'mi-cuenta'
,p_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>21
,p_created_on=>wwv_flow_imp.dz('20261102000027Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000027Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10015344754858405918)
,p_short_name=>'Mis Solicitudes'
,p_static_id=>'mis-solicitudes'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20261102000501Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000501Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10007344625501496086)
,p_short_name=>'Mis Vehiculos'
,p_static_id=>'mis-vehiculos'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_created_on=>wwv_flow_imp.dz('20261101223716Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223716Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10010768879181122292)
,p_short_name=>'Mis Viajes'
,p_static_id=>'mis-viajes'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20261101231745Z')
,p_updated_on=>wwv_flow_imp.dz('20261101231745Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10007540836593890399)
,p_short_name=>'Publicar Viaje'
,p_static_id=>'publicar-viaje'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20261101223906Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223906Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10005698219888391310)
,p_short_name=>'Registro Conductor'
,p_static_id=>'registro-conductor'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20261101221948Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221948Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10014716944179986550)
,p_short_name=>'Registro Pasajero'
,p_static_id=>'registro-pasajero'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20261101235900Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235900Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10016907235287149280)
,p_short_name=>'RFA1 Tablero Conductor'
,p_static_id=>'rfa1-tablero-conductor'
,p_link=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>33
,p_created_on=>wwv_flow_imp.dz('20261102002608Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002608Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10017122583689537424)
,p_short_name=>'RFA2 Tablero Pasajero'
,p_static_id=>'rfa2-tablero-pasajero'
,p_link=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>34
,p_created_on=>wwv_flow_imp.dz('20261102002656Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002656Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10016294417931495036)
,p_short_name=>'RFC1 Demanda por Localidad'
,p_static_id=>'rfc1-demanda-por-localidad'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
,p_created_on=>wwv_flow_imp.dz('20261102001952Z')
,p_updated_on=>wwv_flow_imp.dz('20261102001952Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10016560575089121521)
,p_short_name=>'RFC2 Ingresos por Localidad'
,p_static_id=>'rfc2-ingresos-por-localidad'
,p_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>31
,p_created_on=>wwv_flow_imp.dz('20261102002130Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002130Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10016642525513138035)
,p_short_name=>'RFC3 Viajes por Conductor'
,p_static_id=>'rfc3-viajes-por-conductor'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
,p_created_on=>wwv_flow_imp.dz('20261102002415Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002415Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10015309885531401151)
,p_short_name=>'Solicitar Cupo'
,p_static_id=>'solicitar-cupo'
,p_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>23
,p_created_on=>wwv_flow_imp.dz('20261102000413Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000413Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(10003579349746611723)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>4194319937007846
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn=>'SH256:_ZA2OCAT0oe8zXeYXS4pqku9eJXOHXBko77-CJUyv6E'
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10003577745505611720)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/login_estudiantes
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10003637805891618303)
,p_name=>'Login Estudiantes'
,p_static_id=>'login-estudiantes'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'authentication_function', 'f_autenticar',
  'enable_legacy_attributes', 'N')).to_clob
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:a3nKShem8ZOUBUb8UbZgn9QiZt6eriG_EAJX0bjnQmk'
,p_created_on=>wwv_flow_imp.dz('20261101215345Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221653Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10003578032706611721)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Wheels Alpes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102044332Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007652109133900837)
,p_plug_name=>'Opciones'
,p_static_id=>'opciones'
,p_title=>unistr('\00BFQu\00E9 quieres hacer?')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(10003578917668611722)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_created_on=>wwv_flow_imp.dz('20261102044315Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044332Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10003591283202611781)
,p_plug_name=>'Wheels Alpes'
,p_static_id=>'wheels-alpes'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Registro Conductor'
,p_alias=>'REGISTRO-CONDUCTOR'
,p_step_title=>'Registro Conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261101221948Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102050242Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10005697575171391279)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261101221948Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221948Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10006099336388391611)
,p_plug_name=>'Registro Conductor'
,p_static_id=>'registro-conductor'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'V_CONDUCTOR_VEHICULO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10006108729150391621)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10006110045249391623)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrarme'
,p_button_position=>'CREATE'
,p_button_condition=>'P10_PLACA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101222122Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10006109209828391622)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10_PLACA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10006109660657391622)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P10_PLACA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10006110546714391623)
,p_branch_action=>'f?p=&APP_ID.:9999:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006103629945391617)
,p_name=>'P10_ANIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>unistr('A\00F1o')
,p_source=>'ANIO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101222122Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006100833032391614)
,p_name=>'P10_APELLIDOS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Apellidos'
,p_source=>'APELLIDOS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006101652365391615)
,p_name=>'P10_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Celular'
,p_source=>'CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006104034771391618)
,p_name=>'P10_COLOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Color'
,p_source=>'COLOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006102081619391615)
,p_name=>'P10_CONTRASENA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>unistr('Contrase\00F1a')
,p_source=>'CONTRASENA'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101222122Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006101268334391614)
,p_name=>'P10_CORREO_INSTITUCIONAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Correo institucional'
,p_source=>'CORREO_INSTITUCIONAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101222122Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006104459878391618)
,p_name=>'P10_CUPOS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>unistr('Cupos del veh\00EDculo')
,p_source=>'CUPOS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101222122Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006100049911391613)
,p_name=>'P10_DOCUMENTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Documento'
,p_source=>'DOCUMENTO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006102483652391616)
,p_name=>'P10_ID_PROGRAMA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Programa'
,p_source=>'ID_PROGRAMA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.nombre || '' - '' || u.nombre AS d,',
'       p.id_programa AS r',
'  FROM programa p',
'  JOIN universidad u ON u.id_universidad = p.id_universidad',
' ORDER BY u.nombre, p.nombre'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101222122Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006102894409391616)
,p_name=>'P10_MARCA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Marca'
,p_source=>'MARCA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006103282608391617)
,p_name=>'P10_MODELO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Modelo'
,p_source=>'MODELO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006100456208391613)
,p_name=>'P10_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10006099694009391612)
,p_name=>'P10_PLACA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_item_source_plug_id=>wwv_flow_imp.id(10006099336388391611)
,p_prompt=>'Placa'
,p_source=>'PLACA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101222122Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10006110913385391624)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10006099336388391611)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registro Conductor'
,p_static_id=>'initialize-form-registro-conductor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10006110913385391624
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261101221951Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10006111354999391624)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Registrar conductor y vehiculo'
,p_static_id=>'process-form-registro-conductor'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_estudiante estudiante.id_estudiante%TYPE;',
'BEGIN',
'    -- RF1: datos personales del estudiante',
'    INSERT INTO estudiante (documento, nombre, apellidos, correo_institucional, celular, contrasena)',
'    VALUES (:P10_DOCUMENTO, :P10_NOMBRE, :P10_APELLIDOS, :P10_CORREO_INSTITUCIONAL, :P10_CELULAR, :P10_CONTRASENA);',
'',
'    -- id generado para el estudiante (el documento es unico)',
'    SELECT id_estudiante',
'      INTO v_id_estudiante',
'      FROM estudiante',
'     WHERE documento = :P10_DOCUMENTO;',
'',
'    INSERT INTO estudiante_programa (id_estudiante, id_programa)',
'    VALUES (v_id_estudiante, :P10_ID_PROGRAMA);',
'',
'    INSERT INTO conductor (id_estudiante)',
'    VALUES (v_id_estudiante);',
'',
'    -- RF2: el conductor debe registrar al menos un vehiculo (RN10)',
'    INSERT INTO vehiculo (placa, id_conductor, marca, modelo, anio, color, cupos)',
'    VALUES (UPPER(:P10_PLACA), v_id_estudiante, :P10_MARCA, :P10_MODELO, :P10_ANIO, :P10_COLOR, :P10_CUPOS);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10006110045249391623)
,p_process_success_message=>unistr('Registro exitoso. Ya puedes iniciar sesi\00F3n con tu correo institucional.')
,p_internal_uid=>10006111354999391624
,p_created_on=>wwv_flow_imp.dz('20261101221951Z')
,p_updated_on=>wwv_flow_imp.dz('20261102050241Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Mis Vehiculos'
,p_alias=>'MIS-VEHICULOS'
,p_step_title=>'Mis Vehiculos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005140297840716919)
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20261101223715Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261101223802Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007344076063496045)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261101223716Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223716Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007345336732496398)
,p_plug_name=>'Mis Vehiculos'
,p_static_id=>'mis-vehiculos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT placa,',
'       id_conductor,',
'       marca,',
'       modelo,',
'       anio,',
'       color,',
'       cupos',
'  FROM vehiculo',
' WHERE id_conductor = :AI_ID_ESTUDIANTE'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223802Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10007352138044496425)
,p_name=>'ANIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANIO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('A\00F1o')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101223802Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10007347148911496406)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10007346673138496404)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10007353124199496429)
,p_name=>'COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Color'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10007354166422496433)
,p_name=>'CUPOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUPOS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cupos'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10007349121492496414)
,p_name=>'ID_CONDUCTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CONDUCTOR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Id Conductor'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AI_ID_ESTUDIANTE'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261101223802Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10007350164355496417)
,p_name=>'MARCA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MARCA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Marca'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10007351107496496421)
,p_name=>'MODELO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODELO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Modelo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10007348180537496410)
,p_name=>'PLACA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLACA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Placa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261101223802Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10007345493329496398)
,p_internal_uid=>10007345493329496398
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10007346135201496401)
,p_interactive_grid_id=>wwv_flow_imp.id(10007345493329496398)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10007346240276496402)
,p_report_id=>wwv_flow_imp.id(10007346135201496401)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10007347692909496409)
,p_view_id=>wwv_flow_imp.id(10007346240276496402)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10007347148911496406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10007348640764496413)
,p_view_id=>wwv_flow_imp.id(10007346240276496402)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10007348180537496410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10007349632821496417)
,p_view_id=>wwv_flow_imp.id(10007346240276496402)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10007349121492496414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10007350617135496421)
,p_view_id=>wwv_flow_imp.id(10007346240276496402)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10007350164355496417)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10007351689219496425)
,p_view_id=>wwv_flow_imp.id(10007346240276496402)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10007351107496496421)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10007352625908496428)
,p_view_id=>wwv_flow_imp.id(10007346240276496402)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10007352138044496425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10007353645938496432)
,p_view_id=>wwv_flow_imp.id(10007346240276496402)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10007353124199496429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10007354699364496436)
,p_view_id=>wwv_flow_imp.id(10007346240276496402)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10007354166422496433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10007355117446496437)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10007345336732496398)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Mis Vehiculos - Save Interactive Grid Data'
,p_static_id=>'mis-vehiculos-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10007355117446496437
,p_created_on=>wwv_flow_imp.dz('20261101223719Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223719Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Publicar Viaje'
,p_alias=>'PUBLICAR-VIAJE'
,p_step_title=>'Publicar Viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005140297840716919)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261101223905Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102050330Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007540332566890365)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261101223906Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223906Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007541233227890541)
,p_plug_name=>'Publicar Viaje'
,p_static_id=>'publicar-viaje'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'VIAJE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007551024746890552)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007552347383890553)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Publicar viaje'
,p_button_position=>'CREATE'
,p_button_condition=>'P12_ID_VIAJE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224145Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007551570437890553)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P12_ID_VIAJE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007551969858890553)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P12_ID_VIAJE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10007552795791890553)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007544974784890547)
,p_name=>'P12_CUPOS_OFRECIDOS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_prompt=>'Cupos ofrecidos'
,p_source=>'CUPOS_OFRECIDOS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224145Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007545749132890548)
,p_name=>'P12_DISTANCIA_KM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_source=>'DISTANCIA_KM'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224145Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007545365980890547)
,p_name=>'P12_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_source=>'ESTADO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224145Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007543300511890545)
,p_name=>'P12_FECHA_HORA_SALIDA'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_prompt=>'Fecha y hora de salida'
,p_format_mask=>'DD/MM/YYYY HH24:MI'
,p_source=>'FECHA_HORA_SALIDA'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224145Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007546918626890549)
,p_name=>'P12_HORA_LLEGADA_REAL'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_source=>'HORA_LLEGADA_REAL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224145Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007546139440890548)
,p_name=>'P12_HORA_SALIDA_REAL'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_source=>'HORA_SALIDA_REAL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224145Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007542636798890543)
,p_name=>'P12_ID_PUNTO_ORIGEN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_prompt=>'Punto de origen'
,p_source=>'ID_PUNTO_ORIGEN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.nombre || '' - '' || p.direccion AS d,',
'       p.id_punto AS r',
'  FROM punto p',
'  JOIN localidad l ON l.id_localidad = p.id_localidad',
' ORDER BY l.nombre, p.direccion'))
,p_lov_display_null=>'YES'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224145Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007541582173890541)
,p_name=>'P12_ID_VIAJE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_source=>'ID_VIAJE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007648547425900801)
,p_name=>'P12_PARADAS'
,p_is_required=>true
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_prompt=>'Paradas iniciales'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.nombre || '' - '' || p.direccion AS d,',
'       p.id_punto AS r',
'  FROM punto p',
'  JOIN localidad l ON l.id_localidad = p.id_localidad',
' ORDER BY l.nombre, p.direccion'))
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20261101224144Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224144Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007541928443890542)
,p_name=>'P12_PLACA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_prompt=>unistr('Veh\00EDculo')
,p_source=>'PLACA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT placa || '' - '' || marca || '' '' || modelo || '' ('' || cupos || '' cupos)'' AS d,',
'       placa AS r',
'  FROM vehiculo',
' WHERE id_conductor = :AI_ID_ESTUDIANTE',
' ORDER BY placa'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224144Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007544151268890546)
,p_name=>'P12_RUTA_GENERAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_prompt=>'Ruta general'
,p_source=>'RUTA_GENERAL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101224145Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007544564114890547)
,p_name=>'P12_TARIFA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_item_source_plug_id=>wwv_flow_imp.id(10007541233227890541)
,p_prompt=>'Tarifa'
,p_source=>'TARIFA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10007543777309890545)
,p_validation_name=>'P12_FECHA_HORA_SALIDA must be timestamp'
,p_static_id=>'p12-fecha-hora-salida-must-be-timestamp'
,p_validation_sequence=>30
,p_validation=>'P12_FECHA_HORA_SALIDA'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(10007543300511890545)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10007547321059890549)
,p_validation_name=>'P12_HORA_LLEGADA_REAL must be timestamp'
,p_static_id=>'p12-hora-llegada-real-must-be-timestamp'
,p_validation_sequence=>100
,p_validation=>'P12_HORA_LLEGADA_REAL'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(10007546918626890549)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10007546515788890549)
,p_validation_name=>'P12_HORA_SALIDA_REAL must be timestamp'
,p_static_id=>'p12-hora-salida-real-must-be-timestamp'
,p_validation_sequence=>90
,p_validation=>'P12_HORA_SALIDA_REAL'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(10007546139440890548)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10007553138840890554)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10007541233227890541)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Publicar Viaje'
,p_static_id=>'initialize-form-publicar-viaje'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10007553138840890554
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261101223907Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10007553533353890554)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Publicar viaje con paradas'
,p_static_id=>'process-form-publicar-viaje'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_viaje viaje.id_viaje%TYPE;',
'    v_orden    NUMBER := 0;',
'BEGIN',
'    -- RF3: el viaje se crea en estado PROGRAMADO',
'    INSERT INTO viaje (placa, id_punto_origen, fecha_hora_salida, ruta_general,',
'                       tarifa, cupos_ofrecidos, estado)',
'    VALUES (:P12_PLACA, :P12_ID_PUNTO_ORIGEN,',
'            TO_TIMESTAMP(:P12_FECHA_HORA_SALIDA, ''DD/MM/YYYY HH24:MI''),',
'            :P12_RUTA_GENERAL, :P12_TARIFA, :P12_CUPOS_OFRECIDOS, ''PROGRAMADO'');',
'',
'    -- id del viaje recien creado: el mayor id de ese vehiculo',
'    SELECT MAX(id_viaje)',
'      INTO v_id_viaje',
'      FROM viaje',
'     WHERE placa = :P12_PLACA;',
'',
'    -- Paradas iniciales: el checkbox devuelve los id_punto marcados',
'    -- separados por '':'' (por ejemplo 228:230)',
'    FOR r IN (SELECT id_punto',
'                FROM punto',
'               WHERE INSTR('':'' || :P12_PARADAS || '':'', '':'' || id_punto || '':'') > 0',
'               ORDER BY id_punto) LOOP',
'        v_orden := v_orden + 1;',
'        INSERT INTO parada_viaje (id_viaje, id_punto, orden, origen_parada)',
'        VALUES (v_id_viaje, r.id_punto, v_orden, ''INICIAL'');',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10007552347383890553)
,p_process_success_message=>'Viaje publicado correctamente.'
,p_internal_uid=>10007553533353890554
,p_created_on=>wwv_flow_imp.dz('20261101223907Z')
,p_updated_on=>wwv_flow_imp.dz('20261102050330Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Mis Viajes'
,p_alias=>'MIS-VIAJES'
,p_step_title=>'Mis Viajes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005140297840716919)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261101231744Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102050354Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10010768339479122253)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261101231745Z')
,p_updated_on=>wwv_flow_imp.dz('20261101231745Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10010769604264122651)
,p_name=>'Mis Viajes'
,p_static_id=>'mis-viajes'
,p_template=>4075786578761660127
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.id_viaje,',
'       TO_CHAR(v.fecha_hora_salida, ''DD/MM/YYYY HH24:MI'') AS salida,',
'       v.placa,',
'       v.ruta_general,',
'       v.tarifa,',
'       v.cupos_ofrecidos,',
'       v.estado,',
'       (SELECT COUNT(*)',
'          FROM solicitud s2',
'         WHERE s2.id_viaje = v.id_viaje',
'           AND s2.estado = ''ACEPTADA'') AS confirmados,',
'       e.nombre || '' '' || e.apellidos AS pasajeros_confirmados',
'  FROM viaje v',
'  JOIN vehiculo ve      ON ve.placa = v.placa',
'  LEFT JOIN solicitud s ON s.id_viaje = v.id_viaje',
'                       AND s.estado = ''ACEPTADA''',
'  LEFT JOIN estudiante e ON e.id_estudiante = s.id_pasajero',
' WHERE ve.id_conductor = :AI_ID_ESTUDIANTE',
' ORDER BY v.fecha_hora_salida DESC, pasajeros_confirmados'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_on=>wwv_flow_imp.dz('20261102050354Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10010773092129122668)
,p_query_column_id=>8
,p_column_alias=>'CONFIRMADOS'
,p_column_display_sequence=>8
,p_column_heading=>'Confirmados'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10010772287451122665)
,p_query_column_id=>6
,p_column_alias=>'CUPOS_OFRECIDOS'
,p_column_display_sequence=>6
,p_column_heading=>'Cupos Ofrecidos'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10010772604252122667)
,p_query_column_id=>7
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>7
,p_column_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10010770215589122657)
,p_query_column_id=>1
,p_column_alias=>'ID_VIAJE'
,p_column_display_sequence=>1
,p_column_heading=>'Id Viaje'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10010773453580122670)
,p_query_column_id=>9
,p_column_alias=>'PASAJEROS_CONFIRMADOS'
,p_column_display_sequence=>9
,p_column_heading=>'Pasajeros Confirmados'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10010771027603122661)
,p_query_column_id=>3
,p_column_alias=>'PLACA'
,p_column_display_sequence=>3
,p_column_heading=>'Placa'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10010771409091122662)
,p_query_column_id=>4
,p_column_alias=>'RUTA_GENERAL'
,p_column_display_sequence=>4
,p_column_heading=>'Ruta General'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10010770602709122659)
,p_query_column_id=>2
,p_column_alias=>'SALIDA'
,p_column_display_sequence=>2
,p_column_heading=>'Salida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10010771824402122664)
,p_query_column_id=>5
,p_column_alias=>'TARIFA'
,p_column_display_sequence=>5
,p_column_heading=>'Tarifa'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261101231748Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Gestionar Viaje'
,p_alias=>'GESTIONAR-VIAJE'
,p_step_title=>'Gestionar Viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005140297840716919)
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20261101231843Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261101235200Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10010798854629128173)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261101231844Z')
,p_updated_on=>wwv_flow_imp.dz('20261101231844Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10010805921751128514)
,p_plug_name=>'Solicitudes del viaje'
,p_static_id=>'gestionar-viaje'
,p_title=>'Solicitudes del viaje'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.id_viaje,',
'       s.id_pasajero,',
'       e.nombre || '' '' || e.apellidos AS pasajero,',
'       e.celular,',
'       l.nombre || '' - '' || p.direccion AS punto_recogida,',
'       s.fecha_solicitud,',
'       s.estado',
'  FROM solicitud s',
'  JOIN estudiante e ON e.id_estudiante = s.id_pasajero',
'  JOIN punto p      ON p.id_punto = s.id_punto',
'  JOIN localidad l  ON l.id_localidad = p.id_localidad',
'  JOIN viaje v      ON v.id_viaje = s.id_viaje',
'  JOIN vehiculo ve  ON ve.placa = v.placa',
' WHERE s.id_viaje = :P14_ID_VIAJE',
'   AND ve.id_conductor = :AI_ID_ESTUDIANTE'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Solicitudes del viaje'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20261101231847Z')
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10010807817116128523)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20261101231847Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10010807346655128521)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20261101231847Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10010811870474128533)
,p_name=>'CELULAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CELULAR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Celular'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10010814925855128540)
,p_name=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:Pendiente;PENDIENTE,Aceptada;ACEPTADA,Rechazada;RECHAZADA,Cancelada;CANCELADA'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10010813896139128537)
,p_name=>'FECHA_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_SOLICITUD'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Fecha solicitud'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10010809819557128528)
,p_name=>'ID_PASAJERO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PASAJERO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261101231847Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10010808880774128525)
,p_name=>'ID_VIAJE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_VIAJE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261101231847Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10010810854435128530)
,p_name=>'PASAJERO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PASAJERO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pasajero'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10010812852991128535)
,p_name=>'PUNTO_RECOGIDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUNTO_RECOGIDA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Punto de recogida'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10010806162446128517)
,p_internal_uid=>10010806162446128517
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10010806829481128520)
,p_interactive_grid_id=>wwv_flow_imp.id(10010806162446128517)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20261101231847Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10010806910119128521)
,p_report_id=>wwv_flow_imp.id(10010806829481128520)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10010808397092128525)
,p_view_id=>wwv_flow_imp.id(10010806910119128521)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10010807817116128523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10010809305860128527)
,p_view_id=>wwv_flow_imp.id(10010806910119128521)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10010808880774128525)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10010810366639128529)
,p_view_id=>wwv_flow_imp.id(10010806910119128521)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10010809819557128528)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10010811310468128532)
,p_view_id=>wwv_flow_imp.id(10010806910119128521)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10010810854435128530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10010812323573128535)
,p_view_id=>wwv_flow_imp.id(10010806910119128521)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10010811870474128533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10010813344327128537)
,p_view_id=>wwv_flow_imp.id(10010806910119128521)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10010812852991128535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10010814478960128539)
,p_view_id=>wwv_flow_imp.id(10010806910119128521)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10010813896139128537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10010815410372128542)
,p_view_id=>wwv_flow_imp.id(10010806910119128521)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10010814925855128540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007648680362900802)
,p_plug_name=>'Viaje'
,p_static_id=>'viaje'
,p_title=>'Viaje'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007648887355900804)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10007648680362900802)
,p_button_name=>'CAMBIAR_ESTADO'
,p_static_id=>'cambiar-estado'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cambiar Estado'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_on=>wwv_flow_imp.dz('20261101232855Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007649081665900806)
,p_name=>'P14_DISTANCIA_KM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10007648680362900802)
,p_prompt=>'Distancia recorrida (km), solo al completar'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007648761699900803)
,p_name=>'P14_ID_VIAJE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10007648680362900802)
,p_prompt=>'Viaje'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Viaje '' || v.id_viaje || '' - '' ||',
'       TO_CHAR(v.fecha_hora_salida, ''DD/MM/YYYY HH24:MI'') || '' - '' ||',
'       v.estado AS d,',
'       v.id_viaje AS r',
'  FROM viaje v',
'  JOIN vehiculo ve ON ve.placa = v.placa',
' WHERE ve.id_conductor = :AI_ID_ESTUDIANTE',
' ORDER BY v.fecha_hora_salida DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Escoge un viaje -'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007648950722900805)
,p_name=>'P14_NUEVO_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10007648680362900802)
,p_prompt=>'Nuevo estado'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:En curso;EN_CURSO,Completado;COMPLETADO,Cancelado;CANCELADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10007649170641900807)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cambiar estado del viaje'
,p_static_id=>'cambiar-estado-del-viaje'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- RF5: las reglas de la secuencia de estados y de las 2 horas',
'    -- las controla el trigger trg_viaje_bu_estado',
'    UPDATE viaje',
'       SET estado = :P14_NUEVO_ESTADO,',
'           hora_salida_real  = CASE WHEN :P14_NUEVO_ESTADO = ''EN_CURSO''',
'                                    THEN CAST(SYSTIMESTAMP AT TIME ZONE ''America/Bogota'' AS TIMESTAMP) ELSE hora_salida_real END,',
'           hora_llegada_real = CASE WHEN :P14_NUEVO_ESTADO = ''COMPLETADO''',
'                                    THEN CAST(SYSTIMESTAMP AT TIME ZONE ''America/Bogota'' AS TIMESTAMP) ELSE hora_llegada_real END,',
'           distancia_km      = CASE WHEN :P14_NUEVO_ESTADO = ''COMPLETADO''',
'                                    THEN TO_NUMBER(:P14_DISTANCIA_KM) ELSE distancia_km END',
'     WHERE id_viaje = :P14_ID_VIAJE',
'       AND placa IN (SELECT placa',
'                       FROM vehiculo',
'                      WHERE id_conductor = :AI_ID_ESTUDIANTE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10007648887355900804)
,p_process_success_message=>'Estado del viaje actualizado.'
,p_internal_uid=>10007649170641900807
,p_created_on=>wwv_flow_imp.dz('20261101232035Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235200Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10010815986795128543)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10010805921751128514)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Responder solicitudes'
,p_static_id=>'gestionar-viaje-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Solicitudes actualizadas.'
,p_internal_uid=>10010815986795128543
,p_created_on=>wwv_flow_imp.dz('20261101231847Z')
,p_updated_on=>wwv_flow_imp.dz('20261101232035Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Registro Pasajero'
,p_alias=>'REGISTRO-PASAJERO'
,p_step_title=>'Registro Pasajero'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261101235900Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102050305Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10014716350219986517)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261101235900Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235900Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10014717167648986725)
,p_plug_name=>'Registro Pasajero'
,p_static_id=>'registro-pasajero'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'V_ESTUDIANTE_PROGRAMA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10014723060393986733)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10014724313789986734)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrarme'
,p_button_position=>'CREATE'
,p_button_condition=>'P20_ID_ESTUDIANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235933Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10014723574204986733)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P20_ID_ESTUDIANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10014723989324986734)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P20_ID_ESTUDIANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10014724779403986735)
,p_branch_action=>'f?p=&APP_ID.:9999:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014718603712986728)
,p_name=>'P20_APELLIDOS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_item_source_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_prompt=>'Apellidos'
,p_source=>'APELLIDOS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014719459578986728)
,p_name=>'P20_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_item_source_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_prompt=>'Celular'
,p_source=>'CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014719856869986729)
,p_name=>'P20_CONTRASENA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_item_source_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_prompt=>unistr('Contrase\00F1a')
,p_source=>'CONTRASENA'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235933Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014719078305986728)
,p_name=>'P20_CORREO_INSTITUCIONAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_item_source_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_prompt=>'Correo institucional'
,p_source=>'CORREO_INSTITUCIONAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235933Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014717891565986727)
,p_name=>'P20_DOCUMENTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_item_source_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_prompt=>'Documento'
,p_source=>'DOCUMENTO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014717483592986726)
,p_name=>'P20_ID_ESTUDIANTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_item_source_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_source=>'ID_ESTUDIANTE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014720266061986729)
,p_name=>'P20_ID_PROGRAMA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_item_source_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_prompt=>'Programa'
,p_source=>'ID_PROGRAMA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.nombre || '' - '' || u.nombre AS d,',
'       p.id_programa AS r',
'  FROM programa p',
'  JOIN universidad u ON u.id_universidad = p.id_universidad',
' ORDER BY u.nombre, p.nombre'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235933Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014718247571986727)
,p_name=>'P20_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_item_source_plug_id=>wwv_flow_imp.id(10014717167648986725)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10014725115064986736)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10014717167648986725)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registro Pasajero'
,p_static_id=>'initialize-form-registro-pasajero'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10014725115064986736
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261101235902Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10014725590906986736)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Registrar pasajero'
,p_static_id=>'process-form-registro-pasajero'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_estudiante estudiante.id_estudiante%TYPE;',
'BEGIN',
'    -- RF7: datos personales del pasajero',
'    INSERT INTO estudiante (documento, nombre, apellidos, correo_institucional, celular, contrasena)',
'    VALUES (:P20_DOCUMENTO, :P20_NOMBRE, :P20_APELLIDOS, :P20_CORREO_INSTITUCIONAL, :P20_CELULAR, :P20_CONTRASENA);',
'',
'    -- id generado para el estudiante (el documento es unico)',
'    SELECT id_estudiante',
'      INTO v_id_estudiante',
'      FROM estudiante',
'     WHERE documento = :P20_DOCUMENTO;',
'',
'    INSERT INTO estudiante_programa (id_estudiante, id_programa)',
'    VALUES (v_id_estudiante, :P20_ID_PROGRAMA);',
'',
'    INSERT INTO pasajero (id_estudiante)',
'    VALUES (v_id_estudiante);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10014724313789986734)
,p_process_success_message=>unistr('Registro exitoso. Ya puedes iniciar sesi\00F3n con tu correo institucional.')
,p_internal_uid=>10014725590906986736
,p_created_on=>wwv_flow_imp.dz('20261101235902Z')
,p_updated_on=>wwv_flow_imp.dz('20261102050305Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Mi Cuenta'
,p_alias=>'MI-CUENTA'
,p_step_title=>'Mi Cuenta'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005398761436336700)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261102000027Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102000154Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10014672255702378501)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102000027Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000027Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10014679870756378836)
,p_plug_name=>'Mi Cuenta'
,p_static_id=>'mi-cuenta'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'V_ESTUDIANTE_PROGRAMA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000030Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10014685975307378849)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000030Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10014686871417378851)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar cambios'
,p_button_position=>'CHANGE'
,p_button_condition=>'P21_ID_ESTUDIANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000154Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10014687628747378852)
,p_branch_action=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000030Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014681518054378840)
,p_name=>'P21_APELLIDOS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_item_source_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_prompt=>'Apellidos'
,p_source=>'APELLIDOS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000030Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014682349523378843)
,p_name=>'P21_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_item_source_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_prompt=>'Celular'
,p_source=>'CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000030Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014682797100378844)
,p_name=>'P21_CONTRASENA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_item_source_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_prompt=>unistr('Contrase\00F1a')
,p_source=>'CONTRASENA'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000154Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014681998113378841)
,p_name=>'P21_CORREO_INSTITUCIONAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_item_source_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_prompt=>'Correo institucional'
,p_source=>'CORREO_INSTITUCIONAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000154Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014680791054378838)
,p_name=>'P21_DOCUMENTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_item_source_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_prompt=>'Documento'
,p_source=>'DOCUMENTO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000030Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014680246241378837)
,p_name=>'P21_ID_ESTUDIANTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_item_source_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_source=>'ID_ESTUDIANTE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000030Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014683191254378845)
,p_name=>'P21_ID_PROGRAMA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_item_source_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_prompt=>'Programa'
,p_source=>'ID_PROGRAMA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.nombre || '' - '' || u.nombre AS d,',
'       p.id_programa AS r',
'  FROM programa p',
'  JOIN universidad u ON u.id_universidad = p.id_universidad',
' ORDER BY u.nombre, p.nombre'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000154Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10014681109240378839)
,p_name=>'P21_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_item_source_plug_id=>wwv_flow_imp.id(10014679870756378836)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000030Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10007649227537900808)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cargar estudiante actual'
,p_static_id=>'cargar-estudiante-actual'
,p_process_sql_clob=>':P21_ID_ESTUDIANTE := :AI_ID_ESTUDIANTE;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10007649227537900808
,p_created_on=>wwv_flow_imp.dz('20261102000154Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000154Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10014688012727378853)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10014679870756378836)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Mi Cuenta'
,p_static_id=>'initialize-form-mi-cuenta'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10014688012727378853
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000030Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10014688583024378855)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Actualizar datos del pasajero'
,p_static_id=>'process-form-mi-cuenta'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- RF8: el pasajero solo puede modificar sus propios datos',
'    UPDATE estudiante',
'       SET documento            = :P21_DOCUMENTO,',
'           nombre               = :P21_NOMBRE,',
'           apellidos            = :P21_APELLIDOS,',
'           correo_institucional = :P21_CORREO_INSTITUCIONAL,',
'           celular              = :P21_CELULAR,',
'           contrasena           = :P21_CONTRASENA',
'     WHERE id_estudiante = :AI_ID_ESTUDIANTE;',
'',
'    UPDATE estudiante_programa',
'       SET id_programa = :P21_ID_PROGRAMA',
'     WHERE id_estudiante = :AI_ID_ESTUDIANTE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10014686871417378851)
,p_process_success_message=>'Datos actualizados.'
,p_internal_uid=>10014688583024378855
,p_created_on=>wwv_flow_imp.dz('20261102000030Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000154Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Buscar Viajes'
,p_alias=>'BUSCAR-VIAJES'
,p_step_title=>'Buscar Viajes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261102000232Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102050418Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10015045903514391037)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102000232Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000232Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007649375857900809)
,p_plug_name=>'Buscar'
,p_static_id=>'buscar'
,p_title=>'Buscar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000304Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000304Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10015047133909391370)
,p_name=>'Viajes disponibles'
,p_static_id=>'buscar-viajes'
,p_template=>4075786578761660127
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.id_viaje,',
'       TO_CHAR(v.fecha_hora_salida, ''DD/MM/YYYY HH24:MI'') AS salida,',
'       e.nombre || '' '' || e.apellidos AS conductor,',
'       ve.marca || '' '' || ve.modelo || '' '' || ve.color || '' ('' || ve.placa || '')'' AS vehiculo,',
'       v.ruta_general,',
'       lo.nombre || '' - '' || po.direccion AS origen,',
'       l.nombre || '' - '' || p.direccion AS puntos_de_recogida,',
'       v.tarifa,',
'       v.cupos_ofrecidos - (SELECT COUNT(*)',
'                              FROM solicitud s',
'                             WHERE s.id_viaje = v.id_viaje',
'                               AND s.estado = ''ACEPTADA'') AS cupos_disponibles',
'  FROM viaje v',
'  JOIN vehiculo ve     ON ve.placa = v.placa',
'  JOIN estudiante e    ON e.id_estudiante = ve.id_conductor',
'  JOIN punto po        ON po.id_punto = v.id_punto_origen',
'  JOIN localidad lo    ON lo.id_localidad = po.id_localidad',
'  JOIN parada_viaje pv ON pv.id_viaje = v.id_viaje',
'  JOIN punto p         ON p.id_punto = pv.id_punto',
'  JOIN localidad l     ON l.id_localidad = p.id_localidad',
' WHERE v.estado = ''PROGRAMADO''',
'   AND (:P22_FECHA IS NULL',
'        OR TRUNC(v.fecha_hora_salida) = TO_DATE(:P22_FECHA, ''DD/MM/YYYY''))',
'   AND (:P22_LOCALIDAD IS NULL OR p.id_localidad = :P22_LOCALIDAD)',
' ORDER BY v.fecha_hora_salida, v.id_viaje, pv.orden'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261102000235Z')
,p_updated_on=>wwv_flow_imp.dz('20261102050418Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015048490579391375)
,p_query_column_id=>3
,p_column_alias=>'CONDUCTOR'
,p_column_display_sequence=>3
,p_column_heading=>'Conductor'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000236Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015051034663391381)
,p_query_column_id=>9
,p_column_alias=>'CUPOS_DISPONIBLES'
,p_column_display_sequence=>9
,p_column_heading=>'Cupos Disponibles'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000236Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015047774621391373)
,p_query_column_id=>1
,p_column_alias=>'ID_VIAJE'
,p_column_display_sequence=>1
,p_column_heading=>'Id Viaje'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000235Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015049786167391378)
,p_query_column_id=>6
,p_column_alias=>'ORIGEN'
,p_column_display_sequence=>6
,p_column_heading=>'Origen'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000236Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015050198408391379)
,p_query_column_id=>7
,p_column_alias=>'PUNTOS_DE_RECOGIDA'
,p_column_display_sequence=>7
,p_column_heading=>'Puntos De Recogida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000236Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015049372614391377)
,p_query_column_id=>5
,p_column_alias=>'RUTA_GENERAL'
,p_column_display_sequence=>5
,p_column_heading=>'Ruta General'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000236Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015048119243391374)
,p_query_column_id=>2
,p_column_alias=>'SALIDA'
,p_column_display_sequence=>2
,p_column_heading=>'Salida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000236Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015050545974391380)
,p_query_column_id=>8
,p_column_alias=>'TARIFA'
,p_column_display_sequence=>8
,p_column_heading=>'Tarifa'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000236Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015048986857391376)
,p_query_column_id=>4
,p_column_alias=>'VEHICULO'
,p_column_display_sequence=>4
,p_column_heading=>'Vehiculo'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000236Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007649685263900812)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10007649375857900809)
,p_button_name=>'BUSCAR'
,p_static_id=>'buscar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261102000304Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000304Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007649408127900810)
,p_name=>'P22_FECHA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10007649375857900809)
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000304Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000304Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007649592937900811)
,p_name=>'P22_LOCALIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10007649375857900809)
,p_prompt=>'Zona de recogida'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre || '' ('' || ciudad || '')'' AS d,',
'       id_localidad AS r',
'  FROM localidad',
' ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Todas -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000304Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000304Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Solicitar Cupo'
,p_alias=>'SOLICITAR-CUPO'
,p_step_title=>'Solicitar Cupo'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005398761436336700)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261102000413Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102000431Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10015308812074401114)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102000413Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000413Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007649784272900813)
,p_plug_name=>'Solicitar cupo'
,p_static_id=>'solicitar'
,p_title=>'Solicitar cupo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000431Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000431Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007650091895900816)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10007649784272900813)
,p_button_name=>'SOLICITAR'
,p_static_id=>'solicitar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261102000431Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000431Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007649992587900815)
,p_name=>'P23_ID_PUNTO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10007649784272900813)
,p_prompt=>'Punto de recogida'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.nombre || '' - '' || p.direccion AS d,',
'       p.id_punto AS r',
'  FROM parada_viaje pv',
'  JOIN punto p     ON p.id_punto = pv.id_punto',
'  JOIN localidad l ON l.id_localidad = p.id_localidad',
' WHERE pv.id_viaje = :P23_ID_VIAJE',
' ORDER BY pv.orden'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P23_ID_VIAJE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000431Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000431Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007649845585900814)
,p_name=>'P23_ID_VIAJE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10007649784272900813)
,p_prompt=>'Viaje'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Viaje '' || v.id_viaje || '' - '' ||',
'       TO_CHAR(v.fecha_hora_salida, ''DD/MM/YYYY HH24:MI'') || '' - '' ||',
'       v.ruta_general || '' - $'' || v.tarifa AS d,',
'       v.id_viaje AS r',
'  FROM viaje v',
'  JOIN vehiculo ve ON ve.placa = v.placa',
' WHERE v.estado = ''PROGRAMADO''',
'   AND ve.id_conductor <> :AI_ID_ESTUDIANTE',
'   AND v.cupos_ofrecidos > (SELECT COUNT(*)',
'                              FROM solicitud s',
'                             WHERE s.id_viaje = v.id_viaje',
'                               AND s.estado = ''ACEPTADA'')',
' ORDER BY v.fecha_hora_salida'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000431Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000431Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10007650189316900817)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Solicitar cupo'
,p_static_id=>'solicitar-cupo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- RF10: la solicitud queda PENDIENTE hasta que el conductor responda.',
'    -- Los triggers validan RN3 (viaje PROGRAMADO) y RN7 (no en su propio viaje).',
'    INSERT INTO solicitud (id_viaje, id_pasajero, id_punto, estado)',
'    VALUES (:P23_ID_VIAJE, :AI_ID_ESTUDIANTE, :P23_ID_PUNTO, ''PENDIENTE'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10007650091895900816)
,p_process_success_message=>'Solicitud enviada. El conductor debe aceptarla.'
,p_internal_uid=>10007650189316900817
,p_created_on=>wwv_flow_imp.dz('20261102000431Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000431Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Mis Solicitudes'
,p_alias=>'MIS-SOLICITUDES'
,p_step_title=>'Mis Solicitudes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005398761436336700)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261102000501Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102000536Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10015344184298405878)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102000501Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000501Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007650278967900818)
,p_plug_name=>'Cancelar solicitud'
,p_static_id=>'cancelar'
,p_title=>'Cancelar solicitud'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000536Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000536Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10015345292262406282)
,p_name=>'Mis Solicitudes'
,p_static_id=>'mis-solicitudes'
,p_template=>4075786578761660127
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.id_viaje,',
'       TO_CHAR(v.fecha_hora_salida, ''DD/MM/YYYY HH24:MI'') AS salida,',
'       e.nombre || '' '' || e.apellidos AS conductor,',
'       ve.marca || '' '' || ve.modelo || '' '' || ve.color || '' ('' || ve.placa || '')'' AS vehiculo,',
'       l.nombre || '' - '' || p.direccion AS punto_de_recogida,',
'       v.tarifa,',
'       v.estado AS estado_viaje,',
'       s.estado AS estado_solicitud,',
'       TO_CHAR(s.fecha_solicitud, ''DD/MM/YYYY HH24:MI'') AS fecha_solicitud',
'  FROM solicitud s',
'  JOIN viaje v      ON v.id_viaje = s.id_viaje',
'  JOIN vehiculo ve  ON ve.placa = v.placa',
'  JOIN estudiante e ON e.id_estudiante = ve.id_conductor',
'  JOIN punto p      ON p.id_punto = s.id_punto',
'  JOIN localidad l  ON l.id_localidad = p.id_localidad',
' WHERE s.id_pasajero = :AI_ID_ESTUDIANTE',
' ORDER BY v.fecha_hora_salida DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000536Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015346661809406288)
,p_query_column_id=>3
,p_column_alias=>'CONDUCTOR'
,p_column_display_sequence=>3
,p_column_heading=>'Conductor'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015348609728406293)
,p_query_column_id=>8
,p_column_alias=>'ESTADO_SOLICITUD'
,p_column_display_sequence=>8
,p_column_heading=>'Estado Solicitud'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015348259730406292)
,p_query_column_id=>7
,p_column_alias=>'ESTADO_VIAJE'
,p_column_display_sequence=>7
,p_column_heading=>'Estado Viaje'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015349011056406294)
,p_query_column_id=>9
,p_column_alias=>'FECHA_SOLICITUD'
,p_column_display_sequence=>9
,p_column_heading=>'Fecha Solicitud'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015345875759406285)
,p_query_column_id=>1
,p_column_alias=>'ID_VIAJE'
,p_column_display_sequence=>1
,p_column_heading=>'Id Viaje'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015347447323406290)
,p_query_column_id=>5
,p_column_alias=>'PUNTO_DE_RECOGIDA'
,p_column_display_sequence=>5
,p_column_heading=>'Punto De Recogida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015346235444406287)
,p_query_column_id=>2
,p_column_alias=>'SALIDA'
,p_column_display_sequence=>2
,p_column_heading=>'Salida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015347825871406291)
,p_query_column_id=>6
,p_column_alias=>'TARIFA'
,p_column_display_sequence=>6
,p_column_heading=>'Tarifa'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10015347066786406289)
,p_query_column_id=>4
,p_column_alias=>'VEHICULO'
,p_column_display_sequence=>4
,p_column_heading=>'Vehiculo'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102000505Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007650434550900820)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10007650278967900818)
,p_button_name=>'CANCELAR_SOLICITUD'
,p_static_id=>'cancelar-solicitud'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar Solicitud'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261102000536Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000536Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007650347957900819)
,p_name=>'P24_ID_VIAJE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10007650278967900818)
,p_prompt=>'Solicitud a cancelar'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Viaje '' || v.id_viaje || '' - '' ||',
'       TO_CHAR(v.fecha_hora_salida, ''DD/MM/YYYY HH24:MI'') || '' - '' ||',
'       s.estado AS d,',
'       s.id_viaje AS r',
'  FROM solicitud s',
'  JOIN viaje v ON v.id_viaje = s.id_viaje',
' WHERE s.id_pasajero = :AI_ID_ESTUDIANTE',
'   AND s.estado IN (''PENDIENTE'', ''ACEPTADA'')',
'   AND v.estado = ''PROGRAMADO''',
' ORDER BY v.fecha_hora_salida'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000536Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000536Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10007650535171900821)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cancelar solicitud'
,p_static_id=>'cancelar-solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- RF11: el trigger trg_solicitud_bu_cancelar valida RN4 (2 horas de anticipacion)',
'    UPDATE solicitud',
'       SET estado = ''CANCELADA''',
'     WHERE id_viaje = :P24_ID_VIAJE',
'       AND id_pasajero = :AI_ID_ESTUDIANTE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10007650434550900820)
,p_process_success_message=>'Solicitud cancelada.'
,p_internal_uid=>10007650535171900821
,p_created_on=>wwv_flow_imp.dz('20261102000536Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000536Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'RFC1 Demanda por Localidad'
,p_alias=>'RFC1-DEMANDA-POR-LOCALIDAD'
,p_step_title=>'RFC1 Demanda por Localidad'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005140297840716919)
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261102001952Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102044417Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10016293818675495003)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102001952Z')
,p_updated_on=>wwv_flow_imp.dz('20261102001952Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007650728791900823)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_title=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002026Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002026Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10016295774728495348)
,p_plug_name=>'RFC1 Demanda por Localidad'
,p_static_id=>'rfc1-demanda-por-localidad'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261102001955Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044417Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10016296083825495350)
,p_region_id=>wwv_flow_imp.id(10016295774728495348)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261102001955Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044417Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10016297877121495354)
,p_chart_id=>wwv_flow_imp.id(10016296083825495350)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.nombre AS localidad,',
'       COUNT(*) AS solicitudes',
'  FROM solicitud s',
'  JOIN punto p     ON p.id_punto = s.id_punto',
'  JOIN localidad l ON l.id_localidad = p.id_localidad',
' WHERE s.fecha_solicitud >= NVL(TO_DATE(:P30_FECHA_INICIO, ''DD/MM/YYYY''), DATE ''2000-01-01'')',
'   AND s.fecha_solicitud <  NVL(TO_DATE(:P30_FECHA_FIN, ''DD/MM/YYYY''), DATE ''2100-01-01'') + 1',
' GROUP BY l.nombre',
' ORDER BY solicitudes DESC'))
,p_items_value_column_name=>'SOLICITUDES'
,p_group_short_desc_column_name=>'LOCALIDAD'
,p_items_label_column_name=>'LOCALIDAD'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20261102001955Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044417Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10016296635510495353)
,p_chart_id=>wwv_flow_imp.id(10016296083825495350)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261102001955Z')
,p_updated_on=>wwv_flow_imp.dz('20261102001955Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10016297272707495354)
,p_chart_id=>wwv_flow_imp.id(10016296083825495350)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261102001955Z')
,p_updated_on=>wwv_flow_imp.dz('20261102001955Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007651020800900826)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10007650728791900823)
,p_button_name=>'CONSULTAR'
,p_static_id=>'consultar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261102002026Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002026Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007650960183900825)
,p_name=>'P30_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10007650728791900823)
,p_prompt=>'Hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002026Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002026Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007650867994900824)
,p_name=>'P30_FECHA_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10007650728791900823)
,p_prompt=>'Desde'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002026Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002026Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'RFC2 Ingresos por Localidad'
,p_alias=>'RFC2-INGRESOS-POR-LOCALIDAD'
,p_step_title=>'RFC2 Ingresos por Localidad'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005140297840716919)
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261102002130Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102044432Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10016559942165121489)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102002130Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002130Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007651169416900827)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_title=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002150Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002150Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10016561080406121811)
,p_plug_name=>'RFC2 Ingresos por Localidad'
,p_static_id=>'rfc2-ingresos-por-localidad'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261102002133Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044432Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10016561309849121813)
,p_region_id=>wwv_flow_imp.id(10016561080406121811)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261102002133Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044432Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10016563073980121816)
,p_chart_id=>wwv_flow_imp.id(10016561309849121813)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.nombre      AS localidad,',
'       SUM(v.tarifa) AS ingresos_estimados',
'  FROM solicitud s',
'  JOIN viaje v     ON v.id_viaje = s.id_viaje',
'  JOIN punto p     ON p.id_punto = s.id_punto',
'  JOIN localidad l ON l.id_localidad = p.id_localidad',
' WHERE s.estado = ''ACEPTADA''',
'   AND v.estado = ''COMPLETADO''',
'   AND v.fecha_hora_salida >= NVL(TO_DATE(:P31_FECHA_INICIO, ''DD/MM/YYYY''), DATE ''2000-01-01'')',
'   AND v.fecha_hora_salida <  NVL(TO_DATE(:P31_FECHA_FIN, ''DD/MM/YYYY''), DATE ''2100-01-01'') + 1',
' GROUP BY l.nombre',
' ORDER BY ingresos_estimados DESC'))
,p_items_value_column_name=>'INGRESOS_ESTIMADOS'
,p_group_short_desc_column_name=>'LOCALIDAD'
,p_items_label_column_name=>'LOCALIDAD'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20261102002133Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044432Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10016561868109121815)
,p_chart_id=>wwv_flow_imp.id(10016561309849121813)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261102002133Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002133Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10016562452225121816)
,p_chart_id=>wwv_flow_imp.id(10016561309849121813)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261102002133Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002133Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007651491545900830)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10007651169416900827)
,p_button_name=>'CONSULTAR'
,p_static_id=>'consultar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261102002150Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002150Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007651355210900829)
,p_name=>'P31_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10007651169416900827)
,p_prompt=>'Hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002150Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002150Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007651278789900828)
,p_name=>'P31_FECHA_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10007651169416900827)
,p_prompt=>'Desde'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002150Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002150Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'RFC3 Viajes por Conductor'
,p_alias=>'RFC3-VIAJES-POR-CONDUCTOR'
,p_step_title=>'RFC3 Viajes por Conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005140297840716919)
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261102002415Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102044452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10016641887333138002)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102002415Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002415Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007651593173900831)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_title=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002452Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10016644590534138348)
,p_plug_name=>'RFC3 Viajes por Conductor'
,p_static_id=>'rfc3-viajes-por-conductor'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261102002418Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10016645097718138350)
,p_region_id=>wwv_flow_imp.id(10016644590534138348)
,p_chart_type=>'line'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261102002418Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10016646731784138353)
,p_chart_id=>wwv_flow_imp.id(10016645097718138350)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.nombre || '' '' || e.apellidos AS conductor,',
'       TO_CHAR(TRUNC(v.fecha_hora_salida, ''IW''), ''YYYY-MM-DD'') AS semana,',
'       COUNT(*) AS viajes',
'  FROM viaje v',
'  JOIN vehiculo ve  ON ve.placa = v.placa',
'  JOIN estudiante e ON e.id_estudiante = ve.id_conductor',
'  JOIN punto po     ON po.id_punto = v.id_punto_origen',
' WHERE v.estado = ''COMPLETADO''',
'   AND (:P32_ID_CONDUCTOR IS NULL OR ve.id_conductor = :P32_ID_CONDUCTOR)',
'   AND (:P32_ID_LOCALIDAD IS NULL OR po.id_localidad = :P32_ID_LOCALIDAD)',
'   AND v.fecha_hora_salida >= NVL(TO_DATE(:P32_FECHA_INICIO, ''DD/MM/YYYY''), DATE ''2000-01-01'')',
'   AND v.fecha_hora_salida <  NVL(TO_DATE(:P32_FECHA_FIN, ''DD/MM/YYYY''), DATE ''2100-01-01'') + 1',
' GROUP BY e.nombre || '' '' || e.apellidos, TRUNC(v.fecha_hora_salida, ''IW'')',
' ORDER BY semana, conductor'))
,p_series_name_column_name=>'CONDUCTOR'
,p_items_value_column_name=>'VIAJES'
,p_group_short_desc_column_name=>'SEMANA'
,p_items_label_column_name=>'SEMANA'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20261102002419Z')
,p_updated_on=>wwv_flow_imp.dz('20261102044452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10016645517566138351)
,p_chart_id=>wwv_flow_imp.id(10016645097718138350)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261102002418Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002418Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10016646179645138352)
,p_chart_id=>wwv_flow_imp.id(10016645097718138350)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261102002418Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002418Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10007652035822900836)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10007651593173900831)
,p_button_name=>'CONSULTAR'
,p_static_id=>'consultar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261102002452Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007651934171900835)
,p_name=>'P32_FECHA_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10007651593173900831)
,p_prompt=>'Hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002452Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007651882879900834)
,p_name=>'P32_FECHA_INICIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10007651593173900831)
,p_prompt=>'Desde'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002452Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007651689715900832)
,p_name=>'P32_ID_CONDUCTOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10007651593173900831)
,p_prompt=>'Conductor'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.nombre || '' '' || e.apellidos AS d,',
'       c.id_estudiante AS r',
'  FROM conductor c',
'  JOIN estudiante e ON e.id_estudiante = c.id_estudiante',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Todos -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002452Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10007651713166900833)
,p_name=>'P32_ID_LOCALIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10007651593173900831)
,p_prompt=>'Localidad de origen'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre AS d,',
'       id_localidad AS r',
'  FROM localidad',
' ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Todos -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102002452Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002452Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'RFA1 Tablero Conductor'
,p_alias=>'RFA1-TABLERO-CONDUCTOR'
,p_step_title=>'RFA1 Tablero Conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005140297840716919)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261102002607Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102043628Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10016906718827149247)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102002608Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002608Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10016910755024149614)
,p_name=>'RFA1 Tablero Conductor'
,p_static_id=>'rfa1-tablero-conductor'
,p_template=>4075786578761660127
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*)                            AS viajes_completados,',
'       NVL(SUM(p.n), 0)                    AS pasajeros_transportados,',
'       NVL(SUM(v.tarifa * NVL(p.n, 0)), 0) AS ingresos,',
'       NVL(SUM(v.distancia_km), 0)         AS distancia_total_km,',
'       NVL(ROUND(SUM((CAST(v.hora_llegada_real AS DATE)',
'                    - CAST(v.hora_salida_real AS DATE)) * 24 * 60)), 0) AS tiempo_total_min',
'  FROM viaje v',
'  JOIN vehiculo ve ON ve.placa = v.placa',
'  LEFT JOIN (SELECT id_viaje, COUNT(*) AS n',
'               FROM solicitud',
'              WHERE estado = ''ACEPTADA''',
'              GROUP BY id_viaje) p ON p.id_viaje = v.id_viaje',
' WHERE ve.id_conductor = :AI_ID_ESTUDIANTE',
'   AND v.estado = ''COMPLETADO'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261102002611Z')
,p_updated_on=>wwv_flow_imp.dz('20261102043628Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10016912536624149624)
,p_query_column_id=>4
,p_column_alias=>'DISTANCIA_TOTAL_KM'
,p_column_display_sequence=>4
,p_column_heading=>'Distancia Total Km'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002611Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10016912198667149623)
,p_query_column_id=>3
,p_column_alias=>'INGRESOS'
,p_column_display_sequence=>3
,p_column_heading=>'Ingresos'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002611Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10016911772371149622)
,p_query_column_id=>2
,p_column_alias=>'PASAJEROS_TRANSPORTADOS'
,p_column_display_sequence=>2
,p_column_heading=>'Pasajeros Transportados'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002611Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10016912983345149625)
,p_query_column_id=>5
,p_column_alias=>'TIEMPO_TOTAL_MIN'
,p_column_display_sequence=>5
,p_column_heading=>'Tiempo Total Min'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002611Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10016911357142149621)
,p_query_column_id=>1
,p_column_alias=>'VIAJES_COMPLETADOS'
,p_column_display_sequence=>1
,p_column_heading=>'Viajes Completados'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002611Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'RFA2 Tablero Pasajero'
,p_alias=>'RFA2-TABLERO-PASAJERO'
,p_step_title=>'RFA2 Tablero Pasajero'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10005398761436336700)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261102002656Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102043701Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10017121885532537391)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10003578476893611722)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102002656Z')
,p_updated_on=>wwv_flow_imp.dz('20261102002656Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10017123659342537729)
,p_name=>'RFA2 Tablero Pasajero'
,p_static_id=>'rfa2-tablero-pasajero'
,p_template=>4075786578761660127
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.viajes_tomados,',
'       NVL(z.zona_mas_frecuente, ''Sin solicitudes'') AS zona_mas_frecuente,',
'       r.gasto_total,',
'       r.distancia_promedio_km,',
'       r.tiempo_promedio_min',
'  FROM (SELECT COUNT(*)                              AS viajes_tomados,',
'               NVL(SUM(v.tarifa), 0)                 AS gasto_total,',
'               NVL(ROUND(AVG(v.distancia_km), 1), 0) AS distancia_promedio_km,',
'               NVL(ROUND(AVG((CAST(v.hora_llegada_real AS DATE)',
'                            - CAST(v.hora_salida_real AS DATE)) * 24 * 60)), 0) AS tiempo_promedio_min',
'          FROM solicitud s',
'          JOIN viaje v ON v.id_viaje = s.id_viaje',
'         WHERE s.id_pasajero = :AI_ID_ESTUDIANTE',
'           AND s.estado = ''ACEPTADA''',
'           AND v.estado = ''COMPLETADO'') r,',
'       (SELECT MIN(zona) AS zona_mas_frecuente',
'          FROM (SELECT l.nombre AS zona',
'                  FROM solicitud s',
'                  JOIN punto p     ON p.id_punto = s.id_punto',
'                  JOIN localidad l ON l.id_localidad = p.id_localidad',
'                 WHERE s.id_pasajero = :AI_ID_ESTUDIANTE',
'                 GROUP BY l.nombre',
'                HAVING COUNT(*) = (SELECT MAX(COUNT(*))',
'                                     FROM solicitud s2',
'                                     JOIN punto p2 ON p2.id_punto = s2.id_punto',
'                                    WHERE s2.id_pasajero = :AI_ID_ESTUDIANTE',
'                                    GROUP BY p2.id_localidad))) z'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261102002659Z')
,p_updated_on=>wwv_flow_imp.dz('20261102043701Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10017125472199537736)
,p_query_column_id=>4
,p_column_alias=>'DISTANCIA_PROMEDIO_KM'
,p_column_display_sequence=>4
,p_column_heading=>'Distancia Promedio Km'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002659Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10017125080652537735)
,p_query_column_id=>3
,p_column_alias=>'GASTO_TOTAL'
,p_column_display_sequence=>3
,p_column_heading=>'Gasto Total'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002659Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10017125843291537737)
,p_query_column_id=>5
,p_column_alias=>'TIEMPO_PROMEDIO_MIN'
,p_column_display_sequence=>5
,p_column_heading=>'Tiempo Promedio Min'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002659Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10017124284671537733)
,p_query_column_id=>1
,p_column_alias=>'VIAJES_TOMADOS'
,p_column_display_sequence=>1
,p_column_heading=>'Viajes Tomados'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002659Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10017124639476537734)
,p_query_column_id=>2
,p_column_alias=>'ZONA_MAS_FRECUENTE'
,p_column_display_sequence=>2
,p_column_heading=>'Zona Mas Frecuente'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261102002659Z')
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Wheels Alpes - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102000715Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_last_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10007650606332900822)
,p_plug_name=>'Sin cuenta'
,p_static_id=>'sin-cuenta'
,p_title=>unistr('\00BFNo tienes cuenta?')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><a href="f?p=&APP_ID.:20:&APP_SESSION.">Registrarme como pasajero</a></p>',
'<p><a href="f?p=&APP_ID.:10:&APP_SESSION.">Registrarme como conductor</a></p>',
unistr('<p><a href="f?p=&APP_ID.:22:&APP_SESSION.">Ver viajes disponibles sin iniciar sesi\00F3n</a></p>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102000714Z')
,p_updated_on=>wwv_flow_imp.dz('20261102000715Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10003584226069611738)
,p_plug_name=>'Wheels Alpes'
,p_static_id=>'wheels-alpes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10003585828220611774)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10003584226069611738)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10003585138991611773)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10003584226069611738)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10003585585817611773)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10003584226069611738)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10003584765248611772)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10003584226069611738)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261101215239Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215239Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10003589925867611778)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10003589925867611778
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10003589581573611777)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10003589581573611777
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10003586288426611774)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10003586288426611774
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10003587222825611776)
,p_page_process_id=>wwv_flow_imp.id(10003586288426611774)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10003587755483611776)
,p_page_process_id=>wwv_flow_imp.id(10003586288426611774)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10003586734597611775)
,p_page_process_id=>wwv_flow_imp.id(10003586288426611774)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10003588115860611776)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10003588115860611776
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10003589171133611777)
,p_page_process_id=>wwv_flow_imp.id(10003588115860611776)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10003588625824611777)
,p_page_process_id=>wwv_flow_imp.id(10003588115860611776)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20261101215240Z')
,p_updated_on=>wwv_flow_imp.dz('20261101215240Z')
,p_created_by=>'R.SOTO@UNIANDES.EDU.CO'
,p_updated_by=>'R.SOTO@UNIANDES.EDU.CO'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
