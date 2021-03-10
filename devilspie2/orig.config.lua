debug_print("Window Name: "..	get_window_name());
debug_print("Application name: "..get_application_name())

--if (get_window_name()=="Document Viewer") then
--	set_window_position(1600,300);
--	set_on_top();
--	maximize();
--end

--if string.match(get_window_name(), "Document Viewer") then
--   set_window_position(1600,300);
--   set_on_top();
--   maximize();
--end

if (get_application_name() == "Document Viewer") then
   set_window_position(2000,300);
   set_on_top();
   maximize();
end

if (get_application_name() == "Adobe Acrobat Pro") then
   set_window_position(2000,300);
   set_on_top();
   maximize();
end
