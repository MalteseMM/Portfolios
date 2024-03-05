USE [ec_portfolio]
GO

INSERT [dbo].[order_status] ([status_id], [status_name], [created_by], [created_at], [updated_by], [updated_at]) VALUES (1, N'ショッピングカートに追加', N'system', CAST(N'2024-03-06T00:13:23.567' AS DateTime), N'system', CAST(N'2024-03-06T00:13:23.567' AS DateTime))
GO
INSERT [dbo].[order_status] ([status_id], [status_name], [created_by], [created_at], [updated_by], [updated_at]) VALUES (2, N'入金待ち', N'system', CAST(N'2024-03-06T00:22:23.090' AS DateTime), N'system', CAST(N'2024-03-06T00:22:23.090' AS DateTime))
GO
INSERT [dbo].[order_status] ([status_id], [status_name], [created_by], [created_at], [updated_by], [updated_at]) VALUES (3, N'発送準備中', N'system', CAST(N'2024-03-06T00:24:11.837' AS DateTime), N'system', CAST(N'2024-03-06T00:24:11.837' AS DateTime))
GO
INSERT [dbo].[order_status] ([status_id], [status_name], [created_by], [created_at], [updated_by], [updated_at]) VALUES (4, N'発送済み', N'system', CAST(N'2024-03-06T00:25:56.733' AS DateTime), N'system', CAST(N'2024-03-06T00:25:56.733' AS DateTime))
GO
INSERT [dbo].[order_status] ([status_id], [status_name], [created_by], [created_at], [updated_by], [updated_at]) VALUES (5, N'配達済み', N'system', CAST(N'2024-03-06T00:30:22.263' AS DateTime), N'system', CAST(N'2024-03-06T00:30:22.263' AS DateTime))
GO
INSERT [dbo].[order_status] ([status_id], [status_name], [created_by], [created_at], [updated_by], [updated_at]) VALUES (6, N'キャンセル', N'system', CAST(N'2024-03-06T00:30:31.160' AS DateTime), N'system', CAST(N'2024-03-06T00:30:31.160' AS DateTime))
GO
