﻿ALTER TABLE SFA_Table_Trl ADD CONSTRAINT FK_SFA_Table_Trl_AD_Language FOREIGN KEY (AD_Language)
REFERENCES AD_Language(AD_Language) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;


ALTER TABLE SFA_Table ADD CONSTRAINT FK_SFA_Table_EntityType FOREIGN KEY (EntityType)
REFERENCES AD_EntityType(EntityType) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Table ADD CONSTRAINT FK_SFA_Table_AD_Rule FOREIGN KEY (AD_Rule_ID)
REFERENCES AD_Rule (AD_Rule_ID) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Table ADD CONSTRAINT  FK_SFA_Table_AD_Table FOREIGN KEY (AD_Table_ID)
REFERENCES AD_Table (AD_Table_ID) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Table ADD CONSTRAINT  FK_SFA_Table_Trl_SFA_Table FOREIGN KEY (SFA_Table_ID)
REFERENCES SFA_Table (SFA_Table_ID) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER Table SFA_Column ADD CONSTRAINT SFA_Column_AD_Column FOREIGN KEY (AD_Column_ID)
REFERENCES AD_Column (AD_Column_ID) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Column_Trl ADD CONSTRAINT FK_SFA_Column_Trl_SFA_Column FOREIGN KEY (SFA_Column_ID)
REFERENCES SFA_Column (SFA_Column_ID) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER Table SFA_Column ADD CONSTRAINT FK_SFA_Column_SFA_Table FOREIGN KEY (SFA_Table_ID)
REFERENCES SFA_Table (SFA_Table_ID) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE SFA_Column ADD CONSTRAINT FK_SFA_Column_AD_Reference_Value FOREIGN KEY (AD_Reference_Value_ID)
REFERENCES AD_Reference(AD_Reference_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Column ADD CONSTRAINT FK_SFA_Column_AD_Element FOREIGN KEY (AD_Element_ID)
REFERENCES AD_Element(AD_Element_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Column ADD CONSTRAINT FK_SFA_Column_AD_Column FOREIGN KEY (AD_Column_ID)
REFERENCES AD_Column(AD_Column_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Column ADD CONSTRAINT FK_SFA_Column_AD_Val_Rule FOREIGN KEY (AD_Val_Rule_ID)
REFERENCES AD_Val_Rule(AD_Val_Rule_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Column ADD CONSTRAINT FK_SFA_Column_AD_Reference FOREIGN KEY (AD_Reference_ID)
REFERENCES AD_Reference(AD_Reference_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Column ADD CONSTRAINT FK_SFA_Column_EntityType FOREIGN KEY (EntityType)
REFERENCES AD_EntityType(EntityType) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Column_Trl ADD CONSTRAINT FK_SFA_Column_Trl_AD_Language FOREIGN KEY (AD_Language)
REFERENCES AD_Language(AD_Language) 
ON UPDATE CASCADE ON DELETE RESTRICT;


ALTER TABLE SFA_SyncMenu ADD CONSTRAINT FK_SFA_SyncMenu_SFA_Table FOREIGN KEY (SFA_Table_ID)
REFERENCES SFA_Table(SFA_Table_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_SyncMenu ADD CONSTRAINT FK_SFA_SyncMenu_AD_RuleAfter FOREIGN KEY (AD_RuleAfter_ID)
REFERENCES AD_Rule(AD_Rule_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_SyncMenu ADD CONSTRAINT FK_SFA_SyncMenu_AD_RuleBefore FOREIGN KEY (AD_RuleBefore_ID)
REFERENCES AD_Rule(AD_Rule_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_SyncMenu ADD CONSTRAINT FK_SFA_SyncMenu_EntityType FOREIGN KEY (EntityType)
REFERENCES AD_EntityType(EntityType) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_SyncMenu ADD CONSTRAINT FK_SFA_SyncMenu_WS_WebService FOREIGN KEY (WS_WebService_ID)
REFERENCES WS_WebService(WS_WebService_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_SyncMenu ADD CONSTRAINT FK_SFA_SyncMenu_WS_WebServiceType FOREIGN KEY (WS_WebServiceType_ID)
REFERENCES WS_WebServiceType(WS_WebServiceType_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_SyncMenu_Trl ADD CONSTRAINT FK_SFA_SyncMenu_Trl_SFA_SyncMenu FOREIGN KEY (SFA_SyncMenu_ID)
REFERENCES SFA_SyncMenu(SFA_SyncMenu_ID) 
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE SFA_SyncMenu_Trl ADD CONSTRAINT FK_SFA_SyncMenu_Trl_AD_Language FOREIGN KEY (AD_Language)
REFERENCES AD_Language(AD_Language) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Menu ADD CONSTRAINT FK_SFA_Menu_EntityType FOREIGN KEY (EntityType)
REFERENCES AD_EntityType(EntityType) 
ON UPDATE CASCADE ON DELETE RESTRICT;


ALTER TABLE SFA_Menu ADD CONSTRAINT FK_SFA_Menu_AD_Form FOREIGN KEY (AD_Form_ID)
REFERENCES AD_Form(AD_Form_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Menu ADD CONSTRAINT FK_SFA_Menu_QuickActionMenu FOREIGN KEY (QuickActionMenu_ID)
REFERENCES SFA_Menu(SFA_Menu_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Menu ADD CONSTRAINT FK_SFA_Menu_AD_Process FOREIGN KEY (AD_Process_ID)
REFERENCES AD_Process(AD_Process_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Menu ADD CONSTRAINT FK_SFA_Menu_SFA_Window FOREIGN KEY (SFA_Window_ID)
REFERENCES SFA_Window(SFA_Window_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Menu ADD CONSTRAINT FK_SFA_Menu_SFA_Table FOREIGN KEY (SFA_Table_ID)
REFERENCES SFA_Table(SFA_Table_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Menu ADD CONSTRAINT FK_SFA_Menu_SFA_SyncMenu FOREIGN KEY (SFA_SyncMenu_ID)
REFERENCES SFA_SyncMenu(SFA_SyncMenu_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Menu_Trl ADD CONSTRAINT FK_SFA_Menu_Trl_AD_Language FOREIGN KEY (AD_Language)
REFERENCES AD_Language(AD_Language) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Menu_Trl ADD CONSTRAINT FK_SFA_Menu_Trl_SFA_Menu FOREIGN KEY (SFA_Menu_ID)
REFERENCES SFA_Menu(SFA_Menu_ID) 
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE SFA_Window ADD CONSTRAINT FK_SFA_Window_EntityType FOREIGN KEY (EntityType)
REFERENCES AD_EntityType(EntityType) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Window_Trl ADD CONSTRAINT FK_SFA_Window_Trl_SFA_Window FOREIGN KEY (SFA_Window_ID)
REFERENCES SFA_Window(SFA_Window_ID) 
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE SFA_Tab ADD CONSTRAINT FK_SFA_Tab_SFA_Table FOREIGN KEY (SFA_Table_ID)
REFERENCES SFA_Table(SFA_Table_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Tab ADD CONSTRAINT FK_SFA_Tab_SFA_Window FOREIGN KEY (SFA_Window_ID)
REFERENCES SFA_Window(SFA_Window_ID) 
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE SFA_Tab ADD CONSTRAINT FK_SFA_Tab_EntityType FOREIGN KEY (EntityType)
REFERENCES AD_EntityType(EntityType) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Tab_Trl ADD CONSTRAINT FK_SFA_Tab_Trl_SFA_Tab FOREIGN KEY (SFA_Tab_ID)
REFERENCES SFA_Tab(SFA_Tab_ID) 
ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE SFA_Field ADD CONSTRAINT FK_SFA_Field_EntityType FOREIGN KEY (EntityType)
REFERENCES AD_EntityType(EntityType) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Field ADD CONSTRAINT FK_SFA_Field_SFA_Column FOREIGN KEY (SFA_Column_ID)
REFERENCES SFA_Column(SFA_Column_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_Field ADD CONSTRAINT FK_SFA_Field_SFA_Tab FOREIGN KEY (SFA_Tab_ID)
REFERENCES SFA_Tab(SFA_Tab_ID) 
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE SFA_Field_Trl ADD CONSTRAINT FK_SFA_Field_Trl_SFA_Field FOREIGN KEY (SFA_Field_ID)
REFERENCES SFA_Field(SFA_Field_ID) 
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE SFA_UserDocSequence ADD CONSTRAINT FK_SFA_UserDocSequence_C_DocType FOREIGN KEY (C_DocType_ID)
REFERENCES C_DocType(C_DocType_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_UserDocSequence ADD CONSTRAINT FK_SFA_UserDocSequence_AD_User FOREIGN KEY (AD_User_ID)
REFERENCES AD_User(AD_User_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE SFA_UserDocSequence ADD CONSTRAINT FK_SFA_UserDocSequence_AD_Sequence FOREIGN KEY (AD_Sequence_ID)
REFERENCES AD_Sequence(AD_Sequence_ID) 
ON UPDATE CASCADE ON DELETE RESTRICT;
