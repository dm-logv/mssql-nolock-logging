CREATE TABLE [logging].[tLog]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [loadDtm] DATETIME2(3) NOT NULL DEFAULT GETDATE(), 
    [user] NVARCHAR(128) NOT NULL DEFAULT SUSER_SNAME(), 
    [host] NVARCHAR(128) NOT NULL DEFAULT HOST_NAME(), 
    [spId] INT NOT NULL DEFAULT @@SPID, 
    [proc] NVARCHAR(256) NULL, 
    [msg] NVARCHAR(MAX) NULL, 
    [cnt] BIGINT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Log row identifier',
    @level0type = N'SCHEMA',
    @level0name = N'logging',
    @level1type = N'TABLE',
    @level1name = N'tLog',
    @level2type = N'COLUMN',
    @level2name = N'id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Log event timestamp',
    @level0type = N'SCHEMA',
    @level0name = N'logging',
    @level1type = N'TABLE',
    @level1name = N'tLog',
    @level2type = N'COLUMN',
    @level2name = N'loadDtm'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'System user',
    @level0type = N'SCHEMA',
    @level0name = N'logging',
    @level1type = N'TABLE',
    @level1name = N'tLog',
    @level2type = N'COLUMN',
    @level2name = N'user'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Session host',
    @level0type = N'SCHEMA',
    @level0name = N'logging',
    @level1type = N'TABLE',
    @level1name = N'tLog',
    @level2type = N'COLUMN',
    @level2name = N'host'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Query SPID',
    @level0type = N'SCHEMA',
    @level0name = N'logging',
    @level1type = N'TABLE',
    @level1name = N'tLog',
    @level2type = N'COLUMN',
    @level2name = N'spId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Custom procedure or process name',
    @level0type = N'SCHEMA',
    @level0name = N'logging',
    @level1type = N'TABLE',
    @level1name = N'tLog',
    @level2type = N'COLUMN',
    @level2name = N'proc'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Custom message',
    @level0type = N'SCHEMA',
    @level0name = N'logging',
    @level1type = N'TABLE',
    @level1name = N'tLog',
    @level2type = N'COLUMN',
    @level2name = N'msg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Custom number (row count)',
    @level0type = N'SCHEMA',
    @level0name = N'logging',
    @level1type = N'TABLE',
    @level1name = N'tLog',
    @level2type = N'COLUMN',
    @level2name = N'cnt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Logging table',
    @level0type = N'SCHEMA',
    @level0name = N'logging',
    @level1type = N'TABLE',
    @level1name = N'tLog',
    @level2type = NULL,
    @level2name = NULL