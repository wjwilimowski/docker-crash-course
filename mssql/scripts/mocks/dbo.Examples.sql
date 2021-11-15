SET IDENTITY_INSERT [dbo].[Examples] ON;
GO

INSERT INTO [dbo].[Examples] ([Id], [Description])
VALUES
(1, 'Example 1'),
(2, 'Example 2'),
(3, 'Example 3')

GO

SET IDENTITY_INSERT [dbo].[Examples] OFF;
GO