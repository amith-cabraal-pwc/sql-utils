USE [pwc-dam-activity]
ALTER TABLE [dbo].dam_asset_activity
DROP CONSTRAINT FK_dam_asset ,
CONSTRAINT FK_activity_type,
CONSTRAINT FK_user
PRINT 'Dropping constraints'
GO
TRUNCATE TABLE [dbo].dam_asset_activity;
GO
TRUNCATE TABLE [dbo].dam_asset;
GO
TRUNCATE TABLE [dbo].aem_user;
GO
TRUNCATE TABLE [dbo].dam_asset_activity_type
GO
PRINT 'Table data truncated'
ALTER TABLE [dbo].dam_asset_activity
ADD CONSTRAINT FK_dam_asset FOREIGN KEY (asset_id) REFERENCES [dam_asset](id),
CONSTRAINT FK_activity_type FOREIGN KEY (activity_type) REFERENCES [dam_asset_activity_type](id),
CONSTRAINT FK_user FOREIGN KEY (user_id) REFERENCES [aem_user](id)
PRINT 'Added constraints back'
