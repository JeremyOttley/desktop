debug_print("Window Name: "..	get_window_name());
debug_print("Application name: "..get_application_name())

if (get_application_name() == "Document Viewer") then
   unmaximize();
   set_window_geometry(300,0,1150,1200);
   set_on_top();
   maximize();
end

if (get_application_name() == "Adobe Acrobat Pro") then
   unmaximize();
   set_window_geometry(400,0,1150,1200);
   set_on_top();
   maximize_vertically();
end
