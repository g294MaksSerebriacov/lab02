Alter table bulding add constraint bu_id_pr_key PRIMARY KEY (build_id);
Alter table Allrooms add constraint ro_id_pr_key PRIMARY KEY (room_id);
Alter table Employees add constraint emp_id_pr_key PRIMARY KEY (Employees_id);
Alter table Hardware add constraint pc_id_pr_key PRIMARY KEY (pc_id);
Alter table Software add constraint so_id_pr_key PRIMARY KEY (soft_id);

Alter table bulding add constraint bu_FC_bu FOREIGN KEY (build_id) references Allrooms (build_id);
Alter table Employees add constraint em_FC_emp FOREIGN KEY (Employees_id) references Allrooms (Employees_id);
create table brige
(
pc_id integer Primary Key,
room_id integer Not Null
);
Alter table brige add constraint pc_FC_ro FOREIGN KEY (room_id) references Allrooms (room_id);
Alter table brige add constraint pc_FC_pc FOREIGN KEY (pc_id) references prescribed (pc_id);
Alter table prescribed add constraint so_FC_so FOREIGN KEY (soft_id) references Software (soft_id);
Alter table brige add constraint pc_FC_pc FOREIGN KEY (pc_id) references Hardware (pc_id);

