if (get_application_name() == "Document Viewer") then
   unmaximize();
   set_window_geometry(300,0,1150,1200);
   set_on_top();
   maximize();
end

if (get_application_name() == "Evince") then
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
