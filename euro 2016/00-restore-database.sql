USE [SOCCER_DB]
GO
/****** Object:  Table [dbo].[asst_referee_mast]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asst_referee_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ass_ref_id] [float] NULL,
	[ass_ref_name] [nvarchar](255) NULL,
	[country_id] [float] NULL,
 CONSTRAINT [asst_referee_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coach_mast]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coach_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[coach_id] [float] NULL,
	[coach_name] [nvarchar](255) NULL,
 CONSTRAINT [coach_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[goal_details]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goal_details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[goal_id] [float] NULL,
	[match_no] [float] NULL,
	[player_id] [float] NULL,
	[team_id] [float] NULL,
	[goal_time] [float] NULL,
	[goal_type] [nvarchar](255) NULL,
	[play_stage] [nvarchar](255) NULL,
	[goal_schedule] [nvarchar](255) NULL,
	[goal_half] [float] NULL,
 CONSTRAINT [goal_details$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[match_captain]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match_captain](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_captain] [float] NULL,
 CONSTRAINT [match_captain$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[match_details]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match_details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[play_stage] [nvarchar](255) NULL,
	[team_id] [float] NULL,
	[win_lose] [nvarchar](255) NULL,
	[decided_by] [nvarchar](255) NULL,
	[goal_score] [float] NULL,
	[penalty_score] [nvarchar](255) NULL,
	[ass_ref] [float] NULL,
	[player_gk] [float] NULL,
 CONSTRAINT [match_details$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[match_mast]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[play_stage] [nvarchar](255) NULL,
	[play_date] [datetime2](0) NULL,
	[results] [nvarchar](255) NULL,
	[decided_by] [nvarchar](255) NULL,
	[goal_score] [nvarchar](255) NULL,
	[venue_id] [float] NULL,
	[referee_id] [float] NULL,
	[audence] [float] NULL,
	[plr_of_match] [float] NULL,
	[stop1_sec] [float] NULL,
	[stop2_sec] [float] NULL,
 CONSTRAINT [match_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[penalty_gk]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[penalty_gk](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_gk] [float] NULL,
 CONSTRAINT [penalty_gk$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[penalty_shootout]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[penalty_shootout](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kick_id] [float] NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_id] [float] NULL,
	[score_goal] [nvarchar](255) NULL,
	[kick_no] [float] NULL,
 CONSTRAINT [penalty_shootout$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_booked]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_booked](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_id] [float] NULL,
	[booking_time] [float] NULL,
	[sent_off] [nvarchar](255) NULL,
	[play_schedule] [nvarchar](255) NULL,
	[play_half] [float] NULL,
 CONSTRAINT [player_booked$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_in_out]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_in_out](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_id] [float] NULL,
	[in_out] [nvarchar](255) NULL,
	[time_in_out] [float] NULL,
	[play_schedule] [nvarchar](255) NULL,
	[play_half] [float] NULL,
 CONSTRAINT [player_in_out$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_mast]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[player_id] [float] NULL,
	[team_id] [float] NULL,
	[jersey_no] [float] NULL,
	[player_name] [nvarchar](255) NULL,
	[posi_to_play] [nvarchar](255) NULL,
	[dt_of_bir] [datetime2](0) NULL,
	[age] [float] NULL,
	[playing_club] [nvarchar](255) NULL,
 CONSTRAINT [player_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[playing_position]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[playing_position](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Field1] [nvarchar](255) NULL,
	[Field2] [nvarchar](255) NULL,
 CONSTRAINT [playing_position$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[referee_mast]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[referee_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[referee_id] [float] NULL,
	[referee_name] [nvarchar](255) NULL,
	[country_id] [float] NULL,
 CONSTRAINT [referee_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soccer Country]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soccer Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[country_id] [float] NULL,
	[country_abbr] [nvarchar](255) NULL,
	[country_name] [nvarchar](255) NULL,
 CONSTRAINT [Soccer Country$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soccer_city]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soccer_city](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[city_id] [float] NULL,
	[city] [nvarchar](255) NULL,
	[country_id] [float] NULL,
 CONSTRAINT [Soccer_city$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soccer_team]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soccer_team](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[team_id] [float] NULL,
	[team_group] [nvarchar](255) NULL,
	[match_played] [float] NULL,
	[won] [float] NULL,
	[draw] [float] NULL,
	[lost] [float] NULL,
	[goal_for] [float] NULL,
	[goal_agnst] [float] NULL,
	[goal_diff] [float] NULL,
	[points] [float] NULL,
	[group_position] [float] NULL,
 CONSTRAINT [Soccer_team$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[soccer_venue]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soccer_venue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[venue_id] [float] NULL,
	[venue_name] [nvarchar](255) NULL,
	[city_id] [float] NULL,
	[aud_capacity] [float] NULL,
 CONSTRAINT [soccer_venue$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team_coaches]    Script Date: 4/11/2023 3:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team_coaches](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[team_id] [float] NULL,
	[coach_id] [float] NULL,
 CONSTRAINT [Team_coaches$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[asst_referee_mast] ON 
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (1, 80034, N'Tomas Mokrusch', 1205)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (2, 80038, N'Martin Wilczek', 1205)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (3, 80004, N'Simon Beck', 1206)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (4, 80006, N'Stephen Child', 1206)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (5, 80007, N'Jake Collin', 1206)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (6, 80014, N'Mike Mullarkey', 1206)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (7, 80026, N'Frederic Cano', 1207)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (8, 80028, N'Nicolas Danos', 1207)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (9, 80005, N'Mark Borsch', 1208)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (10, 80013, N'Stefan Lupp', 1208)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (11, 80016, N'Gyorgy Ring', 1209)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (12, 80020, N'Vencel Toth', 1209)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (13, 80033, N'Damien McGraith', 1215)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (14, 80008, N'Elenito Di Liberatore', 1211)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (15, 80019, N'Mauro Tonolini', 1211)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (16, 80021, N'Sander van Roekel', 1226)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (17, 80024, N'Erwin Zeinstra', 1226)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (18, 80025, N'Frank Andas', 1229)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (19, 80031, N'Kim Haglund', 1229)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (20, 80012, N'Tomasz Listkiewicz', 1213)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (21, 80018, N'Pawel Sokolnicki', 1213)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (22, 80029, N'Sebastian Gheorghe', 1216)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (23, 80036, N'Octavian Sovre', 1216)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (24, 80030, N'Nikolay Golubev', 1217)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (25, 80032, N'Tikhon Kalugin', 1217)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (26, 80037, N'Anton Averyanov', 1217)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (27, 80027, N'Frank Connor', 1228)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (28, 80010, N'Dalibor Durdevic', 1227)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (29, 80017, N'Milovan Ristic', 1227)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (30, 80035, N'Roman Slysko', 1218)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (31, 80001, N'Jure Praprotnik', 1225)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (32, 80002, N'Robert Vukan', 1225)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (33, 80003, N'Roberto Alonso Fernandez', 1219)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (34, 80023, N'Juan Yuste Jimenez', 1219)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (35, 80011, N'Mathias Klasenius', 1220)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (36, 80022, N'Daniel Warnmark', 1220)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (37, 80009, N'Bahattin Duran', 1222)
GO
INSERT [dbo].[asst_referee_mast] ([ID], [ass_ref_id], [ass_ref_name], [country_id]) VALUES (38, 80015, N'Tarik Ongun', 1222)
GO
SET IDENTITY_INSERT [dbo].[asst_referee_mast] OFF
GO
SET IDENTITY_INSERT [dbo].[coach_mast] ON 
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (1, 5550, N'Gianni De Biasi')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (2, 5551, N'Marcel Koller')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (3, 5552, N'Marc Wilmots')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (4, 5553, N'Ante Cacic')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (5, 5554, N'Pavel Vrba')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (6, 5555, N'Roy Hodgson')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (7, 5556, N'Didier Deschamps')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (8, 5557, N'Joachim Low')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (9, 5558, N'Bernd Storck')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (10, 5559, N'Lars Lagerback')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (11, 5560, N'Heimir Hallgrímsson')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (12, 5561, N'Antonio Conte')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (13, 5562, N'Michael ONeill')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (14, 5563, N'Adam Nawalka')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (15, 5564, N'Fernando Santos')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (16, 5565, N'Martin ONeill')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (17, 5566, N'Anghel Iordanescu')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (18, 5567, N'Leonid Slutski')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (19, 5568, N'Jan Kozak')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (20, 5569, N'Vicente del Bosque')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (21, 5570, N'Erik Hamren')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (22, 5571, N'Vladimir Petkovic')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (23, 5572, N'Fatih Terim')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (24, 5573, N'Mykhailo Fomenko')
GO
INSERT [dbo].[coach_mast] ([ID], [coach_id], [coach_name]) VALUES (25, 5574, N'Chris Coleman')
GO
SET IDENTITY_INSERT [dbo].[coach_mast] OFF
GO
SET IDENTITY_INSERT [dbo].[goal_details] ON 
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (1, 1, 1, 160159, 1207, 57, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (2, 2, 1, 160368, 1216, 65, N'P', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (3, 3, 1, 160154, 1207, 89, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (4, 4, 2, 160470, 1221, 5, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (5, 5, 3, 160547, 1224, 10, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (6, 6, 3, 160403, 1218, 61, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (7, 7, 3, 160550, 1224, 81, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (8, 8, 4, 160128, 1206, 73, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (9, 9, 4, 160373, 1217, 93, N'N', N'G', N'ST', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (10, 10, 5, 160084, 1204, 41, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (11, 11, 6, 160298, 1213, 51, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (12, 12, 7, 160183, 1208, 19, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (13, 13, 7, 160180, 1208, 93, N'N', N'G', N'ST', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (14, 14, 8, 160423, 1219, 87, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (15, 15, 9, 160335, 1215, 48, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (16, 16, 9, 160327, 1215, 71, N'O', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (17, 17, 10, 160244, 1211, 32, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (18, 18, 10, 160252, 1211, 93, N'N', N'G', N'ST', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (19, 19, 11, 160207, 1209, 62, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (20, 20, 11, 160200, 1209, 87, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (21, 21, 12, 160320, 1214, 31, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (22, 22, 12, 160221, 1210, 50, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (23, 23, 13, 160411, 1218, 32, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (24, 24, 13, 160405, 1218, 45, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (25, 25, 13, 160380, 1217, 80, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (26, 26, 14, 160368, 1216, 18, N'P', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (27, 27, 14, 160481, 1221, 57, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (28, 28, 15, 160160, 1207, 90, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (29, 29, 15, 160154, 1207, 96, N'N', N'G', N'ST', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (30, 30, 16, 160547, 1224, 42, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (31, 31, 16, 160138, 1206, 56, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (32, 32, 16, 160137, 1206, 93, N'N', N'G', N'ST', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (33, 33, 17, 160262, 1212, 49, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (34, 34, 17, 160275, 1212, 96, N'N', N'G', N'ST', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (35, 35, 19, 160248, 1211, 88, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (36, 36, 20, 160085, 1204, 37, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (37, 37, 20, 160086, 1204, 59, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (38, 38, 20, 160115, 1205, 76, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (39, 39, 20, 160114, 1205, 89, N'P', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (40, 40, 21, 160435, 1219, 34, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (41, 41, 21, 160436, 1219, 37, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (42, 42, 21, 160435, 1219, 48, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (43, 43, 22, 160067, 1203, 48, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (44, 44, 22, 160064, 1203, 61, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (45, 45, 22, 160067, 1203, 70, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (46, 46, 23, 160224, 1210, 40, N'P', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (47, 47, 23, 160216, 1210, 88, N'O', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (48, 48, 25, 160023, 1201, 43, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (49, 49, 27, 160544, 1224, 11, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (50, 50, 27, 160538, 1224, 20, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (51, 51, 27, 160547, 1224, 67, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (52, 52, 29, 160287, 1213, 54, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (53, 53, 30, 160182, 1208, 30, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (54, 54, 31, 160504, 1222, 10, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (55, 55, 31, 160500, 1222, 65, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (56, 56, 32, 160435, 1219, 7, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (57, 57, 32, 160089, 1204, 45, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (58, 58, 32, 160085, 1204, 87, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (59, 59, 33, 160226, 1210, 18, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (60, 60, 33, 160042, 1202, 60, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (61, 61, 33, 160226, 1210, 94, N'N', N'G', N'ST', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (62, 62, 34, 160203, 1209, 19, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (63, 63, 34, 160320, 1214, 42, N'N', N'G', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (64, 64, 34, 160202, 1209, 47, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (65, 65, 34, 160322, 1214, 50, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (66, 66, 34, 160202, 1209, 55, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (67, 67, 34, 160322, 1214, 62, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (68, 68, 35, 160333, 1215, 85, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (69, 69, 36, 160063, 1203, 84, N'N', N'G', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (70, 70, 37, 160287, 1213, 39, N'N', N'R', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (71, 71, 37, 160476, 1221, 82, N'N', N'R', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (72, 72, 38, 160262, 1212, 75, N'O', N'R', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (73, 73, 39, 160321, 1214, 117, N'N', N'R', N'ET', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (74, 74, 40, 160333, 1215, 2, N'P', N'R', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (75, 75, 40, 160160, 1207, 58, N'N', N'R', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (76, 76, 40, 160160, 1207, 61, N'N', N'R', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (77, 77, 41, 160165, 1208, 8, N'N', N'R', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (78, 78, 41, 160182, 1208, 43, N'N', N'R', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (79, 79, 41, 160173, 1208, 63, N'N', N'R', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (80, 80, 42, 160050, 1203, 10, N'N', N'R', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (81, 81, 42, 160065, 1203, 78, N'N', N'R', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (82, 82, 42, 160062, 1203, 80, N'N', N'R', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (83, 83, 42, 160058, 1203, 90, N'N', N'R', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (84, 84, 43, 160236, 1211, 33, N'N', N'R', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (85, 85, 43, 160252, 1211, 91, N'N', N'R', N'ST', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (86, 86, 44, 160136, 1206, 4, N'P', N'R', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (87, 87, 44, 160219, 1210, 6, N'N', N'R', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (88, 88, 44, 160230, 1210, 18, N'N', N'R', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (89, 89, 45, 160297, 1213, 2, N'N', N'Q', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (90, 90, 45, 160316, 1214, 33, N'N', N'Q', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (91, 91, 46, 160063, 1203, 13, N'N', N'Q', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (92, 92, 46, 160539, 1224, 31, N'N', N'Q', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (93, 93, 46, 160550, 1224, 55, N'N', N'Q', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (94, 94, 46, 160551, 1224, 86, N'N', N'Q', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (95, 95, 47, 160177, 1208, 65, N'N', N'Q', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (96, 96, 47, 160235, 1211, 78, N'P', N'Q', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (97, 97, 48, 160159, 1207, 12, N'N', N'Q', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (98, 98, 48, 160155, 1207, 20, N'N', N'Q', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (99, 99, 48, 160154, 1207, 43, N'N', N'Q', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (100, 100, 48, 160160, 1207, 45, N'N', N'Q', N'NT', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (101, 101, 48, 160230, 1210, 56, N'N', N'Q', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (102, 102, 48, 160159, 1207, 59, N'N', N'Q', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (103, 103, 48, 160221, 1210, 84, N'N', N'Q', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (104, 104, 49, 160322, 1214, 50, N'N', N'S', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (105, 105, 49, 160320, 1214, 53, N'N', N'S', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (106, 106, 50, 160160, 1207, 47, N'P', N'S', N'ST', 1)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (107, 107, 50, 160160, 1207, 72, N'N', N'S', N'NT', 2)
GO
INSERT [dbo].[goal_details] ([ID], [goal_id], [match_no], [player_id], [team_id], [goal_time], [goal_type], [play_stage], [goal_schedule], [goal_half]) VALUES (108, 108, 51, 160319, 1214, 109, N'N', N'F', N'ET', 2)
GO
SET IDENTITY_INSERT [dbo].[goal_details] OFF
GO
SET IDENTITY_INSERT [dbo].[match_captain] ON 
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (1, 1, 1207, 160140)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (2, 1, 1216, 160349)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (3, 2, 1201, 160013)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (4, 2, 1221, 160467)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (5, 3, 1224, 160539)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (6, 3, 1218, 160401)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (7, 4, 1206, 160136)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (8, 4, 1217, 160373)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (9, 5, 1222, 160494)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (10, 5, 1204, 160076)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (11, 6, 1213, 160297)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (12, 6, 1212, 160267)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (13, 7, 1208, 160163)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (14, 7, 1223, 160515)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (15, 8, 1219, 160424)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (16, 8, 1205, 160110)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (17, 9, 1215, 160331)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (18, 9, 1220, 160459)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (19, 10, 1203, 160062)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (20, 10, 1211, 160231)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (21, 11, 1202, 160028)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (22, 11, 1209, 160202)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (23, 12, 1214, 160322)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (24, 12, 1210, 160222)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (25, 13, 1217, 160373)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (26, 13, 1218, 160401)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (27, 14, 1216, 160349)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (28, 14, 1221, 160467)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (29, 15, 1207, 160140)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (30, 15, 1201, 160004)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (31, 16, 1206, 160136)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (32, 16, 1224, 160539)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (33, 17, 1223, 160515)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (34, 17, 1212, 160267)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (35, 18, 1208, 160163)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (36, 18, 1213, 160297)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (37, 19, 1211, 160231)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (38, 19, 1220, 160459)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (39, 20, 1205, 160110)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (40, 20, 1204, 160076)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (41, 21, 1219, 160424)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (42, 21, 1222, 160494)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (43, 22, 1203, 160062)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (44, 22, 1215, 160331)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (45, 23, 1210, 160222)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (46, 23, 1209, 160202)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (47, 24, 1214, 160322)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (48, 24, 1202, 160028)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (49, 25, 1216, 160349)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (50, 25, 1201, 160004)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (51, 26, 1221, 160467)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (52, 26, 1207, 160140)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (53, 27, 1217, 160386)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (54, 27, 1224, 160539)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (55, 28, 1218, 160401)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (56, 28, 1206, 160120)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (57, 29, 1223, 160520)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (58, 29, 1213, 160297)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (59, 30, 1212, 160267)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (60, 30, 1208, 160163)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (61, 31, 1205, 160093)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (62, 31, 1222, 160494)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (63, 32, 1204, 160076)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (64, 32, 1219, 160424)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (65, 33, 1210, 160222)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (66, 33, 1202, 160028)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (67, 34, 1209, 160202)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (68, 34, 1214, 160322)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (69, 35, 1211, 160235)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (70, 35, 1215, 160328)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (71, 36, 1220, 160459)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (72, 36, 1203, 160062)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (73, 37, 1221, 160467)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (74, 37, 1213, 160297)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (75, 38, 1224, 160539)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (76, 38, 1212, 160267)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (77, 39, 1204, 160076)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (78, 39, 1214, 160322)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (79, 40, 1207, 160140)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (80, 40, 1215, 160328)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (81, 41, 1208, 160163)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (82, 41, 1218, 160401)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (83, 42, 1209, 160202)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (84, 42, 1203, 160062)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (85, 43, 1211, 160231)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (86, 43, 1219, 160424)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (87, 44, 1206, 160136)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (88, 44, 1210, 160222)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (89, 45, 1213, 160297)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (90, 45, 1214, 160322)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (91, 46, 1224, 160539)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (92, 46, 1203, 160062)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (93, 47, 1208, 160163)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (94, 47, 1211, 160231)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (95, 48, 1207, 160140)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (96, 48, 1210, 160222)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (97, 49, 1214, 160322)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (98, 49, 1224, 160539)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (99, 50, 1207, 160140)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (100, 50, 1208, 160180)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (101, 51, 1214, 160322)
GO
INSERT [dbo].[match_captain] ([ID], [match_no], [team_id], [player_captain]) VALUES (102, 51, 1207, 160140)
GO
SET IDENTITY_INSERT [dbo].[match_captain] OFF
GO
SET IDENTITY_INSERT [dbo].[match_details] ON 
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (1, 1, N'G', 1207, N'W', N'N', 2, NULL, 80016, 160140)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (2, 1, N'G', 1216, N'L', N'N', 1, NULL, 80020, 160348)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (3, 2, N'G', 1201, N'L', N'N', 0, NULL, 80003, 160001)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (4, 2, N'G', 1221, N'W', N'N', 1, NULL, 80023, 160463)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (5, 3, N'G', 1224, N'W', N'N', 2, NULL, 80031, 160532)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (6, 3, N'G', 1218, N'L', N'N', 1, NULL, 80025, 160392)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (7, 4, N'G', 1206, N'D', N'N', 1, NULL, 80008, 160117)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (8, 4, N'G', 1217, N'D', N'N', 1, NULL, 80019, 160369)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (9, 5, N'G', 1222, N'L', N'N', 0, NULL, 80011, 160486)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (10, 5, N'G', 1204, N'W', N'N', 1, NULL, 80022, 160071)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (11, 6, N'G', 1213, N'W', N'N', 1, NULL, 80036, 160279)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (12, 6, N'G', 1212, N'L', N'N', 0, NULL, 80029, 160256)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (13, 7, N'G', 1208, N'W', N'N', 2, NULL, 80014, 160163)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (14, 7, N'G', 1223, N'L', N'N', 0, NULL, 80006, 160508)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (15, 8, N'G', 1219, N'W', N'N', 1, NULL, 80018, 160416)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (16, 8, N'G', 1205, N'L', N'N', 0, NULL, 80012, 160093)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (17, 9, N'G', 1215, N'D', N'N', 1, NULL, 80017, 160324)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (18, 9, N'G', 1220, N'D', N'N', 1, NULL, 80010, 160439)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (19, 10, N'G', 1203, N'L', N'N', 0, NULL, 80004, 160047)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (20, 10, N'G', 1211, N'W', N'N', 2, NULL, 80007, 160231)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (21, 11, N'G', 1202, N'L', N'N', 0, NULL, 80026, 160024)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (22, 11, N'G', 1209, N'W', N'N', 2, NULL, 80028, 160187)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (23, 12, N'G', 1214, N'D', N'N', 1, NULL, 80009, 160302)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (24, 12, N'G', 1210, N'D', N'N', 1, NULL, 80015, 160208)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (25, 13, N'G', 1217, N'L', N'N', 1, NULL, 80001, 160369)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (26, 13, N'G', 1218, N'W', N'N', 2, NULL, 80002, 160392)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (27, 14, N'G', 1216, N'D', N'N', 1, NULL, 80030, 160348)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (28, 14, N'G', 1221, N'D', N'N', 1, NULL, 80032, 160463)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (29, 15, N'G', 1207, N'W', N'N', 2, NULL, 80033, 160140)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (30, 15, N'G', 1201, N'L', N'N', 0, NULL, 80027, 160001)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (31, 16, N'G', 1206, N'W', N'N', 2, NULL, 80005, 160117)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (32, 16, N'G', 1224, N'L', N'N', 1, NULL, 80013, 160531)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (33, 17, N'G', 1223, N'L', N'N', 0, NULL, 80035, 160508)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (34, 17, N'G', 1212, N'W', N'N', 2, NULL, 80034, 160256)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (35, 18, N'G', 1208, N'D', N'N', 0, NULL, 80021, 160163)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (36, 18, N'G', 1213, N'D', N'N', 0, NULL, 80024, 160278)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (37, 19, N'G', 1211, N'W', N'N', 1, NULL, 80016, 160231)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (38, 19, N'G', 1220, N'L', N'N', 0, NULL, 80020, 160439)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (39, 20, N'G', 1205, N'D', N'N', 2, NULL, 80004, 160093)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (40, 20, N'G', 1204, N'D', N'N', 2, NULL, 80007, 160071)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (41, 21, N'G', 1219, N'W', N'N', 3, NULL, 80017, 160416)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (42, 21, N'G', 1222, N'L', N'N', 0, NULL, 80010, 160486)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (43, 22, N'G', 1203, N'W', N'N', 3, NULL, 80009, 160047)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (44, 22, N'G', 1215, N'L', N'N', 0, NULL, 80015, 160324)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (45, 23, N'G', 1210, N'D', N'N', 1, NULL, 80030, 160208)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (46, 23, N'G', 1209, N'D', N'N', 1, NULL, 80032, 160187)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (47, 24, N'G', 1214, N'D', N'N', 0, NULL, 80008, 160302)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (48, 24, N'G', 1202, N'D', N'N', 0, NULL, 80019, 160024)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (49, 25, N'G', 1216, N'L', N'N', 0, NULL, 80035, 160348)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (50, 25, N'G', 1201, N'W', N'N', 1, NULL, 80034, 160001)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (51, 26, N'G', 1221, N'D', N'N', 0, NULL, 80001, 160463)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (52, 26, N'G', 1207, N'D', N'N', 0, NULL, 80002, 160140)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (53, 27, N'G', 1217, N'L', N'N', 0, NULL, 80011, 160369)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (54, 27, N'G', 1224, N'W', N'N', 3, NULL, 80022, 160531)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (55, 28, N'G', 1218, N'D', N'N', 0, NULL, 80003, 160392)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (56, 28, N'G', 1206, N'D', N'N', 0, NULL, 80023, 160117)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (57, 29, N'G', 1223, N'L', N'N', 0, NULL, 80031, 160508)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (58, 29, N'G', 1213, N'W', N'N', 1, NULL, 80025, 160278)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (59, 30, N'G', 1212, N'L', N'N', 0, NULL, 80026, 160256)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (60, 30, N'G', 1208, N'W', N'N', 1, NULL, 80028, 160163)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (61, 31, N'G', 1205, N'L', N'N', 0, NULL, 80033, 160093)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (62, 31, N'G', 1222, N'W', N'N', 2, NULL, 80027, 160486)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (63, 32, N'G', 1204, N'W', N'N', 2, NULL, 80021, 160071)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (64, 32, N'G', 1219, N'L', N'N', 1, NULL, 80024, 160416)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (65, 33, N'G', 1210, N'W', N'N', 2, NULL, 80018, 160208)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (66, 33, N'G', 1202, N'L', N'N', 1, NULL, 80012, 160024)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (67, 34, N'G', 1209, N'D', N'N', 3, NULL, 80014, 160187)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (68, 34, N'G', 1214, N'D', N'N', 3, NULL, 80006, 160302)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (69, 35, N'G', 1211, N'L', N'N', 0, NULL, 80036, 160233)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (70, 35, N'G', 1215, N'W', N'N', 1, NULL, 80029, 160324)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (71, 36, N'G', 1220, N'L', N'N', 0, NULL, 80005, 160439)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (72, 36, N'G', 1203, N'W', N'N', 1, NULL, 80013, 160047)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (73, 37, N'R', 1221, N'L', N'P', 1, N'4', 80004, 160463)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (74, 37, N'R', 1213, N'W', N'P', 1, N'5', 80007, 160278)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (75, 38, N'R', 1224, N'W', N'N', 1, NULL, 80014, 160531)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (76, 38, N'R', 1212, N'L', N'N', 0, NULL, 80006, 160256)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (77, 39, N'R', 1204, N'L', N'N', 0, NULL, 80003, 160071)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (78, 39, N'R', 1214, N'W', N'N', 1, NULL, 80023, 160302)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (79, 40, N'R', 1207, N'W', N'N', 2, NULL, 80008, 160140)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (80, 40, N'R', 1215, N'L', N'N', 1, NULL, 80019, 160324)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (81, 41, N'R', 1208, N'W', N'N', 3, NULL, 80018, 160163)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (82, 41, N'R', 1218, N'L', N'N', 0, NULL, 80012, 160392)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (83, 42, N'R', 1209, N'L', N'N', 0, NULL, 80017, 160187)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (84, 42, N'R', 1203, N'W', N'N', 4, NULL, 80010, 160047)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (85, 43, N'R', 1211, N'W', N'N', 2, NULL, 80009, 160231)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (86, 43, N'R', 1219, N'L', N'N', 0, NULL, 80015, 160416)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (87, 44, N'R', 1206, N'L', N'N', 1, NULL, 80001, 160117)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (88, 44, N'R', 1210, N'W', N'N', 2, NULL, 80002, 160208)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (89, 45, N'Q', 1213, N'L', N'P', 1, N'3', 80005, 160278)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (90, 45, N'Q', 1214, N'W', N'P', 1, N'5', 80013, 160302)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (91, 46, N'Q', 1224, N'W', N'N', 3, NULL, 80001, 160531)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (92, 46, N'Q', 1203, N'L', N'N', 1, NULL, 80002, 160047)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (93, 47, N'Q', 1208, N'W', N'P', 1, N'6', 80016, 160163)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (94, 47, N'Q', 1211, N'L', N'P', 1, N'5', 80020, 160231)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (95, 48, N'Q', 1207, N'W', N'N', 5, NULL, 80021, 160140)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (96, 48, N'Q', 1210, N'L', N'N', 2, NULL, 80024, 160208)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (97, 49, N'S', 1214, N'W', N'N', 2, NULL, 80011, 160302)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (98, 49, N'S', 1224, N'L', N'N', 0, NULL, 80022, 160531)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (99, 50, N'S', 1207, N'W', N'N', 2, NULL, 80008, 160140)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (100, 50, N'S', 1208, N'L', N'N', 1, NULL, 80019, 160163)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (101, 51, N'F', 1214, N'W', N'N', 1, NULL, 80004, 160302)
GO
INSERT [dbo].[match_details] ([ID], [match_no], [play_stage], [team_id], [win_lose], [decided_by], [goal_score], [penalty_score], [ass_ref], [player_gk]) VALUES (102, 51, N'F', 1207, N'L', N'N', 0, NULL, 80007, 160140)
GO
SET IDENTITY_INSERT [dbo].[match_details] OFF
GO
SET IDENTITY_INSERT [dbo].[match_mast] ON 
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (1, 1, N'G', CAST(N'2016-06-11T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'02-Jan', 20008, 70007, 75113, 160154, 131, 242)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (2, 2, N'G', CAST(N'2016-06-11T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-1', 20002, 70012, 33805, 160476, 61, 182)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (3, 3, N'G', CAST(N'2016-06-11T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'02-Jan', 20001, 70017, 37831, 160540, 64, 268)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (4, 4, N'G', CAST(N'2016-06-12T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'01-Jan', 20005, 70011, 62343, 160128, 0, 185)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (5, 5, N'G', CAST(N'2016-06-12T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-1', 20007, 70006, 43842, 160084, 125, 325)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (6, 6, N'G', CAST(N'2016-06-12T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'1-0', 20006, 70014, 33742, 160291, 2, 246)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (7, 7, N'G', CAST(N'2016-06-13T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'2-0', 20003, 70002, 43035, 160176, 89, 188)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (8, 8, N'G', CAST(N'2016-06-13T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'1-0', 20010, 70009, 29400, 160429, 360, 182)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (9, 9, N'G', CAST(N'2016-06-13T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'01-Jan', 20008, 70010, 73419, 160335, 67, 194)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (10, 10, N'G', CAST(N'2016-06-14T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-2', 20004, 70005, 55408, 160244, 63, 189)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (11, 11, N'G', CAST(N'2016-06-14T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-2', 20001, 70018, 34424, 160197, 61, 305)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (12, 12, N'G', CAST(N'2016-06-15T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'01-Jan', 20009, 70004, 38742, 160320, 15, 284)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (13, 13, N'G', CAST(N'2016-06-15T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'01-Feb', 20003, 70001, 38989, 160405, 62, 189)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (14, 14, N'G', CAST(N'2016-06-15T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'01-Jan', 20007, 70015, 43576, 160477, 74, 206)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (15, 15, N'G', CAST(N'2016-06-16T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'2-0', 20005, 70013, 63670, 160154, 71, 374)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (16, 16, N'G', CAST(N'2016-06-16T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'02-Jan', 20002, 70003, 34033, 160540, 62, 212)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (17, 17, N'G', CAST(N'2016-06-16T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-2', 20004, 70016, 51043, 160262, 7, 411)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (18, 18, N'G', CAST(N'2016-06-17T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'0-0', 20008, 70008, 73648, 160165, 6, 208)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (19, 19, N'G', CAST(N'2016-06-17T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'1-0', 20010, 70007, 29600, 160248, 2, 264)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (20, 20, N'G', CAST(N'2016-06-17T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'02-Feb', 20009, 70005, 38376, 160086, 71, 280)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (21, 21, N'G', CAST(N'2016-06-18T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'3-0', 20006, 70010, 33409, 160429, 84, 120)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (22, 22, N'G', CAST(N'2016-06-18T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'3-0', 20001, 70004, 39493, 160064, 11, 180)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (23, 23, N'G', CAST(N'2016-06-18T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'01-Jan', 20005, 70015, 60842, 160230, 61, 280)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (24, 24, N'G', CAST(N'2016-06-19T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'0-0', 20007, 70011, 44291, 160314, 3, 200)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (25, 25, N'G', CAST(N'2016-06-20T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-1', 20004, 70016, 49752, 160005, 125, 328)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (26, 26, N'G', CAST(N'2016-06-20T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'0-0', 20003, 70001, 45616, 160463, 60, 122)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (27, 27, N'G', CAST(N'2016-06-21T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-3', 20010, 70006, 28840, 160544, 62, 119)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (28, 28, N'G', CAST(N'2016-06-21T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'0-0', 20009, 70012, 39051, 160392, 62, 301)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (29, 29, N'G', CAST(N'2016-06-21T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-1', 20005, 70017, 58874, 160520, 29, 244)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (30, 30, N'G', CAST(N'2016-06-21T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-1', 20007, 70018, 44125, 160177, 21, 195)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (31, 31, N'G', CAST(N'2016-06-22T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-2', 20002, 70013, 32836, 160504, 60, 300)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (32, 32, N'G', CAST(N'2016-06-22T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'02-Jan', 20001, 70008, 37245, 160085, 70, 282)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (33, 33, N'G', CAST(N'2016-06-22T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'02-Jan', 20008, 70009, 68714, 160220, 7, 244)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (34, 34, N'G', CAST(N'2016-06-22T00:00:00.0000000' AS DateTime2), N'DRAW', N'N', N'03-Mar', 20004, 70002, 55514, 160322, 70, 185)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (35, 35, N'G', CAST(N'2016-06-23T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-1', 20003, 70014, 44268, 160333, 79, 221)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (36, 36, N'G', CAST(N'2016-06-23T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-1', 20006, 70003, 34011, 160062, 63, 195)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (37, 37, N'R', CAST(N'2016-06-25T00:00:00.0000000' AS DateTime2), N'WIN', N'P', N'01-Jan', 20009, 70005, 38842, 160476, 126, 243)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (38, 38, N'R', CAST(N'2016-06-25T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'1-0', 20007, 70002, 44342, 160547, 5, 245)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (39, 39, N'R', CAST(N'2016-06-26T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-1', 20002, 70012, 33523, 160316, 61, 198)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (40, 40, N'R', CAST(N'2016-06-26T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'02-Jan', 20004, 70011, 56279, 160160, 238, 203)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (41, 41, N'R', CAST(N'2016-06-26T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'3-0', 20003, 70009, 44312, 160173, 62, 124)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (42, 42, N'R', CAST(N'2016-06-27T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'0-4', 20010, 70010, 28921, 160062, 3, 133)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (43, 43, N'R', CAST(N'2016-06-27T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'2-0', 20008, 70004, 76165, 160235, 63, 243)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (44, 44, N'R', CAST(N'2016-06-28T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'01-Feb', 20006, 70001, 33901, 160217, 5, 199)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (45, 45, N'Q', CAST(N'2016-07-01T00:00:00.0000000' AS DateTime2), N'WIN', N'P', N'01-Jan', 20005, 70003, 62940, 160316, 58, 181)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (46, 46, N'Q', CAST(N'2016-07-02T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'03-Jan', 20003, 70001, 45936, 160550, 14, 182)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (47, 47, N'Q', CAST(N'2016-07-03T00:00:00.0000000' AS DateTime2), N'WIN', N'P', N'01-Jan', 20001, 70007, 38764, 160163, 63, 181)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (48, 48, N'Q', CAST(N'2016-07-04T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'05-Feb', 20008, 70008, 76833, 160159, 16, 125)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (49, 49, N'S', CAST(N'2016-07-07T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'2-0', 20004, 70006, 55679, 160322, 2, 181)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (50, 50, N'S', CAST(N'2016-07-08T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'2-0', 20005, 70011, 64078, 160160, 126, 275)
GO
INSERT [dbo].[match_mast] ([ID], [match_no], [play_stage], [play_date], [results], [decided_by], [goal_score], [venue_id], [referee_id], [audence], [plr_of_match], [stop1_sec], [stop2_sec]) VALUES (51, 51, N'F', CAST(N'2016-07-11T00:00:00.0000000' AS DateTime2), N'WIN', N'N', N'1-0', 20008, 70005, 75868, 160307, 161, 181)
GO
SET IDENTITY_INSERT [dbo].[match_mast] OFF
GO
SET IDENTITY_INSERT [dbo].[penalty_gk] ON 
GO
INSERT [dbo].[penalty_gk] ([ID], [match_no], [team_id], [player_gk]) VALUES (1, 37, 1221, 160463)
GO
INSERT [dbo].[penalty_gk] ([ID], [match_no], [team_id], [player_gk]) VALUES (2, 37, 1213, 160278)
GO
INSERT [dbo].[penalty_gk] ([ID], [match_no], [team_id], [player_gk]) VALUES (3, 45, 1213, 160278)
GO
INSERT [dbo].[penalty_gk] ([ID], [match_no], [team_id], [player_gk]) VALUES (4, 45, 1214, 160302)
GO
INSERT [dbo].[penalty_gk] ([ID], [match_no], [team_id], [player_gk]) VALUES (5, 47, 1208, 160163)
GO
INSERT [dbo].[penalty_gk] ([ID], [match_no], [team_id], [player_gk]) VALUES (6, 47, 1211, 160231)
GO
SET IDENTITY_INSERT [dbo].[penalty_gk] OFF
GO
SET IDENTITY_INSERT [dbo].[penalty_shootout] ON 
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (1, 1, 37, 1221, 160467, N'Y', 1)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (2, 2, 37, 1213, 160297, N'Y', 2)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (3, 3, 37, 1221, 160477, N'N', 3)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (4, 4, 37, 1213, 160298, N'Y', 4)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (5, 5, 37, 1221, 160476, N'Y', 5)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (6, 6, 37, 1213, 160281, N'Y', 6)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (7, 7, 37, 1221, 160470, N'Y', 7)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (8, 8, 37, 1213, 160287, N'Y', 8)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (9, 9, 37, 1221, 160469, N'Y', 9)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (10, 10, 37, 1213, 160291, N'Y', 10)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (11, 11, 45, 1214, 160322, N'Y', 1)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (12, 12, 45, 1213, 160297, N'Y', 2)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (13, 13, 45, 1214, 160316, N'Y', 3)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (14, 14, 45, 1213, 160298, N'Y', 4)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (15, 15, 45, 1214, 160314, N'Y', 5)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (16, 16, 45, 1213, 160281, N'Y', 6)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (17, 17, 45, 1214, 160320, N'Y', 7)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (18, 18, 45, 1213, 160287, N'N', 8)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (19, 19, 45, 1214, 160321, N'Y', 9)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (20, 20, 47, 1211, 160251, N'Y', 1)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (21, 21, 47, 1208, 160176, N'Y', 2)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (22, 22, 47, 1211, 160253, N'N', 3)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (23, 23, 47, 1208, 160183, N'N', 4)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (24, 24, 47, 1211, 160234, N'Y', 5)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (25, 25, 47, 1208, 160177, N'N', 6)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (26, 26, 47, 1211, 160252, N'N', 7)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (27, 27, 47, 1208, 160173, N'Y', 8)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (28, 28, 47, 1211, 160235, N'N', 9)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (29, 29, 47, 1208, 160180, N'N', 10)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (30, 30, 47, 1211, 160244, N'Y', 11)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (31, 31, 47, 1208, 160168, N'Y', 12)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (32, 32, 47, 1211, 160246, N'Y', 13)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (33, 33, 47, 1208, 160169, N'Y', 14)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (34, 34, 47, 1211, 160238, N'Y', 15)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (35, 35, 47, 1208, 160165, N'Y', 16)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (36, 36, 47, 1211, 160237, N'N', 17)
GO
INSERT [dbo].[penalty_shootout] ([ID], [kick_id], [match_no], [team_id], [player_id], [score_goal], [kick_no]) VALUES (37, 37, 47, 1208, 160166, N'Y', 18)
GO
SET IDENTITY_INSERT [dbo].[penalty_shootout] OFF
GO
SET IDENTITY_INSERT [dbo].[player_booked] ON 
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (1, 1, 1216, 160349, 32, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (2, 1, 1216, 160355, 45, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (3, 1, 1207, 160159, 69, N'Y', N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (4, 1, 1216, 160360, 78, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (5, 2, 1221, 160470, 14, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (6, 2, 1201, 160013, 23, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (7, 2, 1201, 160013, 36, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (8, 2, 1201, 160014, 63, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (9, 2, 1221, 160472, 66, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (10, 2, 1201, 160015, 89, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (11, 2, 1201, 160009, 93, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (12, 3, 1218, 160401, 2, NULL, N'ST', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (13, 3, 1218, 160406, 31, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (14, 3, 1218, 160408, 78, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (15, 3, 1218, 160411, 80, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (16, 3, 1218, 160407, 83, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (17, 4, 1206, 160120, 62, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (18, 4, 1217, 160377, 72, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (19, 5, 1222, 160505, 31, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (20, 5, 1222, 160490, 48, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (21, 5, 1204, 160077, 80, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (22, 5, 1222, 160502, 91, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (23, 6, 1213, 160290, 65, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (24, 6, 1212, 160258, 69, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (25, 6, 1213, 160284, 89, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (26, 7, 1223, 160518, 68, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (27, 8, 1205, 160100, 61, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (28, 9, 1215, 160336, 43, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (29, 9, 1220, 160445, 61, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (30, 9, 1215, 160341, 77, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (31, 10, 1211, 160236, 65, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (32, 10, 1211, 160248, 75, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (33, 10, 1211, 160235, 78, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (34, 10, 1211, 160245, 84, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (35, 10, 1203, 160057, 93, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (36, 11, 1202, 160027, 33, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (37, 11, 1202, 160027, 66, N'Y', N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (38, 11, 1209, 160204, 80, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (39, 12, 1210, 160227, 2, NULL, N'ST', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (40, 12, 1210, 160221, 55, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (41, 13, 1218, 160395, 46, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (42, 14, 1221, 160480, 2, NULL, N'ST', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (43, 14, 1216, 160361, 22, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (44, 14, 1216, 160357, 24, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (45, 14, 1216, 160367, 37, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (46, 14, 1221, 160477, 50, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (47, 14, 1216, 160352, 76, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (48, 15, 1201, 160015, 55, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (49, 15, 1201, 160011, 81, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (50, 15, 1207, 160152, 88, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (51, 16, 1224, 160535, 61, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (52, 17, 1223, 160528, 40, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (53, 17, 1212, 160272, 63, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (54, 17, 1223, 160523, 67, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (55, 17, 1212, 160266, 87, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (56, 17, 1212, 160259, 90, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (57, 18, 1208, 160175, 3, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (58, 18, 1213, 160294, 3, NULL, N'ST', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (59, 18, 1208, 160177, 34, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (60, 18, 1213, 160293, 45, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (61, 18, 1213, 160288, 55, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (62, 18, 1208, 160165, 67, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (63, 19, 1211, 160242, 69, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (64, 19, 1220, 160447, 89, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (65, 19, 1211, 160231, 94, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (66, 20, 1204, 160080, 14, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (67, 20, 1205, 160101, 72, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (68, 20, 1204, 160081, 74, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (69, 20, 1204, 160078, 88, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (70, 21, 1219, 160424, 2, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (71, 21, 1222, 160504, 9, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (72, 21, 1222, 160500, 41, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (73, 22, 1215, 160334, 42, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (74, 22, 1203, 160056, 49, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (75, 23, 1209, 160199, 2, NULL, N'ST', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (76, 23, 1210, 160229, 42, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (77, 23, 1210, 160227, 75, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (78, 23, 1210, 160216, 77, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (79, 23, 1209, 160192, 81, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (80, 23, 1209, 160197, 83, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (81, 24, 1202, 160028, 6, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (82, 24, 1214, 160321, 31, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (83, 24, 1214, 160307, 40, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (84, 24, 1202, 160037, 47, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (85, 24, 1202, 160029, 78, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (86, 24, 1202, 160042, 86, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (87, 25, 1201, 160012, 6, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (88, 25, 1216, 160353, 54, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (89, 25, 1201, 160017, 85, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (90, 25, 1216, 160356, 85, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (91, 25, 1216, 160364, 91, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (92, 25, 1201, 160007, 95, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (93, 26, 1207, 160147, 25, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (94, 26, 1207, 160145, 83, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (95, 27, 1224, 160551, 16, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (96, 27, 1217, 160383, 64, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (97, 28, 1218, 160409, 24, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (98, 28, 1206, 160119, 52, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (99, 29, 1223, 160520, 25, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (100, 29, 1223, 160513, 38, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (101, 29, 1213, 160290, 60, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (102, 31, 1222, 160491, 35, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (103, 31, 1205, 160108, 36, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (104, 31, 1205, 160107, 39, N'Y', N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (105, 31, 1222, 160490, 50, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (106, 31, 1205, 160112, 87, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (107, 32, 1204, 160087, 29, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (108, 32, 1204, 160079, 70, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (109, 32, 1204, 160076, 70, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (110, 32, 1204, 160085, 88, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (111, 33, 1210, 160218, 36, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (112, 33, 1210, 160230, 51, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (113, 33, 1202, 160045, 70, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (114, 33, 1210, 160220, 78, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (115, 33, 1210, 160208, 82, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (116, 34, 1209, 160190, 13, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (117, 34, 1209, 160191, 28, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (118, 34, 1209, 160203, 34, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (119, 34, 1209, 160202, 56, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (120, 35, 1211, 160233, 39, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (121, 35, 1215, 160343, 39, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (122, 35, 1215, 160332, 73, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (123, 35, 1211, 160234, 78, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (124, 35, 1211, 160253, 87, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (125, 35, 1211, 160251, 93, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (126, 36, 1203, 160064, 1, NULL, N'ST', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (127, 36, 1203, 160055, 30, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (128, 36, 1220, 160451, 72, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (129, 37, 1221, 160470, 55, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (130, 37, 1213, 160282, 58, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (131, 38, 1212, 160266, 44, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (132, 38, 1224, 160538, 58, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (133, 38, 1212, 160267, 67, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (134, 38, 1224, 160544, 92, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (135, 39, 1214, 160318, 78, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (136, 40, 1215, 160328, 25, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (137, 40, 1207, 160152, 27, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (138, 40, 1215, 160334, 41, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (139, 40, 1207, 160147, 44, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (140, 40, 1215, 160329, 66, N'Y', N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (141, 40, 1215, 160343, 72, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (142, 41, 1218, 160407, 2, NULL, N'ST', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (143, 41, 1218, 160401, 13, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (144, 41, 1208, 160169, 46, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (145, 41, 1208, 160168, 67, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (146, 42, 1209, 160192, 34, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (147, 42, 1209, 160194, 47, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (148, 42, 1209, 160196, 61, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (149, 42, 1203, 160056, 67, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (150, 42, 1203, 160065, 89, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (151, 42, 1203, 160061, 91, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (152, 42, 1209, 160207, 92, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (153, 43, 1219, 160431, 2, NULL, N'ST', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (154, 43, 1211, 160238, 24, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (155, 43, 1219, 160436, 41, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (156, 43, 1211, 160252, 54, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (157, 43, 1211, 160245, 89, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (158, 43, 1219, 160427, 89, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (159, 43, 1219, 160421, 89, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (160, 44, 1210, 160208, 38, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (161, 44, 1206, 160137, 47, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (162, 44, 1210, 160222, 65, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (163, 45, 1214, 160318, 2, NULL, N'ST', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (164, 45, 1213, 160282, 42, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (165, 45, 1213, 160281, 66, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (166, 45, 1214, 160310, 70, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (167, 45, 1213, 160290, 89, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (168, 46, 1224, 160535, 5, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (169, 46, 1224, 160533, 16, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (170, 46, 1224, 160536, 24, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (171, 46, 1203, 160061, 59, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (172, 46, 1224, 160544, 75, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (173, 46, 1203, 160050, 85, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (174, 47, 1211, 160247, 56, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (175, 47, 1211, 160238, 57, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (176, 47, 1211, 160246, 59, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (177, 47, 1208, 160168, 90, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (178, 47, 1208, 160180, 112, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (179, 48, 1210, 160221, 58, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (180, 48, 1207, 160149, 75, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (181, 49, 1224, 160540, 8, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (182, 49, 1224, 160533, 62, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (183, 49, 1214, 160303, 71, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (184, 49, 1214, 160322, 72, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (185, 49, 1224, 160547, 88, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (186, 50, 1208, 160177, 1, NULL, N'ST', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (187, 50, 1208, 160172, 36, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (188, 50, 1207, 160143, 43, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (189, 50, 1208, 160180, 45, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (190, 50, 1208, 160173, 50, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (191, 50, 1207, 160152, 75, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (192, 51, 1214, 160304, 34, NULL, N'NT', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (193, 51, 1214, 160313, 62, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (194, 51, 1207, 160149, 80, NULL, N'NT', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (195, 51, 1214, 160308, 95, NULL, N'ET', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (196, 51, 1207, 160153, 97, NULL, N'ET', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (197, 51, 1214, 160318, 98, NULL, N'ET', 1)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (198, 51, 1207, 160145, 107, NULL, N'ET', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (199, 51, 1207, 160155, 115, NULL, N'ET', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (200, 51, 1214, 160306, 119, NULL, N'ET', 2)
GO
INSERT [dbo].[player_booked] ([ID], [match_no], [team_id], [player_id], [booking_time], [sent_off], [play_schedule], [play_half]) VALUES (201, 51, 1214, 160302, 122, NULL, N'ET', 2)
GO
SET IDENTITY_INSERT [dbo].[player_booked] OFF
GO
SET IDENTITY_INSERT [dbo].[player_in_out] ON 
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (1, 1, 1207, 160151, N'I', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (2, 1, 1207, 160160, N'O', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (3, 1, 1207, 160161, N'I', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (4, 1, 1207, 160161, N'O', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (5, 1, 1207, 160157, N'I', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (6, 1, 1207, 160154, N'O', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (7, 1, 1216, 160365, N'I', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (8, 1, 1216, 160366, N'O', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (9, 1, 1216, 160357, N'I', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (10, 1, 1216, 160363, N'O', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (11, 1, 1216, 160364, N'I', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (12, 1, 1216, 160360, N'O', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (13, 2, 1201, 160014, N'I', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (14, 2, 1201, 160019, N'O', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (15, 2, 1201, 160021, N'I', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (16, 2, 1201, 160018, N'O', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (17, 2, 1201, 160022, N'I', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (18, 2, 1201, 160023, N'O', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (19, 2, 1221, 160480, N'I', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (20, 2, 1221, 160481, N'O', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (21, 2, 1221, 160475, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (22, 2, 1221, 160473, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (23, 2, 1221, 160474, N'I', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (24, 2, 1221, 160476, N'O', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (25, 3, 1218, 160413, N'I', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (26, 3, 1218, 160412, N'O', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (27, 3, 1218, 160403, N'I', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (28, 3, 1218, 160406, N'O', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (29, 3, 1218, 160410, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (30, 3, 1218, 160411, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (31, 3, 1224, 160543, N'I', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (32, 3, 1224, 160541, N'O', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (33, 3, 1224, 160550, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (34, 3, 1224, 160546, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (35, 3, 1224, 160537, N'I', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (36, 3, 1224, 160544, N'O', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (37, 4, 1206, 160133, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (38, 4, 1206, 160136, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (39, 4, 1206, 160131, N'I', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (40, 4, 1206, 160132, N'O', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (41, 4, 1217, 160386, N'I', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (42, 4, 1217, 160381, N'O', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (43, 4, 1217, 160380, N'I', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (44, 4, 1217, 160376, N'O', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (45, 4, 1217, 160383, N'I', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (46, 4, 1217, 160391, N'O', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (47, 5, 1204, 160090, N'I', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (48, 5, 1204, 160085, N'O', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (49, 5, 1204, 160075, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (50, 5, 1204, 160086, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (51, 5, 1204, 160092, N'I', 3, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (52, 5, 1204, 160091, N'O', 3, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (53, 5, 1222, 160502, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (54, 5, 1222, 160498, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (55, 5, 1222, 160504, N'I', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (56, 5, 1222, 160494, N'O', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (57, 5, 1222, 160506, N'I', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (58, 5, 1222, 160505, N'O', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (59, 6, 1212, 160266, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (60, 6, 1212, 160265, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (61, 6, 1212, 160276, N'I', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (62, 6, 1212, 160269, N'O', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (63, 6, 1212, 160272, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (64, 6, 1212, 160257, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (65, 6, 1213, 160289, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (66, 6, 1213, 160293, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (67, 6, 1213, 160288, N'I', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (68, 6, 1213, 160287, N'O', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (69, 6, 1213, 160294, N'I', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (70, 6, 1213, 160290, N'O', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (71, 7, 1208, 160179, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (72, 7, 1208, 160173, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (73, 7, 1208, 160180, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (74, 7, 1208, 160174, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (75, 7, 1223, 160528, N'I', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (76, 7, 1223, 160529, N'O', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (77, 7, 1223, 160526, N'I', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (78, 7, 1223, 160519, N'O', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (79, 8, 1205, 160113, N'I', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (80, 8, 1205, 160114, N'O', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (81, 8, 1205, 160112, N'I', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (82, 8, 1205, 160096, N'O', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (83, 8, 1205, 160107, N'I', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (84, 8, 1205, 160110, N'O', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (85, 8, 1219, 160433, N'I', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (86, 8, 1219, 160435, N'O', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (87, 8, 1219, 160432, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (88, 8, 1219, 160428, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (89, 8, 1219, 160437, N'I', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (90, 8, 1219, 160436, N'O', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (91, 9, 1215, 160337, N'I', 64, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (92, 9, 1215, 160345, N'O', 64, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (93, 9, 1215, 160342, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (94, 9, 1215, 160335, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (95, 9, 1215, 160338, N'I', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (96, 9, 1215, 160336, N'O', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (97, 9, 1220, 160444, N'I', 45, N'NT', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (98, 9, 1220, 160446, N'O', 45, N'NT', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (99, 9, 1220, 160458, N'I', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (100, 9, 1220, 160457, N'O', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (101, 9, 1220, 160449, N'I', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (102, 9, 1220, 160455, N'O', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (103, 10, 1203, 160068, N'I', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (104, 10, 1203, 160063, N'O', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (105, 10, 1203, 160069, N'I', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (106, 10, 1203, 160067, N'O', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (107, 10, 1203, 160058, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (108, 10, 1203, 160051, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (109, 10, 1211, 160238, N'I', 58, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (110, 10, 1211, 160237, N'O', 58, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (111, 10, 1211, 160250, N'I', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (112, 10, 1211, 160248, N'O', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (113, 10, 1211, 160245, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (114, 10, 1211, 160242, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (115, 11, 1202, 160041, N'I', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (116, 11, 1202, 160040, N'O', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (117, 11, 1202, 160046, N'I', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (118, 11, 1202, 160045, N'O', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (119, 11, 1202, 160042, N'I', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (120, 11, 1202, 160037, N'O', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (121, 11, 1209, 160206, N'I', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (122, 11, 1209, 160207, N'O', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (123, 11, 1209, 160200, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (124, 11, 1209, 160197, N'O', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (125, 11, 1209, 160195, N'I', 89, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (126, 11, 1209, 160204, N'O', 89, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (127, 12, 1210, 160227, N'I', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (128, 12, 1210, 160230, N'O', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (129, 12, 1210, 160211, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (130, 12, 1210, 160229, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (131, 12, 1214, 160316, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (132, 12, 1214, 160314, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (133, 12, 1214, 160321, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (134, 12, 1214, 160313, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (135, 12, 1214, 160319, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (136, 12, 1214, 160311, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (137, 13, 1217, 160380, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (138, 13, 1217, 160383, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (139, 13, 1217, 160376, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (140, 13, 1217, 160381, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (141, 13, 1217, 160386, N'I', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (142, 13, 1217, 160390, N'O', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (143, 13, 1218, 160413, N'I', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (144, 13, 1218, 160403, N'O', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (145, 13, 1218, 160402, N'I', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (146, 13, 1218, 160411, N'O', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (147, 13, 1218, 160412, N'I', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (148, 13, 1218, 160408, N'O', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (149, 14, 1216, 160358, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (150, 14, 1216, 160359, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (151, 14, 1216, 160350, N'I', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (152, 14, 1216, 160355, N'O', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (153, 14, 1216, 160366, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (154, 14, 1216, 160368, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (155, 14, 1221, 160480, N'I', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (156, 14, 1221, 160482, N'O', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (157, 14, 1221, 160466, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (158, 14, 1221, 160473, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (159, 14, 1221, 160483, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (160, 14, 1221, 160476, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (161, 15, 1201, 160018, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (162, 15, 1201, 160008, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (163, 15, 1201, 160019, N'I', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (164, 15, 1201, 160015, N'O', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (165, 15, 1201, 160010, N'I', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (166, 15, 1201, 160005, N'O', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (167, 15, 1207, 160155, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (168, 15, 1207, 160161, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (169, 15, 1207, 160160, N'I', 68, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (170, 15, 1207, 160151, N'O', 68, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (171, 15, 1207, 160158, N'I', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (172, 15, 1207, 160159, N'O', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (173, 16, 1206, 160138, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (174, 16, 1206, 160137, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (175, 16, 1206, 160134, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (176, 16, 1206, 160132, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (177, 16, 1206, 160135, N'I', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (178, 16, 1206, 160130, N'O', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (179, 16, 1224, 160541, N'I', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (180, 16, 1224, 160543, N'O', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (181, 16, 1224, 160546, N'I', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (182, 16, 1224, 160550, N'O', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (183, 17, 1212, 160275, N'I', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (184, 17, 1212, 160272, N'O', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (185, 17, 1212, 160270, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (186, 17, 1212, 160276, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (187, 17, 1212, 160265, N'I', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (188, 17, 1212, 160268, N'O', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (189, 17, 1223, 160529, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (190, 17, 1223, 160528, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (191, 17, 1223, 160516, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (192, 17, 1223, 160523, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (193, 17, 1223, 160526, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (194, 17, 1223, 160519, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (195, 18, 1208, 160179, N'I', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (196, 18, 1208, 160174, N'O', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (197, 18, 1208, 160182, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (198, 18, 1208, 160173, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (199, 18, 1213, 160289, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (200, 18, 1213, 160293, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (201, 18, 1213, 160290, N'I', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (202, 18, 1213, 160287, N'O', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (203, 18, 1213, 160294, N'I', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (204, 18, 1213, 160288, N'O', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (205, 19, 1211, 160253, N'I', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (206, 19, 1211, 160252, N'O', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (207, 19, 1211, 160245, N'I', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (208, 19, 1211, 160242, N'O', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (209, 19, 1211, 160247, N'I', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (210, 19, 1211, 160243, N'O', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (211, 19, 1220, 160455, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (212, 19, 1220, 160448, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (213, 19, 1220, 160449, N'O', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (214, 19, 1220, 160451, N'O', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (215, 19, 1220, 160457, N'I', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (216, 19, 1220, 160458, N'O', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (217, 20, 1204, 160083, N'I', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (218, 20, 1204, 160084, N'O', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (219, 20, 1204, 160075, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (220, 20, 1204, 160086, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (221, 20, 1204, 160079, N'I', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (222, 20, 1204, 160077, N'O', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (223, 20, 1205, 160115, N'I', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (224, 20, 1205, 160112, N'I', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (225, 20, 1205, 160113, N'O', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (226, 20, 1205, 160111, N'O', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (227, 20, 1205, 160114, N'I', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (228, 20, 1205, 160108, N'O', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (229, 21, 1219, 160426, N'I', 64, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (230, 21, 1219, 160431, N'O', 64, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (231, 21, 1219, 160430, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (232, 21, 1219, 160428, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (233, 21, 1219, 160418, N'I', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (234, 21, 1219, 160421, N'O', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (235, 21, 1222, 160497, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (236, 21, 1222, 160495, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (237, 21, 1222, 160499, N'I', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (238, 21, 1222, 160498, N'O', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (239, 21, 1222, 160503, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (240, 21, 1222, 160501, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (241, 22, 1203, 160063, N'I', 57, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (242, 22, 1203, 160060, N'O', 57, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (243, 22, 1203, 160068, N'I', 64, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (244, 22, 1203, 160058, N'O', 64, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (245, 22, 1203, 160066, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (246, 22, 1203, 160067, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (247, 22, 1215, 160337, N'I', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (248, 22, 1215, 160336, N'O', 62, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (249, 22, 1215, 160338, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (250, 22, 1215, 160335, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (251, 22, 1215, 160342, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (252, 22, 1215, 160343, N'O', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (253, 23, 1209, 160201, N'I', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (254, 23, 1209, 160205, N'I', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (255, 23, 1209, 160206, N'O', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (256, 23, 1209, 160200, N'O', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (257, 23, 1209, 160207, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (258, 23, 1209, 160191, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (259, 23, 1210, 160223, N'I', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (260, 23, 1210, 160222, N'O', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (261, 23, 1210, 160227, N'I', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (262, 23, 1210, 160226, N'O', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (263, 23, 1210, 160228, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (264, 23, 1210, 160230, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (265, 24, 1202, 160042, N'I', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (266, 24, 1202, 160034, N'O', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (267, 24, 1202, 160044, N'I', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (268, 24, 1202, 160041, N'O', 85, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (269, 24, 1202, 160033, N'I', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (270, 24, 1202, 160038, N'O', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (271, 24, 1214, 160313, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (272, 24, 1214, 160321, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (273, 24, 1214, 160319, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (274, 24, 1214, 160311, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (275, 24, 1214, 160315, N'I', 89, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (276, 24, 1214, 160320, N'O', 89, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (277, 25, 1201, 160020, N'I', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (278, 25, 1201, 160023, N'O', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (279, 25, 1201, 160018, N'I', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (280, 25, 1201, 160016, N'O', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (281, 25, 1201, 160013, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (282, 25, 1201, 160012, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (283, 25, 1216, 160362, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (284, 25, 1216, 160361, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (285, 25, 1216, 160364, N'I', 57, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (286, 25, 1216, 160365, N'O', 57, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (287, 25, 1216, 160366, N'I', 68, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (288, 25, 1216, 160360, N'O', 68, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (289, 26, 1207, 160154, N'I', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (290, 26, 1207, 160151, N'O', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (291, 26, 1207, 160153, N'I', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (292, 26, 1207, 160160, N'O', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (293, 26, 1221, 160482, N'I', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (294, 26, 1221, 160480, N'O', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (295, 26, 1221, 160474, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (296, 26, 1221, 160476, N'O', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (297, 26, 1221, 160466, N'I', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (298, 26, 1221, 160481, N'O', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (299, 27, 1217, 160372, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (300, 27, 1217, 160373, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (301, 27, 1217, 160381, N'I', 52, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (302, 27, 1217, 160386, N'O', 52, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (303, 27, 1217, 160384, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (304, 27, 1217, 160391, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (305, 27, 1224, 160541, N'I', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (306, 27, 1224, 160540, N'O', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (307, 27, 1224, 160542, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (308, 27, 1224, 160543, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (309, 27, 1224, 160548, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (310, 27, 1224, 160547, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (311, 28, 1206, 160136, N'I', 56, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (312, 28, 1206, 160133, N'O', 56, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (313, 28, 1206, 160126, N'I', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (314, 28, 1206, 160130, N'O', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (315, 28, 1206, 160134, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (316, 28, 1206, 160137, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (317, 28, 1218, 160402, N'I', 57, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (318, 28, 1218, 160403, N'O', 57, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (319, 28, 1218, 160396, N'I', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (320, 28, 1218, 160409, N'O', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (321, 28, 1218, 160400, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (322, 28, 1218, 160411, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (323, 29, 1213, 160287, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (324, 29, 1213, 160296, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (325, 29, 1213, 160288, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (326, 29, 1213, 160290, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (327, 29, 1213, 160295, N'I', 3, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (328, 29, 1213, 160298, N'O', 3, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (329, 29, 1223, 160519, N'I', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (330, 29, 1223, 160526, N'O', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (331, 29, 1223, 160524, N'I', 1, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (332, 29, 1223, 160529, N'O', 1, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (333, 30, 1208, 160179, N'I', 55, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (334, 30, 1208, 160174, N'O', 55, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (335, 30, 1208, 160180, N'I', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (336, 30, 1208, 160175, N'O', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (337, 30, 1208, 160167, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (338, 30, 1208, 160165, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (339, 30, 1212, 160274, N'I', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (340, 30, 1212, 160276, N'O', 59, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (341, 30, 1212, 160270, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (342, 30, 1212, 160272, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (343, 30, 1212, 160275, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (344, 30, 1212, 160268, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (345, 31, 1205, 160115, N'I', 57, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (346, 31, 1205, 160107, N'O', 57, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (347, 31, 1205, 160112, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (348, 31, 1205, 160104, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (349, 31, 1205, 160105, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (350, 31, 1205, 160108, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (351, 31, 1222, 160498, N'I', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (352, 31, 1222, 160502, N'O', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (353, 31, 1222, 160499, N'I', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (354, 31, 1222, 160506, N'O', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (355, 31, 1222, 160505, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (356, 31, 1222, 160504, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (357, 32, 1204, 160083, N'I', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (358, 32, 1204, 160087, N'O', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (359, 32, 1204, 160088, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (360, 32, 1204, 160092, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (361, 32, 1204, 160090, N'I', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (362, 32, 1204, 160085, N'O', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (363, 32, 1219, 160426, N'I', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (364, 32, 1219, 160436, N'O', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (365, 32, 1219, 160433, N'I', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (366, 32, 1219, 160435, N'O', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (367, 32, 1219, 160432, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (368, 32, 1219, 160428, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (369, 33, 1202, 160042, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (370, 33, 1202, 160045, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (371, 33, 1202, 160031, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (372, 33, 1202, 160038, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (373, 33, 1202, 160039, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (374, 33, 1202, 160041, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (375, 33, 1210, 160211, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (376, 33, 1210, 160226, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (377, 33, 1210, 160219, N'I', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (378, 33, 1210, 160230, N'O', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (379, 33, 1210, 160214, N'I', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (380, 33, 1210, 160229, N'O', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (381, 34, 1209, 160188, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (382, 34, 1209, 160203, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (383, 34, 1209, 160204, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (384, 34, 1209, 160207, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (385, 34, 1209, 160200, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (386, 34, 1209, 160198, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (387, 34, 1214, 160316, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (388, 34, 1214, 160314, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (389, 34, 1214, 160321, N'I', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (390, 34, 1214, 160311, N'O', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (391, 34, 1214, 160313, N'I', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (392, 34, 1214, 160320, N'O', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (393, 35, 1211, 160237, N'I', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (394, 35, 1211, 160240, N'O', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (395, 35, 1211, 160251, N'I', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (396, 35, 1211, 160250, N'O', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (397, 35, 1211, 160249, N'I', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (398, 35, 1211, 160238, N'O', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (399, 35, 1215, 160338, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (400, 35, 1215, 160344, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (401, 35, 1215, 160335, N'I', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (402, 35, 1215, 160336, N'O', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (403, 35, 1215, 160340, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (404, 35, 1215, 160343, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (405, 36, 1203, 160068, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (406, 36, 1203, 160058, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (407, 36, 1203, 160066, N'I', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (408, 36, 1203, 160067, N'O', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (409, 36, 1203, 160069, N'I', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (410, 36, 1203, 160062, N'O', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (411, 36, 1220, 160458, N'I', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (412, 36, 1220, 160457, N'O', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (413, 36, 1220, 160448, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (414, 36, 1220, 160454, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (415, 36, 1220, 160450, N'I', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (416, 36, 1220, 160451, N'O', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (417, 37, 1213, 160289, N'I', 101, N'ET', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (418, 37, 1213, 160293, N'O', 101, N'ET', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (419, 37, 1213, 160294, N'I', 104, N'ET', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (420, 37, 1213, 160288, N'O', 104, N'ET', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (421, 37, 1221, 160480, N'I', 58, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (422, 37, 1221, 160473, N'O', 58, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (423, 37, 1221, 160479, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (424, 37, 1221, 160481, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (425, 37, 1221, 160474, N'I', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (426, 37, 1221, 160472, N'O', 77, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (427, 38, 1212, 160276, N'I', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (428, 38, 1212, 160272, N'O', 69, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (429, 38, 1212, 160275, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (430, 38, 1212, 160271, N'O', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (431, 38, 1212, 160270, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (432, 38, 1212, 160262, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (433, 38, 1224, 160550, N'I', 55, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (434, 38, 1224, 160551, N'O', 55, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (435, 38, 1224, 160546, N'I', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (436, 38, 1224, 160543, N'O', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (437, 39, 1204, 160092, N'I', 110, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (438, 39, 1204, 160086, N'O', 110, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (439, 39, 1204, 160090, N'I', 120, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (440, 39, 1204, 160073, N'O', 120, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (441, 39, 1204, 160089, N'I', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (442, 39, 1204, 160091, N'O', 88, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (443, 39, 1214, 160313, N'I', 117, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (444, 39, 1214, 160310, N'O', 117, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (445, 39, 1214, 160316, N'I', 50, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (446, 39, 1214, 160311, N'O', 50, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (447, 39, 1214, 160321, N'I', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (448, 39, 1214, 160313, N'O', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (449, 40, 1207, 160151, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (450, 40, 1207, 160152, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (451, 40, 1207, 160158, N'I', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (452, 40, 1207, 160159, N'O', 73, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (453, 40, 1207, 160157, N'I', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (454, 40, 1207, 160151, N'O', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (455, 40, 1215, 160345, N'I', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (456, 40, 1215, 160344, N'O', 65, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (457, 40, 1215, 160331, N'I', 68, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (458, 40, 1215, 160337, N'O', 68, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (459, 40, 1215, 160335, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (460, 40, 1215, 160336, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (461, 41, 1208, 160167, N'I', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (462, 41, 1208, 160184, N'I', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (463, 41, 1208, 160165, N'O', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (464, 41, 1208, 160173, N'O', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (465, 41, 1208, 160180, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (466, 41, 1208, 160175, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (467, 41, 1218, 160404, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (468, 41, 1218, 160411, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (469, 41, 1218, 160414, N'I', 64, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (470, 41, 1218, 160412, N'O', 64, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (471, 41, 1218, 160399, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (472, 41, 1218, 160396, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (473, 42, 1203, 160058, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (474, 42, 1203, 160068, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (475, 42, 1203, 160065, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (476, 42, 1203, 160067, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (477, 42, 1203, 160061, N'I', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (478, 42, 1203, 160062, N'O', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (479, 42, 1209, 160196, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (480, 42, 1209, 160203, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (481, 42, 1209, 160205, N'I', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (482, 42, 1209, 160195, N'O', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (483, 42, 1209, 160201, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (484, 42, 1209, 160191, N'O', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (485, 43, 1211, 160245, N'I', 54, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (486, 43, 1211, 160242, N'O', 54, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (487, 43, 1211, 160251, N'I', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (488, 43, 1211, 160248, N'O', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (489, 43, 1211, 160237, N'I', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (490, 43, 1211, 160243, N'O', 84, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (491, 43, 1219, 160433, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (492, 43, 1219, 160436, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (493, 43, 1219, 160434, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (494, 43, 1219, 160435, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (495, 43, 1219, 160437, N'I', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (496, 43, 1219, 160433, N'O', 81, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (497, 44, 1206, 160133, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (498, 44, 1206, 160128, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (499, 44, 1206, 160138, N'I', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (500, 44, 1206, 160132, N'O', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (501, 44, 1206, 160135, N'I', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (502, 44, 1206, 160136, N'O', 87, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (503, 44, 1210, 160211, N'I', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (504, 44, 1210, 160230, N'O', 76, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (505, 44, 1210, 160219, N'I', 89, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (506, 44, 1210, 160226, N'O', 89, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (507, 45, 1213, 160289, N'I', 98, N'ET', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (508, 45, 1213, 160293, N'O', 98, N'ET', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (509, 45, 1213, 160290, N'I', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (510, 45, 1213, 160288, N'O', 82, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (511, 45, 1214, 160313, N'I', 96, N'ET', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (512, 45, 1214, 160318, N'O', 96, N'ET', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (513, 45, 1214, 160314, N'I', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (514, 45, 1214, 160310, N'O', 70, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (515, 45, 1214, 160321, N'I', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (516, 45, 1214, 160313, N'O', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (517, 46, 1203, 160061, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (518, 46, 1203, 160058, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (519, 46, 1203, 160068, N'I', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (520, 46, 1203, 160054, N'O', 75, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (521, 46, 1203, 160065, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (522, 46, 1203, 160067, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (523, 46, 1224, 160542, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (524, 46, 1224, 160543, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (525, 46, 1224, 160551, N'I', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (526, 46, 1224, 160550, N'O', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (527, 46, 1224, 160534, N'I', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (528, 46, 1224, 160544, N'O', 90, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (529, 47, 1208, 160180, N'I', 16, N'NT', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (530, 47, 1208, 160175, N'O', 16, N'NT', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (531, 47, 1208, 160173, N'I', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (532, 47, 1208, 160182, N'O', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (533, 47, 1211, 160253, N'I', 120, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (534, 47, 1211, 160236, N'O', 120, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (535, 47, 1211, 160237, N'I', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (536, 47, 1211, 160243, N'O', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (537, 47, 1211, 160251, N'I', 108, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (538, 47, 1211, 160248, N'O', 108, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (539, 48, 1207, 160158, N'I', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (540, 48, 1207, 160159, N'O', 60, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (541, 48, 1207, 160146, N'I', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (542, 48, 1207, 160145, N'O', 72, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (543, 48, 1207, 160151, N'I', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (544, 48, 1207, 160154, N'O', 80, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (545, 48, 1210, 160214, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (546, 48, 1210, 160227, N'I', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (547, 48, 1210, 160220, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (548, 48, 1210, 160226, N'O', 46, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (549, 48, 1210, 160228, N'I', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (550, 48, 1210, 160230, N'O', 83, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (551, 49, 1214, 160311, N'I', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (552, 49, 1214, 160316, N'O', 74, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (553, 49, 1214, 160314, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (554, 49, 1214, 160310, N'O', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (555, 49, 1214, 160321, N'I', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (556, 49, 1214, 160320, N'O', 86, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (557, 49, 1224, 160551, N'I', 58, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (558, 49, 1224, 160543, N'O', 58, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (559, 49, 1224, 160548, N'I', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (560, 49, 1224, 160550, N'O', 63, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (561, 49, 1224, 160546, N'I', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (562, 49, 1224, 160534, N'O', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (563, 50, 1207, 160152, N'I', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (564, 50, 1207, 160154, N'O', 71, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (565, 50, 1207, 160158, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (566, 50, 1207, 160159, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (567, 50, 1207, 160150, N'I', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (568, 50, 1207, 160160, N'O', 2, N'ST', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (569, 50, 1208, 160170, N'I', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (570, 50, 1208, 160165, N'O', 61, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (571, 50, 1208, 160174, N'I', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (572, 50, 1208, 160172, N'O', 67, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (573, 50, 1208, 160178, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (574, 50, 1208, 160180, N'O', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (575, 51, 1207, 160161, N'I', 110, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (576, 51, 1207, 160154, N'O', 110, N'ET', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (577, 51, 1207, 160151, N'I', 58, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (578, 51, 1207, 160154, N'O', 58, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (579, 51, 1207, 160158, N'I', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (580, 51, 1207, 160159, N'O', 78, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (581, 51, 1214, 160321, N'I', 25, N'NT', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (582, 51, 1214, 160322, N'O', 25, N'NT', 1)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (583, 51, 1214, 160314, N'I', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (584, 51, 1214, 160310, N'O', 66, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (585, 51, 1214, 160319, N'I', 79, N'NT', 2)
GO
INSERT [dbo].[player_in_out] ([ID], [match_no], [team_id], [player_id], [in_out], [time_in_out], [play_schedule], [play_half]) VALUES (586, 51, 1214, 160316, N'O', 79, N'NT', 2)
GO
SET IDENTITY_INSERT [dbo].[player_in_out] OFF
GO
SET IDENTITY_INSERT [dbo].[player_mast] ON 
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (1, 160001, 1201, 1, N'Etrit Berisha', N'GK', CAST(N'1989-03-10T00:00:00.0000000' AS DateTime2), 27, N'Lazio')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (2, 160008, 1201, 2, N'Andi Lila', N'DF', CAST(N'1986-02-12T00:00:00.0000000' AS DateTime2), 30, N'Giannina')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (3, 160016, 1201, 3, N'Ermir Lenjani', N'MF', CAST(N'1989-08-05T00:00:00.0000000' AS DateTime2), 26, N'Nantes')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (4, 160007, 1201, 4, N'Elseid Hysaj', N'DF', CAST(N'1994-02-20T00:00:00.0000000' AS DateTime2), 22, N'Napoli')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (5, 160013, 1201, 5, N'Lorik Cana', N'MF', CAST(N'1983-07-27T00:00:00.0000000' AS DateTime2), 32, N'Nantes')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (6, 160010, 1201, 6, N'Frederic Veseli', N'DF', CAST(N'1992-11-20T00:00:00.0000000' AS DateTime2), 23, N'Lugano')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (7, 160004, 1201, 7, N'Ansi Agolli', N'DF', CAST(N'1982-10-11T00:00:00.0000000' AS DateTime2), 33, N'Qarabag')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (8, 160012, 1201, 8, N'Migjen Basha', N'MF', CAST(N'1987-01-05T00:00:00.0000000' AS DateTime2), 29, N'Como')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (9, 160017, 1201, 9, N'Ledian Memushaj', N'MF', CAST(N'1986-12-17T00:00:00.0000000' AS DateTime2), 29, N'Pescara')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (10, 160023, 1201, 10, N'Armando Sadiku', N'FD', CAST(N'1991-05-27T00:00:00.0000000' AS DateTime2), 25, N'Vaduz')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (11, 160022, 1201, 11, N'Shkelzen Gashi', N'FD', CAST(N'1988-07-15T00:00:00.0000000' AS DateTime2), 27, N'Colorado')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (12, 160003, 1201, 12, N'Orges Shehi', N'GK', CAST(N'1977-09-25T00:00:00.0000000' AS DateTime2), 38, N'Skenderbeu')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (13, 160015, 1201, 13, N'Burim Kukeli', N'MF', CAST(N'1984-01-16T00:00:00.0000000' AS DateTime2), 32, N'Zurich')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (14, 160019, 1201, 14, N'Taulant Xhaka', N'MF', CAST(N'1991-03-28T00:00:00.0000000' AS DateTime2), 25, N'Basel')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (15, 160009, 1201, 15, N'Mergim Mavraj', N'DF', CAST(N'1986-06-09T00:00:00.0000000' AS DateTime2), 30, N'Koln')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (16, 160021, 1201, 16, N'Sokol Cikalleshi', N'FD', CAST(N'1990-07-27T00:00:00.0000000' AS DateTime2), 25, N'Istanbul Basaksehir')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (17, 160006, 1201, 17, N'Naser Aliji', N'DF', CAST(N'1993-12-27T00:00:00.0000000' AS DateTime2), 22, N'Basel')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (18, 160005, 1201, 18, N'Arlind Ajeti', N'DF', CAST(N'1993-09-25T00:00:00.0000000' AS DateTime2), 22, N'Frosinone')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (19, 160020, 1201, 19, N'Bekim Balaj', N'FD', CAST(N'1991-01-11T00:00:00.0000000' AS DateTime2), 25, N'Rijeka')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (20, 160014, 1201, 20, N'Ergys Kace', N'MF', CAST(N'1993-07-08T00:00:00.0000000' AS DateTime2), 22, N'PAOK')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (21, 160018, 1201, 21, N'Odise Roshi', N'MF', CAST(N'1991-05-22T00:00:00.0000000' AS DateTime2), 25, N'Rijeka')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (22, 160011, 1201, 22, N'Amir Abrashi', N'MF', CAST(N'1990-03-27T00:00:00.0000000' AS DateTime2), 26, N'Freiburg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (23, 160002, 1201, 23, N'Alban Hoxha', N'GK', CAST(N'1987-11-23T00:00:00.0000000' AS DateTime2), 28, N'Partizani')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (24, 160024, 1202, 1, N'Robert Almer', N'GK', CAST(N'1984-03-20T00:00:00.0000000' AS DateTime2), 32, N'Austria Wien')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (25, 160036, 1202, 2, N'Gyorgy Garics', N'MF', CAST(N'1984-03-08T00:00:00.0000000' AS DateTime2), 32, N'Darmstadt')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (26, 160027, 1202, 3, N'Aleksandar Dragovic', N'DF', CAST(N'1991-03-06T00:00:00.0000000' AS DateTime2), 25, N'Dynamo Kyiv')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (27, 160029, 1202, 4, N'Martin Hinteregger', N'DF', CAST(N'1992-09-07T00:00:00.0000000' AS DateTime2), 23, N'Monchengladbach')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (28, 160028, 1202, 5, N'Christian Fuchs', N'DF', CAST(N'1986-04-07T00:00:00.0000000' AS DateTime2), 30, N'Leicester')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (29, 160038, 1202, 6, N'Stefan Ilsanker', N'MF', CAST(N'1989-05-18T00:00:00.0000000' AS DateTime2), 27, N'Leipzig')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (30, 160043, 1202, 7, N'Marko Arnautovic', N'FD', CAST(N'1989-04-19T00:00:00.0000000' AS DateTime2), 27, N'Stoke')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (31, 160034, 1202, 8, N'David Alaba', N'MF', CAST(N'1992-06-24T00:00:00.0000000' AS DateTime2), 23, N'Bayern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (32, 160046, 1202, 9, N'Rubin Okotie', N'FD', CAST(N'1987-06-06T00:00:00.0000000' AS DateTime2), 29, N'1860 Munchen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (33, 160040, 1202, 10, N'Zlatko Junuzovic', N'MF', CAST(N'1987-09-26T00:00:00.0000000' AS DateTime2), 28, N'Bremen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (34, 160037, 1202, 11, N'Martin Harnik', N'MF', CAST(N'1987-06-10T00:00:00.0000000' AS DateTime2), 29, N'Stuttgart')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (35, 160025, 1202, 12, N'Heinz Lindner', N'GK', CAST(N'1990-07-17T00:00:00.0000000' AS DateTime2), 25, N'Frankfurt')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (36, 160032, 1202, 13, N'Markus Suttner', N'DF', CAST(N'1987-04-16T00:00:00.0000000' AS DateTime2), 29, N'Ingolstadt')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (37, 160035, 1202, 14, N'Julian Baumgartlinger', N'MF', CAST(N'1988-01-02T00:00:00.0000000' AS DateTime2), 28, N'Mainz')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (38, 160031, 1202, 15, N'Sebastian Prodl', N'DF', CAST(N'1987-06-21T00:00:00.0000000' AS DateTime2), 28, N'Watford')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (39, 160033, 1202, 16, N'Kevin Wimmer', N'DF', CAST(N'1992-11-15T00:00:00.0000000' AS DateTime2), 23, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (40, 160030, 1202, 17, N'Florian Klein', N'DF', CAST(N'1986-11-17T00:00:00.0000000' AS DateTime2), 29, N'Stuttgart')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (41, 160042, 1202, 18, N'Alessandro Schopf', N'MF', CAST(N'1994-02-07T00:00:00.0000000' AS DateTime2), 22, N'Schalke')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (42, 160044, 1202, 19, N'Lukas Hinterseer', N'FD', CAST(N'1991-03-28T00:00:00.0000000' AS DateTime2), 25, N'Ingolstadt')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (43, 160041, 1202, 20, N'Marcel Sabitzer', N'MF', CAST(N'1994-03-17T00:00:00.0000000' AS DateTime2), 22, N'Leipzig')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (44, 160045, 1202, 21, N'Marc Janko', N'FD', CAST(N'1983-06-25T00:00:00.0000000' AS DateTime2), 32, N'Basel')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (45, 160039, 1202, 22, N'Jakob Jantscher', N'MF', CAST(N'1989-01-08T00:00:00.0000000' AS DateTime2), 27, N'Luzern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (46, 160026, 1202, 23, N'Ramazan Ozcan', N'GK', CAST(N'1984-06-28T00:00:00.0000000' AS DateTime2), 31, N'Ingolstadt')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (47, 160047, 1203, 1, N'Thibaut Courtois', N'GK', CAST(N'1992-05-11T00:00:00.0000000' AS DateTime2), 24, N'Chelsea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (48, 160050, 1203, 2, N'Toby Alderweireld', N'DF', CAST(N'1989-03-02T00:00:00.0000000' AS DateTime2), 27, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (49, 160056, 1203, 3, N'Thomas Vermaelen', N'DF', CAST(N'1985-11-14T00:00:00.0000000' AS DateTime2), 30, N'Barcelona')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (50, 160063, 1203, 4, N'Radja Nainggolan', N'MF', CAST(N'1988-05-04T00:00:00.0000000' AS DateTime2), 28, N'Roma')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (51, 160057, 1203, 5, N'Jan Vertonghen', N'DF', CAST(N'1987-04-24T00:00:00.0000000' AS DateTime2), 29, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (52, 160064, 1203, 6, N'Axel Witsel', N'MF', CAST(N'1989-01-12T00:00:00.0000000' AS DateTime2), 27, N'Zenit')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (53, 160059, 1203, 7, N'Kevin De Bruyne', N'MF', CAST(N'1991-06-28T00:00:00.0000000' AS DateTime2), 24, N'Man. City')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (54, 160061, 1203, 8, N'Marouane Fellaini', N'MF', CAST(N'1987-11-22T00:00:00.0000000' AS DateTime2), 28, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (55, 160067, 1203, 9, N'Romelu Lukaku', N'FD', CAST(N'1993-05-13T00:00:00.0000000' AS DateTime2), 23, N'Everton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (56, 160062, 1203, 10, N'Eden Hazard', N'MF', CAST(N'1991-01-07T00:00:00.0000000' AS DateTime2), 25, N'Chelsea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (57, 160058, 1203, 11, N'Yannick Carrasco', N'MF', CAST(N'1993-09-04T00:00:00.0000000' AS DateTime2), 22, N'Atletico')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (58, 160049, 1203, 12, N'Simon Mignolet', N'GK', CAST(N'1988-08-06T00:00:00.0000000' AS DateTime2), 27, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (59, 160048, 1203, 13, N'Jean-Francois Gillet', N'GK', CAST(N'1979-05-31T00:00:00.0000000' AS DateTime2), 37, N'Mechelen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (60, 160068, 1203, 14, N'Dries Mertens', N'FD', CAST(N'1987-05-06T00:00:00.0000000' AS DateTime2), 29, N'Napoli')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (61, 160052, 1203, 15, N'Jason Denayer', N'DF', CAST(N'1995-06-28T00:00:00.0000000' AS DateTime2), 20, N'Galatasaray')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (62, 160055, 1203, 16, N'Thomas Meunier', N'DF', CAST(N'1991-09-12T00:00:00.0000000' AS DateTime2), 24, N'Club Brugge')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (63, 160069, 1203, 17, N'Divock Origi', N'FD', CAST(N'1995-04-18T00:00:00.0000000' AS DateTime2), 21, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (64, 160053, 1203, 18, N'Christian Kabasele', N'DF', CAST(N'1991-02-24T00:00:00.0000000' AS DateTime2), 25, N'Genk')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (65, 160060, 1203, 19, N'Mousa Dembele', N'MF', CAST(N'1987-07-16T00:00:00.0000000' AS DateTime2), 28, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (66, 160066, 1203, 20, N'Christian Benteke', N'FD', CAST(N'1990-12-03T00:00:00.0000000' AS DateTime2), 25, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (67, 160054, 1203, 21, N'Jordan Lukaku', N'DF', CAST(N'1994-07-25T00:00:00.0000000' AS DateTime2), 21, N'Oostende')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (68, 160065, 1203, 22, N'Michy Batshuayi', N'FD', CAST(N'1993-10-02T00:00:00.0000000' AS DateTime2), 22, N'Marseille')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (69, 160051, 1203, 23, N'Laurent Ciman', N'DF', CAST(N'1985-08-05T00:00:00.0000000' AS DateTime2), 30, N'Montreal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (70, 160072, 1204, 1, N'Ivan Vargic', N'GK', CAST(N'1987-03-15T00:00:00.0000000' AS DateTime2), 29, N'Rijeka')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (71, 160079, 1204, 2, N'Sime Vrsaljko', N'DF', CAST(N'1992-01-10T00:00:00.0000000' AS DateTime2), 24, N'Sassuolo')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (72, 160077, 1204, 3, N'Ivan Strinic', N'DF', CAST(N'1987-07-17T00:00:00.0000000' AS DateTime2), 28, N'Napoli')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (73, 160085, 1204, 4, N'Ivan PeriSic', N'MF', CAST(N'1989-02-02T00:00:00.0000000' AS DateTime2), 27, N'Internazionale')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (74, 160073, 1204, 5, N'Vedran Corluka', N'DF', CAST(N'1986-02-05T00:00:00.0000000' AS DateTime2), 30, N'Lokomotiv Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (75, 160074, 1204, 6, N'Tin Jedvaj', N'DF', CAST(N'1995-11-28T00:00:00.0000000' AS DateTime2), 20, N'Leverkusen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (76, 160086, 1204, 7, N'Ivan Rakitic', N'MF', CAST(N'1988-03-10T00:00:00.0000000' AS DateTime2), 28, N'Barcelona')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (77, 160083, 1204, 8, N'Mateo Kovacic', N'MF', CAST(N'1994-05-06T00:00:00.0000000' AS DateTime2), 22, N'Real Madrid')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (78, 160090, 1204, 9, N'Andrej Kramaric', N'FD', CAST(N'1991-06-19T00:00:00.0000000' AS DateTime2), 24, N'Hoffenheim')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (79, 160084, 1204, 10, N'Luka Modric', N'MF', CAST(N'1985-09-09T00:00:00.0000000' AS DateTime2), 30, N'Real Madrid')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (80, 160076, 1204, 11, N'Darijo Srna', N'DF', CAST(N'1982-05-01T00:00:00.0000000' AS DateTime2), 34, N'Shakhtar Donetsk')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (81, 160070, 1204, 12, N'Lovre Kalinic', N'GK', CAST(N'1990-04-03T00:00:00.0000000' AS DateTime2), 26, N'Hajduk Split')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (82, 160075, 1204, 13, N'Gordon Schildenfeld', N'DF', CAST(N'1985-03-18T00:00:00.0000000' AS DateTime2), 31, N'Dinamo Zagreb')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (83, 160081, 1204, 14, N'Marcelo Brozovic', N'MF', CAST(N'1992-11-16T00:00:00.0000000' AS DateTime2), 23, N'Internazionale')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (84, 160087, 1204, 15, N'Marko Rog', N'MF', CAST(N'1995-07-19T00:00:00.0000000' AS DateTime2), 20, N'Dinamo Zagreb')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (85, 160089, 1204, 16, N'Nikola Kalinic', N'FD', CAST(N'1988-01-05T00:00:00.0000000' AS DateTime2), 28, N'Fiorentina')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (86, 160091, 1204, 17, N'Mario Mandzukic', N'FD', CAST(N'1986-05-21T00:00:00.0000000' AS DateTime2), 30, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (87, 160082, 1204, 18, N'Ante Coric', N'MF', CAST(N'1997-04-14T00:00:00.0000000' AS DateTime2), 19, N'Dinamo Zagreb')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (88, 160080, 1204, 19, N'Milan Badelj', N'MF', CAST(N'1989-02-25T00:00:00.0000000' AS DateTime2), 27, N'Fiorentina')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (89, 160092, 1204, 20, N'Marko Pjaca', N'FD', CAST(N'1995-05-06T00:00:00.0000000' AS DateTime2), 21, N'Dinamo Zagreb')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (90, 160078, 1204, 21, N'Domagoj Vida', N'DF', CAST(N'1989-04-29T00:00:00.0000000' AS DateTime2), 27, N'Dynamo Kyiv')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (91, 160088, 1204, 22, N'Duje Cop', N'FD', CAST(N'1990-02-01T00:00:00.0000000' AS DateTime2), 26, N'Malaga')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (92, 160071, 1204, 23, N'Danijel SubaSic', N'GK', CAST(N'1984-10-27T00:00:00.0000000' AS DateTime2), 31, N'Monaco')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (93, 160093, 1205, 1, N'Petr Cech', N'GK', CAST(N'1982-05-20T00:00:00.0000000' AS DateTime2), 34, N'Arsenal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (94, 160098, 1205, 2, N'Pavel Kaderabek', N'DF', CAST(N'1992-04-25T00:00:00.0000000' AS DateTime2), 24, N'Hoffenheim')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (95, 160099, 1205, 3, N'Michal Kadlec', N'DF', CAST(N'1984-12-13T00:00:00.0000000' AS DateTime2), 31, N'Fenerbahce')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (96, 160096, 1205, 4, N'Theodor Gebre Selassie', N'DF', CAST(N'1986-12-24T00:00:00.0000000' AS DateTime2), 29, N'Bremen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (97, 160097, 1205, 5, N'Roman Hubnik', N'DF', CAST(N'1984-06-06T00:00:00.0000000' AS DateTime2), 32, N'Plzen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (98, 160101, 1205, 6, N'TomasSivok', N'DF', CAST(N'1983-09-15T00:00:00.0000000' AS DateTime2), 32, N'Bursaspor')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (99, 160114, 1205, 7, N'TomasNecid', N'FD', CAST(N'1989-08-13T00:00:00.0000000' AS DateTime2), 26, N'Bursaspor')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (100, 160100, 1205, 8, N'David Limbersky', N'DF', CAST(N'1983-10-06T00:00:00.0000000' AS DateTime2), 32, N'Plzen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (101, 160104, 1205, 9, N'Borek Dockal', N'MF', CAST(N'1988-09-30T00:00:00.0000000' AS DateTime2), 27, N'Sparta Praha')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (102, 160110, 1205, 10, N'TomasRosicky', N'MF', CAST(N'1980-10-04T00:00:00.0000000' AS DateTime2), 35, N'Arsenal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (103, 160109, 1205, 11, N'Daniel Pudil', N'MF', CAST(N'1985-09-27T00:00:00.0000000' AS DateTime2), 30, N'Sheff. Wednesday')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (104, 160115, 1205, 12, N'Milan Skoda', N'FD', CAST(N'1986-01-16T00:00:00.0000000' AS DateTime2), 30, N'Slavia Praha')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (105, 160108, 1205, 13, N'Jaroslav PlaSil', N'MF', CAST(N'1982-01-05T00:00:00.0000000' AS DateTime2), 34, N'Bordeaux')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (106, 160105, 1205, 14, N'Daniel Kolar', N'MF', CAST(N'1985-10-27T00:00:00.0000000' AS DateTime2), 30, N'Plzen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (107, 160107, 1205, 15, N'David Pavelka', N'MF', CAST(N'1991-05-18T00:00:00.0000000' AS DateTime2), 25, N'Kasimpasa')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (108, 160095, 1205, 16, N'TomasVaclik', N'GK', CAST(N'1989-03-29T00:00:00.0000000' AS DateTime2), 27, N'Basel')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (109, 160102, 1205, 17, N'Marek Suchy', N'DF', CAST(N'1988-03-29T00:00:00.0000000' AS DateTime2), 28, N'Basel')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (110, 160112, 1205, 18, N'Josef Sural', N'MF', CAST(N'1990-05-30T00:00:00.0000000' AS DateTime2), 26, N'Sparta Praha')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (111, 160106, 1205, 19, N'Ladislav Krejci', N'MF', CAST(N'1992-07-05T00:00:00.0000000' AS DateTime2), 23, N'Sparta Praha')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (112, 160111, 1205, 20, N'Jiri Skalak', N'MF', CAST(N'1992-03-12T00:00:00.0000000' AS DateTime2), 24, N'Brighton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (113, 160113, 1205, 21, N'David Lafata', N'FD', CAST(N'1981-09-18T00:00:00.0000000' AS DateTime2), 34, N'Sparta Praha')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (114, 160103, 1205, 22, N'Vladimir Darida', N'MF', CAST(N'1990-08-08T00:00:00.0000000' AS DateTime2), 25, N'Hertha')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (115, 160094, 1205, 23, N'TomasKoubek', N'GK', CAST(N'1992-08-26T00:00:00.0000000' AS DateTime2), 23, N'Liberec')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (116, 160117, 1206, 1, N'Joe Hart', N'GK', CAST(N'1987-04-19T00:00:00.0000000' AS DateTime2), 29, N'Man. City')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (117, 160125, 1206, 2, N'Kyle Walker', N'DF', CAST(N'1990-05-28T00:00:00.0000000' AS DateTime2), 26, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (118, 160122, 1206, 3, N'Danny Rose', N'DF', CAST(N'1990-07-02T00:00:00.0000000' AS DateTime2), 25, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (119, 160131, 1206, 4, N'James Milner', N'MF', CAST(N'1986-01-04T00:00:00.0000000' AS DateTime2), 30, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (120, 160120, 1206, 5, N'Gary Cahill', N'DF', CAST(N'1985-12-19T00:00:00.0000000' AS DateTime2), 30, N'Chelsea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (121, 160123, 1206, 6, N'Chris Smalling', N'DF', CAST(N'1989-11-22T00:00:00.0000000' AS DateTime2), 26, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (122, 160132, 1206, 7, N'Raheem Sterling', N'MF', CAST(N'1994-12-08T00:00:00.0000000' AS DateTime2), 21, N'Man. City')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (123, 160130, 1206, 8, N'Adam Lallana', N'MF', CAST(N'1988-05-10T00:00:00.0000000' AS DateTime2), 28, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (124, 160134, 1206, 9, N'Harry Kane', N'FD', CAST(N'1993-07-28T00:00:00.0000000' AS DateTime2), 22, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (125, 160136, 1206, 10, N'Wayne Rooney', N'FD', CAST(N'1985-10-24T00:00:00.0000000' AS DateTime2), 30, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (126, 160138, 1206, 11, N'Jamie Vardy', N'FD', CAST(N'1987-01-11T00:00:00.0000000' AS DateTime2), 29, N'Leicester')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (127, 160121, 1206, 12, N'Nathaniel Clyne', N'DF', CAST(N'1991-04-05T00:00:00.0000000' AS DateTime2), 25, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (128, 160116, 1206, 13, N'Fraser Forster', N'GK', CAST(N'1988-03-17T00:00:00.0000000' AS DateTime2), 28, N'Southampton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (129, 160129, 1206, 14, N'Jordan Henderson', N'MF', CAST(N'1990-06-17T00:00:00.0000000' AS DateTime2), 26, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (130, 160137, 1206, 15, N'Daniel Sturridge', N'FD', CAST(N'1989-09-01T00:00:00.0000000' AS DateTime2), 26, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (131, 160124, 1206, 16, N'John Stones', N'DF', CAST(N'1994-05-28T00:00:00.0000000' AS DateTime2), 22, N'Everton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (132, 160128, 1206, 17, N'Eric Dier', N'MF', CAST(N'1994-01-15T00:00:00.0000000' AS DateTime2), 22, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (133, 160133, 1206, 18, N'Jack Wilshere', N'MF', CAST(N'1992-01-01T00:00:00.0000000' AS DateTime2), 24, N'Arsenal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (134, 160127, 1206, 19, N'Ross Barkley', N'MF', CAST(N'1993-12-05T00:00:00.0000000' AS DateTime2), 22, N'Everton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (135, 160126, 1206, 20, N'Dele Alli', N'MF', CAST(N'1996-04-11T00:00:00.0000000' AS DateTime2), 20, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (136, 160119, 1206, 21, N'Ryan Bertrand', N'DF', CAST(N'1989-08-05T00:00:00.0000000' AS DateTime2), 26, N'Southampton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (137, 160135, 1206, 22, N'Marcus Rashford', N'FD', CAST(N'1997-10-31T00:00:00.0000000' AS DateTime2), 18, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (138, 160118, 1206, 23, N'Tom Heaton', N'GK', CAST(N'1986-04-15T00:00:00.0000000' AS DateTime2), 30, N'Burnley')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (139, 160140, 1207, 1, N'Hugo Lloris', N'GK', CAST(N'1986-12-26T00:00:00.0000000' AS DateTime2), 29, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (140, 160144, 1207, 2, N'Christophe Jallet', N'DF', CAST(N'1983-10-31T00:00:00.0000000' AS DateTime2), 32, N'Lyon')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (141, 160143, 1207, 3, N'Patrice Evra', N'DF', CAST(N'1981-05-15T00:00:00.0000000' AS DateTime2), 35, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (142, 160147, 1207, 4, N'Adil Rami', N'DF', CAST(N'1985-12-27T00:00:00.0000000' AS DateTime2), 30, N'Sevilla')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (143, 160152, 1207, 5, N'NGolo Kante', N'MF', CAST(N'1991-03-29T00:00:00.0000000' AS DateTime2), 25, N'Leicester')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (144, 160150, 1207, 6, N'Yohan Cabaye', N'MF', CAST(N'1986-01-14T00:00:00.0000000' AS DateTime2), 30, N'Crystal Palace')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (145, 160160, 1207, 7, N'Antoine Griezmann', N'FD', CAST(N'1991-03-21T00:00:00.0000000' AS DateTime2), 25, N'Atletico')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (146, 160154, 1207, 8, N'Dimitri Payet', N'MF', CAST(N'1987-03-29T00:00:00.0000000' AS DateTime2), 29, N'West Ham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (147, 160159, 1207, 9, N'Olivier Giroud', N'FD', CAST(N'1986-09-30T00:00:00.0000000' AS DateTime2), 29, N'Arsenal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (148, 160158, 1207, 10, N'Andre-Pierre Gignac', N'FD', CAST(N'1985-12-05T00:00:00.0000000' AS DateTime2), 30, N'Tigres')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (149, 160161, 1207, 11, N'Anthony Martial', N'FD', CAST(N'1995-12-05T00:00:00.0000000' AS DateTime2), 20, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (150, 160156, 1207, 12, N'Morgan Schneiderlin', N'MF', CAST(N'1989-11-08T00:00:00.0000000' AS DateTime2), 26, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (151, 160146, 1207, 13, N'Eliaquim Mangala', N'DF', CAST(N'1991-02-13T00:00:00.0000000' AS DateTime2), 25, N'Man. City')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (152, 160153, 1207, 14, N'Blaise Matuidi', N'MF', CAST(N'1987-04-09T00:00:00.0000000' AS DateTime2), 29, N'Paris')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (153, 160155, 1207, 15, N'Paul Pogba', N'MF', CAST(N'1993-03-15T00:00:00.0000000' AS DateTime2), 23, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (154, 160141, 1207, 16, N'Steve Mandanda', N'GK', CAST(N'1985-03-28T00:00:00.0000000' AS DateTime2), 31, N'Marseille')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (155, 160142, 1207, 17, N'Lucas Digne', N'DF', CAST(N'1993-07-20T00:00:00.0000000' AS DateTime2), 22, N'Roma')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (156, 160157, 1207, 18, N'Moussa Sissoko', N'MF', CAST(N'1989-08-16T00:00:00.0000000' AS DateTime2), 26, N'Newcastle')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (157, 160148, 1207, 19, N'Bacary Sagna', N'DF', CAST(N'1983-02-14T00:00:00.0000000' AS DateTime2), 33, N'Man. City')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (158, 160151, 1207, 20, N'Kingsley Coman', N'MF', CAST(N'1996-06-13T00:00:00.0000000' AS DateTime2), 20, N'Bayern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (159, 160145, 1207, 21, N'Laurent Koscielny', N'DF', CAST(N'1985-09-10T00:00:00.0000000' AS DateTime2), 30, N'Arsenal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (160, 160149, 1207, 22, N'Samuel Umtiti', N'DF', CAST(N'1993-11-14T00:00:00.0000000' AS DateTime2), 22, N'Lyon')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (161, 160139, 1207, 23, N'Benoit Costil', N'GK', CAST(N'1987-07-03T00:00:00.0000000' AS DateTime2), 28, N'Rennes')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (162, 160163, 1208, 1, N'Manuel Neuer', N'GK', CAST(N'1986-03-27T00:00:00.0000000' AS DateTime2), 30, N'Bayern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (163, 160170, 1208, 2, N'Shkodran Mustafi', N'DF', CAST(N'1992-04-17T00:00:00.0000000' AS DateTime2), 24, N'Valencia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (164, 160166, 1208, 3, N'Jonas Hector', N'DF', CAST(N'1990-05-27T00:00:00.0000000' AS DateTime2), 26, N'Koln')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (165, 160167, 1208, 4, N'Benedikt Howedes', N'DF', CAST(N'1988-02-29T00:00:00.0000000' AS DateTime2), 28, N'Schalke')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (166, 160168, 1208, 5, N'Mats Hummels', N'DF', CAST(N'1988-12-16T00:00:00.0000000' AS DateTime2), 27, N'Dortmund')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (167, 160175, 1208, 6, N'Sami Khedira', N'MF', CAST(N'1987-04-04T00:00:00.0000000' AS DateTime2), 29, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (168, 160180, 1208, 7, N'Bastian Schweinsteiger', N'MF', CAST(N'1984-08-01T00:00:00.0000000' AS DateTime2), 31, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (169, 160177, 1208, 8, N'Mesut ozil', N'MF', CAST(N'1988-10-15T00:00:00.0000000' AS DateTime2), 27, N'Arsenal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (170, 160179, 1208, 9, N'Andre Schurrle', N'MF', CAST(N'1990-11-06T00:00:00.0000000' AS DateTime2), 25, N'Wolfsburg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (171, 160184, 1208, 10, N'Lukas Podolski', N'FD', CAST(N'1985-06-04T00:00:00.0000000' AS DateTime2), 31, N'Galatasaray')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (172, 160173, 1208, 11, N'Julian Draxler', N'MF', CAST(N'1993-09-20T00:00:00.0000000' AS DateTime2), 22, N'Wolfsburg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (173, 160162, 1208, 12, N'Bernd Leno', N'GK', CAST(N'1992-03-04T00:00:00.0000000' AS DateTime2), 24, N'Leverkusen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (174, 160183, 1208, 13, N'Thomas Muller', N'FD', CAST(N'1989-09-13T00:00:00.0000000' AS DateTime2), 26, N'Bayern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (175, 160172, 1208, 14, N'Emre Can', N'MF', CAST(N'1994-01-12T00:00:00.0000000' AS DateTime2), 22, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (176, 160181, 1208, 15, N'Julian Weigl', N'MF', CAST(N'1995-09-08T00:00:00.0000000' AS DateTime2), 20, N'Dortmund')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (177, 160171, 1208, 16, N'Jonathan Tah', N'DF', CAST(N'1996-02-11T00:00:00.0000000' AS DateTime2), 20, N'Leverkusen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (178, 160165, 1208, 17, N'Jerome Boateng', N'DF', CAST(N'1988-09-03T00:00:00.0000000' AS DateTime2), 27, N'Bayern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (179, 160176, 1208, 18, N'Toni Kroos', N'MF', CAST(N'1990-01-04T00:00:00.0000000' AS DateTime2), 26, N'Real Madrid')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (180, 160174, 1208, 19, N'Mario Gotze', N'MF', CAST(N'1992-06-03T00:00:00.0000000' AS DateTime2), 24, N'Bayern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (181, 160178, 1208, 20, N'Leroy Sane', N'MF', CAST(N'1996-01-11T00:00:00.0000000' AS DateTime2), 20, N'Schalke')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (182, 160169, 1208, 21, N'Joshua Kimmich', N'DF', CAST(N'1995-02-08T00:00:00.0000000' AS DateTime2), 21, N'Bayern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (183, 160164, 1208, 22, N'Marc-Andre ter Stegen', N'GK', CAST(N'1992-04-30T00:00:00.0000000' AS DateTime2), 24, N'Barcelona')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (184, 160182, 1208, 23, N'Mario Gomez', N'FD', CAST(N'1985-07-10T00:00:00.0000000' AS DateTime2), 30, N'Besiktas')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (185, 160187, 1209, 1, N'Gabor Kiraly', N'GK', CAST(N'1976-04-01T00:00:00.0000000' AS DateTime2), 40, N'Haladas')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (186, 160194, 1209, 2, N'Adam Lang', N'DF', CAST(N'1993-01-17T00:00:00.0000000' AS DateTime2), 23, N'Videoton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (187, 160193, 1209, 3, N'Mihaly Korhut', N'DF', CAST(N'1988-12-01T00:00:00.0000000' AS DateTime2), 27, N'Debrecen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (188, 160192, 1209, 4, N'Tamas Kadar', N'DF', CAST(N'1990-03-14T00:00:00.0000000' AS DateTime2), 26, N'Lech')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (189, 160189, 1209, 5, N'Attila Fiola', N'DF', CAST(N'1990-02-17T00:00:00.0000000' AS DateTime2), 26, N'Puskas Akademia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (190, 160196, 1209, 6, N'Akos Elek', N'MF', CAST(N'1988-07-21T00:00:00.0000000' AS DateTime2), 27, N'Diosgyor')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (191, 160202, 1209, 7, N'Balazs Dzsudzsak', N'FD', CAST(N'1986-12-23T00:00:00.0000000' AS DateTime2), 29, N'Bursaspor')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (192, 160199, 1209, 8, N'Adam Nagy', N'MF', CAST(N'1995-06-17T00:00:00.0000000' AS DateTime2), 21, N'Ferencvaros')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (193, 160207, 1209, 9, N'Adam Szalai', N'FD', CAST(N'1987-12-09T00:00:00.0000000' AS DateTime2), 28, N'Hannover')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (194, 160203, 1209, 10, N'Zoltan Gera', N'FD', CAST(N'1979-04-22T00:00:00.0000000' AS DateTime2), 37, N'Ferencvaros')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (195, 160204, 1209, 11, N'Krisztian Nemeth', N'FD', CAST(N'1989-01-05T00:00:00.0000000' AS DateTime2), 27, N'Al-Gharafa')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (196, 160185, 1209, 12, N'Denes Dibusz', N'GK', CAST(N'1990-11-16T00:00:00.0000000' AS DateTime2), 25, N'Ferencvaros')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (197, 160201, 1209, 13, N'Daniel Bode', N'FD', CAST(N'1986-10-24T00:00:00.0000000' AS DateTime2), 29, N'Ferencvaros')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (198, 160198, 1209, 14, N'Gergo Lovrencsics', N'MF', CAST(N'1988-09-01T00:00:00.0000000' AS DateTime2), 27, N'Lech')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (199, 160197, 1209, 15, N'Laszlo Kleinheisler', N'MF', CAST(N'1994-04-08T00:00:00.0000000' AS DateTime2), 22, N'Bremen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (200, 160195, 1209, 16, N'adam Pinter', N'DF', CAST(N'1988-06-12T00:00:00.0000000' AS DateTime2), 28, N'Ferencvaros')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (201, 160205, 1209, 17, N'Nemanja Nikolic', N'FD', CAST(N'1987-12-31T00:00:00.0000000' AS DateTime2), 28, N'Legia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (202, 160200, 1209, 18, N'Zoltan Stieber', N'MF', CAST(N'1988-10-16T00:00:00.0000000' AS DateTime2), 27, N'Nurnberg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (203, 160206, 1209, 19, N'Tamas Priskin', N'FD', CAST(N'1986-09-27T00:00:00.0000000' AS DateTime2), 29, N'Slovan Bratislava')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (204, 160190, 1209, 20, N'Richard Guzmics', N'DF', CAST(N'1987-04-16T00:00:00.0000000' AS DateTime2), 29, N'Wisla')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (205, 160188, 1209, 21, N'Barnabas Bese', N'DF', CAST(N'1994-05-06T00:00:00.0000000' AS DateTime2), 22, N'MTK')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (206, 160186, 1209, 22, N'Peter Gulacsi', N'GK', CAST(N'1990-05-06T00:00:00.0000000' AS DateTime2), 26, N'Leipzig')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (207, 160191, 1209, 23, N'Roland Juhasz', N'DF', CAST(N'1983-07-01T00:00:00.0000000' AS DateTime2), 32, N'Videoton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (208, 160208, 1210, 1, N'Hannes Halldorsson', N'GK', CAST(N'1984-04-27T00:00:00.0000000' AS DateTime2), 32, N'Bodo/Glimt')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (209, 160216, 1210, 2, N'Birkir Saevarsson', N'DF', CAST(N'1984-11-11T00:00:00.0000000' AS DateTime2), 31, N'Hammarby')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (210, 160212, 1210, 3, N'Haukur Heidar Hauksson', N'DF', CAST(N'1991-09-01T00:00:00.0000000' AS DateTime2), 24, N'AIK')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (211, 160213, 1210, 4, N'Hjortur Hermannsson', N'DF', CAST(N'1995-02-08T00:00:00.0000000' AS DateTime2), 21, N'Goteborg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (212, 160214, 1210, 5, N'Sverrir Ingason', N'DF', CAST(N'1993-08-05T00:00:00.0000000' AS DateTime2), 22, N'Lokeren')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (213, 160217, 1210, 6, N'Ragnar Sigurdsson', N'DF', CAST(N'1986-06-19T00:00:00.0000000' AS DateTime2), 29, N'Krasnodar')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (214, 160229, 1210, 7, N'Johann Gudmundsson', N'FD', CAST(N'1990-10-27T00:00:00.0000000' AS DateTime2), 25, N'Charlton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (215, 160221, 1210, 8, N'Birkir Bjarnason', N'MF', CAST(N'1988-05-27T00:00:00.0000000' AS DateTime2), 28, N'Basel')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (216, 160230, 1210, 9, N'Kolbeinn Sigthorsson', N'FD', CAST(N'1990-03-14T00:00:00.0000000' AS DateTime2), 26, N'Nantes')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (217, 160224, 1210, 10, N'Gylfi Sigurdsson', N'MF', CAST(N'1989-09-08T00:00:00.0000000' AS DateTime2), 26, N'Swansea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (218, 160227, 1210, 11, N'Alfred Finnbogason', N'FD', CAST(N'1989-02-01T00:00:00.0000000' AS DateTime2), 27, N'Augsburg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (219, 160210, 1210, 12, N'Ogmundur Kristinsson', N'GK', CAST(N'1989-06-19T00:00:00.0000000' AS DateTime2), 26, N'Hammarby')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (220, 160209, 1210, 13, N'Ingvar Jonsson', N'GK', CAST(N'1989-10-18T00:00:00.0000000' AS DateTime2), 26, N'Sandefjord')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (221, 160220, 1210, 14, N'Kari Arnason', N'MF', CAST(N'1982-10-13T00:00:00.0000000' AS DateTime2), 33, N'Malmo')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (222, 160226, 1210, 15, N'Jon Dadi Bodvarsson', N'FD', CAST(N'1992-05-25T00:00:00.0000000' AS DateTime2), 24, N'Kaiserslautern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (223, 160225, 1210, 16, N'Runar Mar Sigurjonsson', N'MF', CAST(N'1990-06-18T00:00:00.0000000' AS DateTime2), 26, N'Sundsvall')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (224, 160222, 1210, 17, N'Aron Gunnarsson', N'MF', CAST(N'1989-04-22T00:00:00.0000000' AS DateTime2), 27, N'Cardiff')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (225, 160211, 1210, 18, N'Elmar Bjarnason', N'DF', CAST(N'1987-03-04T00:00:00.0000000' AS DateTime2), 29, N'AGF')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (226, 160215, 1210, 19, N'Hordur Magnusson', N'DF', CAST(N'1993-02-11T00:00:00.0000000' AS DateTime2), 23, N'Cesena')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (227, 160223, 1210, 20, N'Emil Hallfredsson', N'MF', CAST(N'1984-06-29T00:00:00.0000000' AS DateTime2), 31, N'Udinese')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (228, 160219, 1210, 21, N'Arnor Ingvi Traustason', N'DF', CAST(N'1993-04-30T00:00:00.0000000' AS DateTime2), 23, N'Norrkoping')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (229, 160228, 1210, 22, N'Eidur Gudjohnsen', N'FD', CAST(N'1978-09-15T00:00:00.0000000' AS DateTime2), 37, N'Molde')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (230, 160218, 1210, 23, N'Ari Skulason', N'DF', CAST(N'1987-05-14T00:00:00.0000000' AS DateTime2), 29, N'OB')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (231, 160231, 1211, 1, N'Gianluigi Buffon', N'GK', CAST(N'1978-01-28T00:00:00.0000000' AS DateTime2), 38, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (232, 160238, 1211, 2, N'Mattia De Sciglio', N'DF', CAST(N'1992-10-20T00:00:00.0000000' AS DateTime2), 23, N'Milan')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (233, 160236, 1211, 3, N'Giorgio Chiellini', N'DF', CAST(N'1984-08-14T00:00:00.0000000' AS DateTime2), 31, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (234, 160237, 1211, 4, N'Matteo Darmian', N'DF', CAST(N'1989-12-02T00:00:00.0000000' AS DateTime2), 26, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (235, 160239, 1211, 5, N'Angelo Ogbonna', N'DF', CAST(N'1988-05-23T00:00:00.0000000' AS DateTime2), 28, N'West Ham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (236, 160241, 1211, 6, N'Antonio Candreva', N'MF', CAST(N'1987-02-28T00:00:00.0000000' AS DateTime2), 29, N'Lazio')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (237, 160253, 1211, 7, N'Simone Zaza', N'FD', CAST(N'1991-06-25T00:00:00.0000000' AS DateTime2), 24, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (238, 160243, 1211, 8, N'Alessandro Florenzi', N'MF', CAST(N'1991-03-11T00:00:00.0000000' AS DateTime2), 25, N'Roma')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (239, 160252, 1211, 9, N'Graziano Pelle', N'FD', CAST(N'1985-07-15T00:00:00.0000000' AS DateTime2), 30, N'Southampton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (240, 160245, 1211, 10, N'Thiago Motta', N'MF', CAST(N'1982-08-28T00:00:00.0000000' AS DateTime2), 33, N'Paris')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (241, 160250, 1211, 11, N'Ciro Immobile', N'FD', CAST(N'1990-02-20T00:00:00.0000000' AS DateTime2), 26, N'Torino')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (242, 160233, 1211, 12, N'Salvatore Sirigu', N'GK', CAST(N'1987-01-12T00:00:00.0000000' AS DateTime2), 29, N'Paris')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (243, 160232, 1211, 13, N'Federico Marchetti', N'GK', CAST(N'1983-02-07T00:00:00.0000000' AS DateTime2), 33, N'Lazio')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (244, 160247, 1211, 14, N'Stefano Sturaro', N'MF', CAST(N'1993-03-09T00:00:00.0000000' AS DateTime2), 23, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (245, 160234, 1211, 15, N'Andrea Barzagli', N'DF', CAST(N'1981-05-08T00:00:00.0000000' AS DateTime2), 35, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (246, 160242, 1211, 16, N'Daniele De Rossi', N'MF', CAST(N'1983-07-24T00:00:00.0000000' AS DateTime2), 32, N'Roma')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (247, 160248, 1211, 17, N'Eder', N'FD', CAST(N'1986-11-15T00:00:00.0000000' AS DateTime2), 29, N'Internazionale')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (248, 160246, 1211, 18, N'Marco Parolo', N'MF', CAST(N'1985-01-25T00:00:00.0000000' AS DateTime2), 31, N'Lazio')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (249, 160235, 1211, 19, N'Leonardo Bonucci', N'DF', CAST(N'1987-05-01T00:00:00.0000000' AS DateTime2), 29, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (250, 160251, 1211, 20, N'Lorenzo Insigne', N'FD', CAST(N'1991-06-04T00:00:00.0000000' AS DateTime2), 25, N'Napoli')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (251, 160240, 1211, 21, N'Federico Bernardeschi', N'MF', CAST(N'1994-02-16T00:00:00.0000000' AS DateTime2), 22, N'Fiorentina')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (252, 160249, 1211, 22, N'Stephan El Shaarawy', N'FD', CAST(N'1992-10-27T00:00:00.0000000' AS DateTime2), 23, N'Roma')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (253, 160244, 1211, 23, N'Emanuele Giaccherini', N'MF', CAST(N'1985-05-05T00:00:00.0000000' AS DateTime2), 31, N'Bologna')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (254, 160256, 1212, 1, N'Michael McGovern', N'GK', CAST(N'1984-07-12T00:00:00.0000000' AS DateTime2), 31, N'Hamilton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (255, 160264, 1212, 2, N'Conor McLaughlin', N'DF', CAST(N'1991-07-26T00:00:00.0000000' AS DateTime2), 24, N'Fleetwood')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (256, 160269, 1212, 3, N'Shane Ferguson', N'MF', CAST(N'1991-07-12T00:00:00.0000000' AS DateTime2), 24, N'Millwall')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (257, 160262, 1212, 4, N'Gareth McAuley', N'DF', CAST(N'1979-12-05T00:00:00.0000000' AS DateTime2), 36, N'West Brom')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (258, 160259, 1212, 5, N'Jonny Evans', N'DF', CAST(N'1988-01-03T00:00:00.0000000' AS DateTime2), 28, N'West Brom')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (259, 160257, 1212, 6, N'Chris Baird', N'DF', CAST(N'1982-02-25T00:00:00.0000000' AS DateTime2), 34, N'Fulham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (260, 160275, 1212, 7, N'Niall McGinn', N'FD', CAST(N'1987-07-20T00:00:00.0000000' AS DateTime2), 28, N'Aberdeen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (261, 160267, 1212, 8, N'Steven Davis', N'MF', CAST(N'1985-01-01T00:00:00.0000000' AS DateTime2), 31, N'Southampton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (262, 160273, 1212, 9, N'Will Grigg', N'FD', CAST(N'1991-07-03T00:00:00.0000000' AS DateTime2), 24, N'Wigan')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (263, 160274, 1212, 10, N'Kyle Lafferty', N'FD', CAST(N'1987-09-16T00:00:00.0000000' AS DateTime2), 28, N'Birmingham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (264, 160276, 1212, 11, N'Conor Washington', N'FD', CAST(N'1992-05-18T00:00:00.0000000' AS DateTime2), 24, N'QPR')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (265, 160254, 1212, 12, N'Roy Carroll', N'GK', CAST(N'1977-09-30T00:00:00.0000000' AS DateTime2), 38, N'Notts County')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (266, 160268, 1212, 13, N'Corry Evans', N'MF', CAST(N'1990-07-30T00:00:00.0000000' AS DateTime2), 25, N'Blackburn')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (267, 160266, 1212, 14, N'Stuart Dallas', N'MF', CAST(N'1991-04-19T00:00:00.0000000' AS DateTime2), 25, N'Leeds')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (268, 160263, 1212, 15, N'Luke McCullough', N'DF', CAST(N'1994-02-15T00:00:00.0000000' AS DateTime2), 22, N'Doncaster')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (269, 160271, 1212, 16, N'Oliver Norwood', N'MF', CAST(N'1991-04-12T00:00:00.0000000' AS DateTime2), 25, N'Reading')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (270, 160265, 1212, 17, N'Paddy McNair', N'DF', CAST(N'1995-04-27T00:00:00.0000000' AS DateTime2), 21, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (271, 160261, 1212, 18, N'Aaron Hughes', N'DF', CAST(N'1979-11-08T00:00:00.0000000' AS DateTime2), 36, N'Melbourne City')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (272, 160272, 1212, 19, N'Jamie Ward', N'MF', CAST(N'1986-05-12T00:00:00.0000000' AS DateTime2), 30, N'Nottm Forest')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (273, 160258, 1212, 20, N'Craig Cathcart', N'DF', CAST(N'1989-02-06T00:00:00.0000000' AS DateTime2), 27, N'Watford')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (274, 160270, 1212, 21, N'Josh Magennis', N'MF', CAST(N'1990-08-15T00:00:00.0000000' AS DateTime2), 25, N'Kilmarnock')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (275, 160260, 1212, 22, N'Lee Hodson', N'DF', CAST(N'1991-10-02T00:00:00.0000000' AS DateTime2), 24, N'MK Dons')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (276, 160255, 1212, 23, N'Alan Mannus', N'GK', CAST(N'1982-05-19T00:00:00.0000000' AS DateTime2), 34, N'St Johnstone')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (277, 160279, 1213, 1, N'Wojciech Szczesny', N'GK', CAST(N'1990-04-18T00:00:00.0000000' AS DateTime2), 26, N'Roma')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (278, 160283, 1213, 2, N'Michal Pazdan', N'DF', CAST(N'1987-09-21T00:00:00.0000000' AS DateTime2), 28, N'Legia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (279, 160282, 1213, 3, N'Artur Jedrzejczyk', N'DF', CAST(N'1987-11-04T00:00:00.0000000' AS DateTime2), 28, N'Legia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (280, 160280, 1213, 4, N'Thiago Cionek', N'DF', CAST(N'1986-04-21T00:00:00.0000000' AS DateTime2), 30, N'Palermo')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (281, 160293, 1213, 5, N'Krzysztof Maczynski', N'MF', CAST(N'1987-05-23T00:00:00.0000000' AS DateTime2), 29, N'Wisla')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (282, 160289, 1213, 6, N'Tomasz Jodlowiec', N'MF', CAST(N'1985-09-08T00:00:00.0000000' AS DateTime2), 30, N'Legia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (283, 160298, 1213, 7, N'Arkadiusz Milik', N'FD', CAST(N'1994-02-28T00:00:00.0000000' AS DateTime2), 22, N'Ajax')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (284, 160292, 1213, 8, N'Karol Linetty', N'MF', CAST(N'1995-02-02T00:00:00.0000000' AS DateTime2), 21, N'Lech')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (285, 160297, 1213, 9, N'Robert Lewandowski', N'FD', CAST(N'1988-08-21T00:00:00.0000000' AS DateTime2), 27, N'Bayern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (286, 160291, 1213, 10, N'Grzegorz Krychowiak', N'MF', CAST(N'1990-01-29T00:00:00.0000000' AS DateTime2), 26, N'Sevilla')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (287, 160288, 1213, 11, N'Kamil Grosicki', N'MF', CAST(N'1988-06-08T00:00:00.0000000' AS DateTime2), 28, N'Rennes')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (288, 160277, 1213, 12, N'Artur Boruc', N'GK', CAST(N'1980-02-20T00:00:00.0000000' AS DateTime2), 36, N'Bournemouth')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (289, 160299, 1213, 13, N'Mariusz Stepinski', N'FD', CAST(N'1995-05-12T00:00:00.0000000' AS DateTime2), 21, N'Ruch')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (290, 160286, 1213, 14, N'Jakub Wawrzyniak', N'DF', CAST(N'1983-07-07T00:00:00.0000000' AS DateTime2), 32, N'Lechia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (291, 160281, 1213, 15, N'Kamil Glik', N'DF', CAST(N'1988-02-03T00:00:00.0000000' AS DateTime2), 28, N'Torino')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (292, 160287, 1213, 16, N'Jakub Blaszczykowski', N'MF', CAST(N'1985-12-14T00:00:00.0000000' AS DateTime2), 30, N'Fiorentina')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (293, 160294, 1213, 17, N'Slawomir Peszko', N'MF', CAST(N'1985-02-19T00:00:00.0000000' AS DateTime2), 31, N'Lechia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (294, 160285, 1213, 18, N'Bartosz Salamon', N'DF', CAST(N'1991-05-01T00:00:00.0000000' AS DateTime2), 25, N'Cagliari')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (295, 160296, 1213, 19, N'Piotr Zielinski', N'MF', CAST(N'1994-05-20T00:00:00.0000000' AS DateTime2), 22, N'Empoli')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (296, 160284, 1213, 20, N'Lukasz Piszczek', N'DF', CAST(N'1985-06-03T00:00:00.0000000' AS DateTime2), 31, N'Dortmund')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (297, 160290, 1213, 21, N'Bartosz Kapustka', N'MF', CAST(N'1996-12-23T00:00:00.0000000' AS DateTime2), 19, NULL)
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (298, 160278, 1213, 22, N'Lukasz Fabianski', N'GK', CAST(N'1985-04-18T00:00:00.0000000' AS DateTime2), 31, N'Swansea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (299, 160295, 1213, 23, N'Filip Starzynski', N'MF', CAST(N'1991-05-27T00:00:00.0000000' AS DateTime2), 25, N'Zaglebie')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (300, 160302, 1214, 1, N'Rui Patricio', N'GK', CAST(N'1988-02-15T00:00:00.0000000' AS DateTime2), 28, N'Sporting CP')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (301, 160303, 1214, 2, N'Bruno Alves', N'DF', CAST(N'1981-11-27T00:00:00.0000000' AS DateTime2), 34, N'Fenerbahce')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (302, 160307, 1214, 3, N'Pepe', N'DF', CAST(N'1983-02-26T00:00:00.0000000' AS DateTime2), 33, N'Real Madrid')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (303, 160306, 1214, 4, N'Jose Fonte', N'DF', CAST(N'1983-12-22T00:00:00.0000000' AS DateTime2), 32, N'Southampton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (304, 160308, 1214, 5, N'Raphael Guerreiro', N'DF', CAST(N'1993-12-22T00:00:00.0000000' AS DateTime2), 22, N'Lorient')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (305, 160309, 1214, 6, N'Ricardo Carvalho', N'DF', CAST(N'1978-05-18T00:00:00.0000000' AS DateTime2), 38, N'Monaco')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (306, 160322, 1214, 7, N'Cristiano Ronaldo', N'FD', CAST(N'1985-02-05T00:00:00.0000000' AS DateTime2), 31, N'Real Madrid')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (307, 160314, 1214, 8, N'Joao Moutinho', N'MF', CAST(N'1986-09-08T00:00:00.0000000' AS DateTime2), 29, N'Monaco')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (308, 160319, 1214, 9, N'Eder', N'FD', CAST(N'1987-12-22T00:00:00.0000000' AS DateTime2), 28, N'LOSC')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (309, 160313, 1214, 10, N'Joao Mario', N'MF', CAST(N'1993-01-19T00:00:00.0000000' AS DateTime2), 23, N'Sporting CP')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (310, 160317, 1214, 11, N'Vieirinha', N'MF', CAST(N'1986-01-24T00:00:00.0000000' AS DateTime2), 30, N'Wolfsburg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (311, 160301, 1214, 12, N'Anthony Lopes', N'GK', CAST(N'1990-10-01T00:00:00.0000000' AS DateTime2), 25, N'Lyon')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (312, 160312, 1214, 13, N'Danilo', N'MF', CAST(N'1991-09-09T00:00:00.0000000' AS DateTime2), 24, N'Porto')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (313, 160318, 1214, 14, N'William Carvalho', N'MF', CAST(N'1992-04-07T00:00:00.0000000' AS DateTime2), 24, N'Sporting CP')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (314, 160311, 1214, 15, N'Andre Gomes', N'MF', CAST(N'1993-07-30T00:00:00.0000000' AS DateTime2), 22, N'Valencia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (315, 160316, 1214, 16, N'Renato Sanches', N'MF', CAST(N'1997-08-18T00:00:00.0000000' AS DateTime2), 18, N'Benfica')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (316, 160320, 1214, 17, N'Nani', N'FD', CAST(N'1986-11-17T00:00:00.0000000' AS DateTime2), 29, N'Fenerbahce')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (317, 160315, 1214, 18, N'Rafa Silva', N'MF', CAST(N'1993-05-17T00:00:00.0000000' AS DateTime2), 23, N'Braga')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (318, 160305, 1214, 19, N'Eliseu', N'DF', CAST(N'1983-10-01T00:00:00.0000000' AS DateTime2), 32, N'Benfica')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (319, 160321, 1214, 20, N'Ricardo Quaresma', N'FD', CAST(N'1983-09-26T00:00:00.0000000' AS DateTime2), 32, N'Besiktas')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (320, 160304, 1214, 21, N'Cedric', N'DF', CAST(N'1991-08-31T00:00:00.0000000' AS DateTime2), 24, N'Southampton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (321, 160300, 1214, 22, N'Eduardo', N'GK', CAST(N'1982-09-19T00:00:00.0000000' AS DateTime2), 33, N'Dinamo Zagreb')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (322, 160310, 1214, 23, N'Adrien Silva', N'MF', CAST(N'1989-03-15T00:00:00.0000000' AS DateTime2), 27, N'Sporting CP')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (323, 160325, 1215, 1, N'Keiren Westwood', N'GK', CAST(N'1984-10-23T00:00:00.0000000' AS DateTime2), 31, N'Sheff. Wednesday')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (324, 160328, 1215, 2, N'Seamus Coleman', N'DF', CAST(N'1988-10-11T00:00:00.0000000' AS DateTime2), 27, N'Everton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (325, 160327, 1215, 3, N'Ciaran Clark', N'DF', CAST(N'1989-09-26T00:00:00.0000000' AS DateTime2), 26, N'Aston Villa')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (326, 160331, 1215, 4, N'John OShea', N'DF', CAST(N'1981-04-30T00:00:00.0000000' AS DateTime2), 35, N'Sunderland')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (327, 160330, 1215, 5, N'Richard Keogh', N'DF', CAST(N'1986-08-11T00:00:00.0000000' AS DateTime2), 29, N'Derby')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (328, 160341, 1215, 6, N'Glenn Whelan', N'MF', CAST(N'1984-01-13T00:00:00.0000000' AS DateTime2), 32, N'Stoke')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (329, 160338, 1215, 7, N'Aiden McGeady', N'MF', CAST(N'1986-04-04T00:00:00.0000000' AS DateTime2), 30, N'Sheff. Wednesday')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (330, 160336, 1215, 8, N'James McCarthy', N'MF', CAST(N'1990-11-12T00:00:00.0000000' AS DateTime2), 25, N'Everton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (331, 160343, 1215, 9, N'Shane Long', N'FD', CAST(N'1987-01-22T00:00:00.0000000' AS DateTime2), 29, N'Southampton')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (332, 160342, 1215, 10, N'Robbie Keane', N'FD', CAST(N'1980-07-08T00:00:00.0000000' AS DateTime2), 35, N'LA Galaxy')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (333, 160337, 1215, 11, N'James McClean', N'MF', CAST(N'1989-04-22T00:00:00.0000000' AS DateTime2), 27, N'West Brom')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (334, 160329, 1215, 12, N'Shane Duffy', N'DF', CAST(N'1992-01-01T00:00:00.0000000' AS DateTime2), 24, N'Blackburn')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (335, 160334, 1215, 13, N'Jeff Hendrick', N'MF', CAST(N'1992-01-31T00:00:00.0000000' AS DateTime2), 24, N'Derby')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (336, 160345, 1215, 14, N'Jon Walters', N'FD', CAST(N'1983-09-20T00:00:00.0000000' AS DateTime2), 32, N'Stoke')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (337, 160326, 1215, 15, N'Cyrus Christie', N'DF', CAST(N'1992-09-30T00:00:00.0000000' AS DateTime2), 23, N'Derby')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (338, 160323, 1215, 16, N'Shay Given', N'GK', CAST(N'1976-04-20T00:00:00.0000000' AS DateTime2), 40, N'Stoke')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (339, 160332, 1215, 17, N'Stephen Ward', N'DF', CAST(N'1985-08-20T00:00:00.0000000' AS DateTime2), 30, N'Burnley')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (340, 160339, 1215, 18, N'David Meyler', N'MF', CAST(N'1989-05-29T00:00:00.0000000' AS DateTime2), 27, N'Hull')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (341, 160333, 1215, 19, N'Robbie Brady', N'MF', CAST(N'1992-01-14T00:00:00.0000000' AS DateTime2), 24, N'Norwich')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (342, 160335, 1215, 20, N'Wes Hoolahan', N'MF', CAST(N'1982-05-20T00:00:00.0000000' AS DateTime2), 34, N'Norwich')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (343, 160344, 1215, 21, N'Daryl Murphy', N'FD', CAST(N'1983-03-15T00:00:00.0000000' AS DateTime2), 33, N'Ipswich')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (344, 160340, 1215, 22, N'Stephen Quinn', N'MF', CAST(N'1986-04-01T00:00:00.0000000' AS DateTime2), 30, N'Reading')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (345, 160324, 1215, 23, N'Darren Randolph', N'GK', CAST(N'1987-05-12T00:00:00.0000000' AS DateTime2), 29, N'West Ham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (346, 160347, 1216, 1, N'Costel Pantilimon', N'GK', CAST(N'1987-02-01T00:00:00.0000000' AS DateTime2), 29, N'Watford')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (347, 160353, 1216, 2, N'Alexandru Matel', N'DF', CAST(N'1989-10-17T00:00:00.0000000' AS DateTime2), 26, N'Dinamo Zagreb')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (348, 160355, 1216, 3, N'Razvan Rat', N'DF', CAST(N'1981-05-26T00:00:00.0000000' AS DateTime2), 35, N'Rayo Vallecano')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (349, 160354, 1216, 4, N'Cosmin Moti', N'DF', CAST(N'1984-12-03T00:00:00.0000000' AS DateTime2), 31, N'Ludogorets')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (350, 160358, 1216, 5, N'Ovidiu Hoban', N'MF', CAST(N'1982-12-27T00:00:00.0000000' AS DateTime2), 33, N'H. Beer-Sheva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (351, 160349, 1216, 6, N'Vlad Chiriches', N'DF', CAST(N'1989-11-14T00:00:00.0000000' AS DateTime2), 26, N'Napoli')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (352, 160357, 1216, 7, N'Alexandru Chipciu', N'MF', CAST(N'1989-05-18T00:00:00.0000000' AS DateTime2), 27, N'Steaua')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (353, 160359, 1216, 8, N'Mihai Pintilii', N'MF', CAST(N'1984-11-09T00:00:00.0000000' AS DateTime2), 31, N'Steaua')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (354, 160365, 1216, 9, N'Denis Alibec', N'FD', CAST(N'1991-01-05T00:00:00.0000000' AS DateTime2), 25, N'Astra')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (355, 160363, 1216, 10, N'Nicolae Stanciu', N'MF', CAST(N'1993-05-07T00:00:00.0000000' AS DateTime2), 23, N'Steaua')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (356, 160364, 1216, 11, N'Gabriel Torje', N'MF', CAST(N'1989-11-22T00:00:00.0000000' AS DateTime2), 26, N'Osmanlispor')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (357, 160348, 1216, 12, N'Ciprian Tatarusanu', N'GK', CAST(N'1986-02-09T00:00:00.0000000' AS DateTime2), 30, N'Fiorentina')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (358, 160367, 1216, 13, N'Claudiu Keeru', N'FD', CAST(N'1986-12-02T00:00:00.0000000' AS DateTime2), 29, N'Ludogorets')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (359, 160366, 1216, 14, N'Florin Andone', N'FD', CAST(N'1993-04-11T00:00:00.0000000' AS DateTime2), 23, N'Cordoba')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (360, 160351, 1216, 15, N'Valerica Gaman', N'DF', CAST(N'1989-02-25T00:00:00.0000000' AS DateTime2), 27, N'Astra')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (361, 160350, 1216, 16, N'Steliano Filip', N'DF', CAST(N'1994-05-15T00:00:00.0000000' AS DateTime2), 22, N'Dinamo Bucuresti')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (362, 160362, 1216, 17, N'Lucian Sanmartean', N'MF', CAST(N'1980-03-13T00:00:00.0000000' AS DateTime2), 36, N'Al-Ittihad')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (363, 160361, 1216, 18, N'Andrei Prepelita', N'MF', CAST(N'1985-12-08T00:00:00.0000000' AS DateTime2), 30, N'Ludogorets')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (364, 160368, 1216, 19, N'Bogdan Stancu', N'FD', CAST(N'1987-06-28T00:00:00.0000000' AS DateTime2), 28, N'Genclerbirligi')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (365, 160360, 1216, 20, N'Adrian Popa', N'MF', CAST(N'1988-07-24T00:00:00.0000000' AS DateTime2), 27, N'Steaua')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (366, 160352, 1216, 21, N'Dragos Grigore', N'DF', CAST(N'1986-09-07T00:00:00.0000000' AS DateTime2), 29, N'Al-Sailiya')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (367, 160356, 1216, 22, N'Cristian Sapunaru', N'DF', CAST(N'1984-04-05T00:00:00.0000000' AS DateTime2), 32, N'Pandurii')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (368, 160346, 1216, 23, N'Silviu Lung', N'GK', CAST(N'1989-06-04T00:00:00.0000000' AS DateTime2), 27, N'Astra')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (369, 160369, 1217, 1, N'Igor Akinfeev', N'GK', CAST(N'1986-04-08T00:00:00.0000000' AS DateTime2), 30, N'CSKA Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (370, 160378, 1217, 2, N'Roman Shishkin', N'DF', CAST(N'1987-01-27T00:00:00.0000000' AS DateTime2), 29, N'Lokomotiv Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (371, 160379, 1217, 3, N'Igor Smolnikov', N'DF', CAST(N'1988-08-08T00:00:00.0000000' AS DateTime2), 27, N'Zenit')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (372, 160374, 1217, 4, N'Sergei Ignashevich', N'DF', CAST(N'1979-07-14T00:00:00.0000000' AS DateTime2), 36, N'CSKA Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (373, 160376, 1217, 5, N'Roman Neustadter', N'DF', CAST(N'1988-02-18T00:00:00.0000000' AS DateTime2), 28, N'Schalke')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (374, 160372, 1217, 6, N'Aleksei Berezutski', N'DF', CAST(N'1982-06-20T00:00:00.0000000' AS DateTime2), 33, N'CSKA Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (375, 160388, 1217, 7, N'Artur Yusupov', N'MF', CAST(N'1989-09-01T00:00:00.0000000' AS DateTime2), 26, N'Zenit')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (376, 160380, 1217, 8, N'Denis Glushakov', N'MF', CAST(N'1987-01-27T00:00:00.0000000' AS DateTime2), 29, N'Spartak Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (377, 160390, 1217, 9, N'Aleksandr Kokorin', N'FD', CAST(N'1991-03-19T00:00:00.0000000' AS DateTime2), 25, N'Zenit')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (378, 160391, 1217, 10, N'Fedor Smolov', N'FD', CAST(N'1990-02-09T00:00:00.0000000' AS DateTime2), 26, N'Krasnodar')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (379, 160383, 1217, 11, N'Pavel Mamaev', N'MF', CAST(N'1988-09-17T00:00:00.0000000' AS DateTime2), 27, N'Krasnodar')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (380, 160371, 1217, 12, N'Yuri Lodygin', N'GK', CAST(N'1990-05-26T00:00:00.0000000' AS DateTime2), 26, N'Zenit')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (381, 160381, 1217, 13, N'Aleksandr Golovin', N'MF', CAST(N'1996-05-30T00:00:00.0000000' AS DateTime2), 20, N'CSKA Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (382, 160373, 1217, 14, N'Vasili Berezutski', N'DF', CAST(N'1982-06-20T00:00:00.0000000' AS DateTime2), 33, N'CSKA Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (383, 160386, 1217, 15, N'Roman Shirokov', N'MF', CAST(N'1981-07-06T00:00:00.0000000' AS DateTime2), 34, N'CSKA Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (384, 160370, 1217, 16, N'Guilherme', N'GK', CAST(N'1985-12-12T00:00:00.0000000' AS DateTime2), 30, N'Lokomotiv Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (385, 160385, 1217, 17, N'Oleg Shatov', N'MF', CAST(N'1990-07-29T00:00:00.0000000' AS DateTime2), 25, N'Zenit')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (386, 160382, 1217, 18, N'Oleg Ivanov', N'MF', CAST(N'1986-08-04T00:00:00.0000000' AS DateTime2), 29, N'Terek')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (387, 160384, 1217, 19, N'Aleksandr Samedov', N'MF', CAST(N'1984-07-19T00:00:00.0000000' AS DateTime2), 31, N'Lokomotiv Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (388, 160387, 1217, 20, N'Dmitri Torbinski', N'MF', CAST(N'1984-04-28T00:00:00.0000000' AS DateTime2), 32, N'Krasnodar')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (389, 160377, 1217, 21, N'Georgi Schennikov', N'DF', CAST(N'1991-04-27T00:00:00.0000000' AS DateTime2), 25, N'CSKA Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (390, 160389, 1217, 22, N'Artem Dzyuba', N'FD', CAST(N'1988-08-22T00:00:00.0000000' AS DateTime2), 27, N'Zenit')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (391, 160375, 1217, 23, N'Dmitri Kombarov', N'DF', CAST(N'1987-01-22T00:00:00.0000000' AS DateTime2), 29, N'Spartak Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (392, 160393, 1218, 1, N'Jan Mucha', N'GK', CAST(N'1982-12-05T00:00:00.0000000' AS DateTime2), 33, N'Slovan Bratislava')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (393, 160398, 1218, 2, N'Peter Pekarik', N'DF', CAST(N'1986-10-30T00:00:00.0000000' AS DateTime2), 29, N'Hertha')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (394, 160401, 1218, 3, N'Martin Skrtel', N'DF', CAST(N'1984-12-15T00:00:00.0000000' AS DateTime2), 31, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (395, 160395, 1218, 4, N'Jan Durica', N'DF', CAST(N'1981-12-10T00:00:00.0000000' AS DateTime2), 34, N'Lokomotiv Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (396, 160396, 1218, 5, N'Norbert Gyomber', N'DF', CAST(N'1992-07-03T00:00:00.0000000' AS DateTime2), 23, N'Roma')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (397, 160404, 1218, 6, N'Jan Gregus', N'MF', CAST(N'1991-01-29T00:00:00.0000000' AS DateTime2), 25, N'Jablonec')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (398, 160411, 1218, 7, N'Vladimir Weiss', N'MF', CAST(N'1989-11-30T00:00:00.0000000' AS DateTime2), 26, N'Al-Gharafa')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (399, 160403, 1218, 8, N'Ondrej Duda', N'MF', CAST(N'1994-12-05T00:00:00.0000000' AS DateTime2), 21, N'Legia')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (400, 160414, 1218, 9, N'Stanislav Sestak', N'FD', CAST(N'1982-12-16T00:00:00.0000000' AS DateTime2), 33, N'Ferencvaros')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (401, 160410, 1218, 10, N'Miroslav Stoch', N'MF', CAST(N'1989-10-19T00:00:00.0000000' AS DateTime2), 26, N'Bursaspor')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (402, 160413, 1218, 11, N'Adam Nemec', N'FD', CAST(N'1985-09-02T00:00:00.0000000' AS DateTime2), 30, N'Willem II')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (403, 160394, 1218, 12, N'Jan Novota', N'GK', CAST(N'1983-11-29T00:00:00.0000000' AS DateTime2), 32, N'Rapid Wien')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (404, 160406, 1218, 13, N'Patrik HroSovsky', N'MF', CAST(N'1992-04-22T00:00:00.0000000' AS DateTime2), 24, N'Plzen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (405, 160400, 1218, 14, N'Milan Skriniar', N'DF', CAST(N'1995-02-11T00:00:00.0000000' AS DateTime2), 21, N'Sampdoria')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (406, 160397, 1218, 15, N'TomasHubocan', N'DF', CAST(N'1985-09-17T00:00:00.0000000' AS DateTime2), 30, N'Dinamo Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (407, 160399, 1218, 16, N'Kornel Salata', N'DF', CAST(N'1985-01-24T00:00:00.0000000' AS DateTime2), 31, N'Slovan Bratislava')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (408, 160405, 1218, 17, N'Marek Hamsik', N'MF', CAST(N'1987-07-27T00:00:00.0000000' AS DateTime2), 28, N'Napoli')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (409, 160402, 1218, 18, N'Dusan Svento', N'DF', CAST(N'1985-08-01T00:00:00.0000000' AS DateTime2), 30, N'Koln')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (410, 160407, 1218, 19, N'Juraj Kucka', N'MF', CAST(N'1987-02-26T00:00:00.0000000' AS DateTime2), 29, N'Milan')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (411, 160408, 1218, 20, N'Robert Mak', N'MF', CAST(N'1991-03-08T00:00:00.0000000' AS DateTime2), 25, N'PAOK')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (412, 160412, 1218, 21, N'Michal Duris', N'FD', CAST(N'1988-06-01T00:00:00.0000000' AS DateTime2), 28, N'Plzen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (413, 160409, 1218, 22, N'Viktor Pecovsky', N'MF', CAST(N'1983-05-24T00:00:00.0000000' AS DateTime2), 33, N'zilina')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (414, 160392, 1218, 23, N'MatusKozacik', N'GK', CAST(N'1983-12-27T00:00:00.0000000' AS DateTime2), 32, N'Plzen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (415, 160415, 1219, 1, N'Lker Casillas', N'GK', CAST(N'1981-05-20T00:00:00.0000000' AS DateTime2), 35, N'Porto')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (416, 160418, 1219, 2, N'Cesar Azpilicueta', N'DF', CAST(N'1989-08-28T00:00:00.0000000' AS DateTime2), 26, N'Chelsea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (417, 160423, 1219, 3, N'Gerard Pique', N'DF', CAST(N'1987-02-02T00:00:00.0000000' AS DateTime2), 29, N'Barcelona')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (418, 160419, 1219, 4, N'Marc Bartra', N'DF', CAST(N'1991-01-15T00:00:00.0000000' AS DateTime2), 25, N'Barcelona')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (419, 160427, 1219, 5, N'Sergio Busquets', N'MF', CAST(N'1988-07-16T00:00:00.0000000' AS DateTime2), 27, N'Barcelona')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (420, 160429, 1219, 6, N'Andres Iniesta', N'MF', CAST(N'1984-05-11T00:00:00.0000000' AS DateTime2), 32, N'Barcelona')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (421, 160435, 1219, 7, N'Alvaro Morata', N'FD', CAST(N'1992-10-23T00:00:00.0000000' AS DateTime2), 23, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (422, 160430, 1219, 8, N'Koke', N'MF', CAST(N'1992-01-08T00:00:00.0000000' AS DateTime2), 24, N'Atletico')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (423, 160434, 1219, 9, N'Lucas Vazquez', N'FD', CAST(N'1991-07-01T00:00:00.0000000' AS DateTime2), 24, N'Real Madrid')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (424, 160428, 1219, 10, N'Cesc Fabregas', N'MF', CAST(N'1987-05-04T00:00:00.0000000' AS DateTime2), 29, N'Chelsea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (425, 160437, 1219, 11, N'Pedro Rodriguez', N'FD', CAST(N'1987-07-28T00:00:00.0000000' AS DateTime2), 28, N'Chelsea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (426, 160420, 1219, 12, N'Hector Bellerin', N'DF', CAST(N'1995-03-19T00:00:00.0000000' AS DateTime2), 21, N'Arsenal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (427, 160416, 1219, 13, N'David de Gea', N'GK', CAST(N'1990-11-07T00:00:00.0000000' AS DateTime2), 25, N'Man. United')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (428, 160432, 1219, 14, N'Thiago Alcantara', N'MF', CAST(N'1991-04-11T00:00:00.0000000' AS DateTime2), 25, N'Bayern')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (429, 160424, 1219, 15, N'Sergio Ramos', N'DF', CAST(N'1986-03-30T00:00:00.0000000' AS DateTime2), 30, N'Real Madrid')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (430, 160422, 1219, 16, N'Juanfran', N'DF', CAST(N'1985-01-09T00:00:00.0000000' AS DateTime2), 31, N'Atletico')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (431, 160425, 1219, 17, N'Mikel San Jose', N'DF', CAST(N'1989-05-30T00:00:00.0000000' AS DateTime2), 27, N'Athletic')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (432, 160421, 1219, 18, N'Jordi Alba', N'DF', CAST(N'1989-03-21T00:00:00.0000000' AS DateTime2), 27, N'Barcelona')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (433, 160426, 1219, 19, N'Bruno Soriano', N'MF', CAST(N'1984-06-12T00:00:00.0000000' AS DateTime2), 32, N'Villarreal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (434, 160433, 1219, 20, N'Aritz Aduriz', N'FD', CAST(N'1981-02-11T00:00:00.0000000' AS DateTime2), 35, N'Athletic')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (435, 160431, 1219, 21, N'David Silva', N'MF', CAST(N'1986-01-08T00:00:00.0000000' AS DateTime2), 30, N'Man. City')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (436, 160436, 1219, 22, N'Nolito', N'FD', CAST(N'1986-10-15T00:00:00.0000000' AS DateTime2), 29, N'Celta')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (437, 160417, 1219, 23, N'Sergio Rico', N'GK', CAST(N'1993-09-01T00:00:00.0000000' AS DateTime2), 22, N'Sevilla')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (438, 160439, 1220, 1, N'Andreas Isaksson', N'GK', CAST(N'1981-10-03T00:00:00.0000000' AS DateTime2), 34, N'Kasimpasa')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (439, 160446, 1220, 2, N'Mikael Lustig', N'DF', CAST(N'1986-12-13T00:00:00.0000000' AS DateTime2), 29, N'Celtic')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (440, 160444, 1220, 3, N'Erik Johansson', N'DF', CAST(N'1988-12-30T00:00:00.0000000' AS DateTime2), 27, N'Kobenhavn')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (441, 160442, 1220, 4, N'Andreas Granqvist', N'DF', CAST(N'1985-04-16T00:00:00.0000000' AS DateTime2), 31, N'Krasnodar')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (442, 160447, 1220, 5, N'Martin Olsson', N'DF', CAST(N'1988-05-17T00:00:00.0000000' AS DateTime2), 28, N'Norwich')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (443, 160451, 1220, 6, N'Emil Forsberg', N'MF', CAST(N'1991-10-23T00:00:00.0000000' AS DateTime2), 24, N'Leipzig')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (444, 160454, 1220, 7, N'Sebastian Larsson', N'MF', CAST(N'1985-06-06T00:00:00.0000000' AS DateTime2), 31, N'Sunderland')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (445, 160449, 1220, 8, N'Albin Ekdal', N'MF', CAST(N'1989-07-28T00:00:00.0000000' AS DateTime2), 26, N'Hamburg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (446, 160453, 1220, 9, N'Kim Kallstrom', N'MF', CAST(N'1982-08-24T00:00:00.0000000' AS DateTime2), 33, N'Grasshoppers')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (447, 160459, 1220, 10, N'Zlatan Ibrahimovic', N'FD', CAST(N'1981-10-03T00:00:00.0000000' AS DateTime2), 34, N'Paris')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (448, 160457, 1220, 11, N'Marcus Berg', N'FD', CAST(N'1986-08-17T00:00:00.0000000' AS DateTime2), 29, N'Panathinaikos')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (449, 160440, 1220, 12, N'Robin Olsen', N'GK', CAST(N'1990-01-08T00:00:00.0000000' AS DateTime2), 26, N'Kobenhavn')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (450, 160443, 1220, 13, N'Pontus Jansson', N'DF', CAST(N'1991-02-13T00:00:00.0000000' AS DateTime2), 25, N'Torino')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (451, 160445, 1220, 14, N'Victor Lindelof', N'DF', CAST(N'1994-07-17T00:00:00.0000000' AS DateTime2), 21, N'Benfica')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (452, 160452, 1220, 15, N'Oscar Hiljemark', N'MF', CAST(N'1992-06-28T00:00:00.0000000' AS DateTime2), 23, N'Palermo')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (453, 160456, 1220, 16, N'Pontus Wernbloom', N'MF', CAST(N'1986-06-25T00:00:00.0000000' AS DateTime2), 29, N'CSKA Moskva')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (454, 160441, 1220, 17, N'Ludwig Augustinsson', N'DF', CAST(N'1994-04-21T00:00:00.0000000' AS DateTime2), 22, N'Kobenhavn')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (455, 160455, 1220, 18, N'Oscar Lewicki', N'MF', CAST(N'1992-07-14T00:00:00.0000000' AS DateTime2), 23, N'Malmo')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (456, 160460, 1220, 19, N'Emir Kujovic', N'FD', CAST(N'1988-06-22T00:00:00.0000000' AS DateTime2), 27, N'Norrkoping')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (457, 160458, 1220, 20, N'John Guidetti', N'FD', CAST(N'1992-04-15T00:00:00.0000000' AS DateTime2), 24, N'Celta')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (458, 160448, 1220, 21, N'Jimmy Durmaz', N'MF', CAST(N'1989-03-22T00:00:00.0000000' AS DateTime2), 27, N'Olympiacos')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (459, 160450, 1220, 22, N'Erkan Zengin', N'MF', CAST(N'1985-08-05T00:00:00.0000000' AS DateTime2), 30, N'Trabzonspor')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (460, 160438, 1220, 23, N'Patrik Carlgren', N'GK', CAST(N'1992-01-08T00:00:00.0000000' AS DateTime2), 24, N'AIK')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (461, 160463, 1221, 1, N'Yann Sommer', N'GK', CAST(N'1988-12-17T00:00:00.0000000' AS DateTime2), 27, N'Monchengladbach')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (462, 160467, 1221, 2, N'Stephan Lichtsteiner', N'DF', CAST(N'1984-01-16T00:00:00.0000000' AS DateTime2), 32, N'Juventus')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (463, 160468, 1221, 3, N'Francois Moubandje', N'DF', CAST(N'1990-06-21T00:00:00.0000000' AS DateTime2), 25, N'Toulouse')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (464, 160465, 1221, 4, N'Nico Elvedi', N'DF', CAST(N'1996-09-30T00:00:00.0000000' AS DateTime2), 19, N'Monchengladbach')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (465, 160471, 1221, 5, N'Steve von Bergen', N'DF', CAST(N'1983-06-10T00:00:00.0000000' AS DateTime2), 33, N'Young Boys')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (466, 160466, 1221, 6, N'Michael Lang', N'DF', CAST(N'1991-02-08T00:00:00.0000000' AS DateTime2), 25, N'Basel')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (467, 160480, 1221, 7, N'Breel Embolo', N'FD', CAST(N'1997-02-14T00:00:00.0000000' AS DateTime2), 19, N'Basel')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (468, 160475, 1221, 8, N'Fabian Frei', N'MF', CAST(N'1989-01-08T00:00:00.0000000' AS DateTime2), 27, N'Mainz')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (469, 160482, 1221, 9, N'Haris Seferovic', N'FD', CAST(N'1992-02-22T00:00:00.0000000' AS DateTime2), 24, N'Frankfurt')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (470, 160477, 1221, 10, N'Granit Xhaka', N'MF', CAST(N'1992-09-27T00:00:00.0000000' AS DateTime2), 23, N'Monchengladbach')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (471, 160472, 1221, 11, N'Valon Behrami', N'MF', CAST(N'1985-04-19T00:00:00.0000000' AS DateTime2), 31, N'Watford')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (472, 160462, 1221, 12, N'Marwin Hitz', N'GK', CAST(N'1987-09-18T00:00:00.0000000' AS DateTime2), 28, N'Augsburg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (473, 160469, 1221, 13, N'Ricardo Rodriguez', N'DF', CAST(N'1992-08-25T00:00:00.0000000' AS DateTime2), 23, N'Wolfsburg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (474, 160478, 1221, 14, N'Denis Zakaria', N'MF', CAST(N'1996-11-20T00:00:00.0000000' AS DateTime2), 19, N'Young Boys')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (475, 160473, 1221, 15, N'Blerim Dzemaili', N'MF', CAST(N'1986-04-12T00:00:00.0000000' AS DateTime2), 30, N'Genoa')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (476, 160474, 1221, 16, N'Gelson Fernandes', N'MF', CAST(N'1986-09-02T00:00:00.0000000' AS DateTime2), 29, N'Rennes')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (477, 160483, 1221, 17, N'Shani Tarashaj', N'FD', CAST(N'1995-02-07T00:00:00.0000000' AS DateTime2), 21, N'Grasshoppers')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (478, 160481, 1221, 18, N'Admir Mehmedi', N'FD', CAST(N'1991-03-16T00:00:00.0000000' AS DateTime2), 25, N'Leverkusen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (479, 160479, 1221, 19, N'Eren Derdiyok', N'FD', CAST(N'1988-06-12T00:00:00.0000000' AS DateTime2), 28, N'Kasimpasa')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (480, 160464, 1221, 20, N'Johan Djourou', N'DF', CAST(N'1987-01-18T00:00:00.0000000' AS DateTime2), 29, N'Hamburg')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (481, 160461, 1221, 21, N'Roman Burki', N'GK', CAST(N'1990-11-14T00:00:00.0000000' AS DateTime2), 25, N'Dortmund')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (482, 160470, 1221, 22, N'Fabian Schar', N'DF', CAST(N'1991-12-20T00:00:00.0000000' AS DateTime2), 24, N'Hoffenheim')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (483, 160476, 1221, 23, N'Xherdan Shaqiri', N'MF', CAST(N'1991-10-10T00:00:00.0000000' AS DateTime2), 24, N'Stoke')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (484, 160486, 1222, 1, N'Volkan Babacan', N'GK', CAST(N'1988-08-11T00:00:00.0000000' AS DateTime2), 27, N'Istanbul Basaksehir')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (485, 160492, 1222, 2, N'Semih Kaya', N'DF', CAST(N'1991-02-24T00:00:00.0000000' AS DateTime2), 25, N'Galatasaray')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (486, 160490, 1222, 3, N'Hakan Balta', N'DF', CAST(N'1983-03-23T00:00:00.0000000' AS DateTime2), 33, N'Galatasaray')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (487, 160487, 1222, 4, N'Ahmet Calik', N'DF', CAST(N'1994-02-26T00:00:00.0000000' AS DateTime2), 22, N'Genclerbirligi')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (488, 160497, 1222, 5, N'Nuri Sahin', N'MF', CAST(N'1988-09-05T00:00:00.0000000' AS DateTime2), 27, N'Dortmund')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (489, 160495, 1222, 6, N'Hakan Calhanoglu', N'MF', CAST(N'1994-02-08T00:00:00.0000000' AS DateTime2), 22, N'Leverkusen')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (490, 160489, 1222, 7, N'Gokhan Gonul', N'DF', CAST(N'1985-01-04T00:00:00.0000000' AS DateTime2), 31, N'Fenerbahce')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (491, 160501, 1222, 8, N'Selcuk Inan', N'MF', CAST(N'1985-02-10T00:00:00.0000000' AS DateTime2), 31, N'Galatasaray')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (492, 160505, 1222, 9, N'Cenk Tosun', N'FD', CAST(N'1991-06-07T00:00:00.0000000' AS DateTime2), 25, N'Besiktas')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (493, 160494, 1222, 10, N'Arda Turan', N'MF', CAST(N'1987-01-30T00:00:00.0000000' AS DateTime2), 29, N'Barcelona')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (494, 160499, 1222, 11, N'Olcay Sahan', N'MF', CAST(N'1987-05-26T00:00:00.0000000' AS DateTime2), 29, N'Besiktas')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (495, 160485, 1222, 12, N'Onur Kivrak', N'GK', CAST(N'1988-01-01T00:00:00.0000000' AS DateTime2), 28, N'Trabzonspor')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (496, 160491, 1222, 13, N'Ismail Koybasi', N'DF', CAST(N'1989-07-10T00:00:00.0000000' AS DateTime2), 26, N'Besiktas')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (497, 160498, 1222, 14, N'Oguzhan Ozyakup', N'MF', CAST(N'1992-09-23T00:00:00.0000000' AS DateTime2), 23, N'Besiktas')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (498, 160496, 1222, 15, N'Mehmet Topal', N'MF', CAST(N'1986-03-03T00:00:00.0000000' AS DateTime2), 30, N'Fenerbahce')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (499, 160500, 1222, 16, N'Ozan Tufan', N'MF', CAST(N'1995-03-23T00:00:00.0000000' AS DateTime2), 21, N'Fenerbahce')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (500, 160504, 1222, 17, N'Burak Yilmaz', N'FD', CAST(N'1985-07-15T00:00:00.0000000' AS DateTime2), 30, N'Beijing Guoan')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (501, 160488, 1222, 18, N'Caner Erkin', N'DF', CAST(N'1988-10-04T00:00:00.0000000' AS DateTime2), 27, N'Fenerbahce')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (502, 160503, 1222, 19, N'Yunus Malli', N'MF', CAST(N'1992-02-24T00:00:00.0000000' AS DateTime2), 24, N'Mainz')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (503, 160502, 1222, 20, N'Volkan Sen', N'MF', CAST(N'1987-07-07T00:00:00.0000000' AS DateTime2), 28, N'Fenerbahce')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (504, 160506, 1222, 21, N'Emre Mor', N'FD', CAST(N'1997-07-24T00:00:00.0000000' AS DateTime2), 18, N'Nordsjælland')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (505, 160493, 1222, 22, N'Sener Ozbayrakli', N'DF', CAST(N'1990-01-23T00:00:00.0000000' AS DateTime2), 26, N'Fenerbahce')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (506, 160484, 1222, 23, N'Harun Tekin', N'GK', CAST(N'1989-06-17T00:00:00.0000000' AS DateTime2), 27, N'Bursaspor')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (507, 160507, 1223, 1, N'Denys Boyko', N'GK', CAST(N'1988-01-29T00:00:00.0000000' AS DateTime2), 28, N'Besiktas')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (508, 160510, 1223, 2, N'Bohdan Butko', N'DF', CAST(N'1991-01-13T00:00:00.0000000' AS DateTime2), 25, N'Amkar')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (509, 160512, 1223, 3, N'Yevhen Khacheridi', N'DF', CAST(N'1987-07-28T00:00:00.0000000' AS DateTime2), 28, N'Dynamo Kyiv')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (510, 160524, 1223, 4, N'Anatoliy Tymoshchuk', N'MF', CAST(N'1979-03-30T00:00:00.0000000' AS DateTime2), 37, N'Kairat')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (511, 160513, 1223, 5, N'Olexandr Kucher', N'DF', CAST(N'1982-10-22T00:00:00.0000000' AS DateTime2), 33, N'Shakhtar Donetsk')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (512, 160522, 1223, 6, N'Taras Stepanenko', N'MF', CAST(N'1989-08-08T00:00:00.0000000' AS DateTime2), 26, N'Shakhtar Donetsk')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (513, 160525, 1223, 7, N'Andriy Yarmolenko', N'MF', CAST(N'1989-10-23T00:00:00.0000000' AS DateTime2), 26, N'Dynamo Kyiv')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (514, 160529, 1223, 8, N'Roman Zozulya', N'FD', CAST(N'1989-11-17T00:00:00.0000000' AS DateTime2), 26, N'Dnipro')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (515, 160519, 1223, 9, N'Viktor Kovalenko', N'MF', CAST(N'1996-02-14T00:00:00.0000000' AS DateTime2), 20, N'Shakhtar Donetsk')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (516, 160518, 1223, 10, N'Yevhen Konoplyanka', N'MF', CAST(N'1989-09-29T00:00:00.0000000' AS DateTime2), 26, N'Sevilla')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (517, 160528, 1223, 11, N'Yevhen Seleznyov', N'FD', CAST(N'1985-07-20T00:00:00.0000000' AS DateTime2), 30, N'Shakhtar Donetsk')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (518, 160508, 1223, 12, N'Andriy Pyatov', N'GK', CAST(N'1984-06-28T00:00:00.0000000' AS DateTime2), 31, N'Shakhtar Donetsk')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (519, 160515, 1223, 13, N'Vyacheslav Shevchuk', N'DF', CAST(N'1979-05-13T00:00:00.0000000' AS DateTime2), 37, N'Shakhtar Donetsk')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (520, 160520, 1223, 14, N'Ruslan Rotan', N'MF', CAST(N'1981-10-29T00:00:00.0000000' AS DateTime2), 34, N'Dnipro')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (521, 160527, 1223, 15, N'Pylyp Budkivskiy', N'FD', CAST(N'1992-03-10T00:00:00.0000000' AS DateTime2), 24, N'Zorya')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (522, 160523, 1223, 16, N'Serhiy Sydorchuk', N'MF', CAST(N'1991-05-02T00:00:00.0000000' AS DateTime2), 25, N'Dynamo Kyiv')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (523, 160511, 1223, 17, N'Artem Fedetskiy', N'DF', CAST(N'1985-04-26T00:00:00.0000000' AS DateTime2), 31, N'Dnipro')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (524, 160521, 1223, 18, N'Serhiy Rybalka', N'MF', CAST(N'1990-04-01T00:00:00.0000000' AS DateTime2), 26, N'Dynamo Kyiv')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (525, 160516, 1223, 19, N'Denys Garmash', N'MF', CAST(N'1990-04-19T00:00:00.0000000' AS DateTime2), 26, N'Dynamo Kyiv')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (526, 160514, 1223, 20, N'Yaroslav Rakitskiy', N'DF', CAST(N'1989-08-03T00:00:00.0000000' AS DateTime2), 26, N'Shakhtar Donetsk')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (527, 160526, 1223, 21, N'Olexandr Zinchenko', N'MF', CAST(N'1996-12-15T00:00:00.0000000' AS DateTime2), 19, N'Ufa')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (528, 160517, 1223, 22, N'Olexandr Karavaev', N'MF', CAST(N'1992-06-02T00:00:00.0000000' AS DateTime2), 24, N'Zorya')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (529, 160509, 1223, 23, N'Mykyta Shevchenko', N'GK', CAST(N'1993-01-26T00:00:00.0000000' AS DateTime2), 23, N'Zorya')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (530, 160531, 1224, 1, N'Wayne Hennessey', N'GK', CAST(N'1987-01-24T00:00:00.0000000' AS DateTime2), 29, N'Crystal Palace')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (531, 160536, 1224, 2, N'Chris Gunter', N'DF', CAST(N'1989-07-21T00:00:00.0000000' AS DateTime2), 26, N'Reading')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (532, 160538, 1224, 3, N'Neil Taylor', N'DF', CAST(N'1989-02-07T00:00:00.0000000' AS DateTime2), 27, N'Swansea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (533, 160535, 1224, 4, N'Ben Davies', N'DF', CAST(N'1993-04-24T00:00:00.0000000' AS DateTime2), 23, N'Tottenham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (534, 160533, 1224, 5, N'James Chester', N'DF', CAST(N'1989-01-23T00:00:00.0000000' AS DateTime2), 27, N'West Brom')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (535, 160539, 1224, 6, N'Ashley Williams', N'DF', CAST(N'1984-08-23T00:00:00.0000000' AS DateTime2), 31, N'Swansea')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (536, 160540, 1224, 7, N'Joe Allen', N'MF', CAST(N'1990-03-14T00:00:00.0000000' AS DateTime2), 26, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (537, 160542, 1224, 8, N'Andy King', N'MF', CAST(N'1988-10-29T00:00:00.0000000' AS DateTime2), 27, N'Leicester')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (538, 160550, 1224, 9, N'Hal Robson-Kanu', N'FD', CAST(N'1989-05-21T00:00:00.0000000' AS DateTime2), 27, N'Reading')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (539, 160544, 1224, 10, N'Aaron Ramsey', N'MF', CAST(N'1990-12-26T00:00:00.0000000' AS DateTime2), 25, N'Arsenal')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (540, 160547, 1224, 11, N'Gareth Bale', N'FD', CAST(N'1989-07-16T00:00:00.0000000' AS DateTime2), 26, N'Real Madrid')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (541, 160530, 1224, 12, N'Owain Fon Williams', N'GK', CAST(N'1987-03-17T00:00:00.0000000' AS DateTime2), 29, N'Inverness')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (542, 160552, 1224, 13, N'George Williams', N'FD', CAST(N'1995-09-07T00:00:00.0000000' AS DateTime2), 20, N'Fulham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (543, 160541, 1224, 14, N'David Edwards', N'MF', CAST(N'1986-02-03T00:00:00.0000000' AS DateTime2), 30, N'Wolves')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (544, 160537, 1224, 15, N'Jazz Richards', N'DF', CAST(N'1991-04-12T00:00:00.0000000' AS DateTime2), 25, N'Fulham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (545, 160543, 1224, 16, N'Joe Ledley', N'MF', CAST(N'1987-01-23T00:00:00.0000000' AS DateTime2), 29, N'Crystal Palace')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (546, 160549, 1224, 17, N'David Cotterill', N'FD', CAST(N'1987-12-04T00:00:00.0000000' AS DateTime2), 28, N'Birmingham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (547, 160551, 1224, 18, N'Sam Vokes', N'FD', CAST(N'1989-10-21T00:00:00.0000000' AS DateTime2), 26, N'Burnley')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (548, 160534, 1224, 19, N'James Collins', N'DF', CAST(N'1983-08-23T00:00:00.0000000' AS DateTime2), 32, N'West Ham')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (549, 160546, 1224, 20, N'Jonathan Williams', N'MF', CAST(N'1993-10-09T00:00:00.0000000' AS DateTime2), 22, N'Crystal Palace')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (550, 160532, 1224, 21, N'Danny Ward', N'GK', CAST(N'1993-06-22T00:00:00.0000000' AS DateTime2), 22, N'Liverpool')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (551, 160545, 1224, 22, N'David Vaughan', N'MF', CAST(N'1983-02-18T00:00:00.0000000' AS DateTime2), 33, N'Nottm Forest')
GO
INSERT [dbo].[player_mast] ([ID], [player_id], [team_id], [jersey_no], [player_name], [posi_to_play], [dt_of_bir], [age], [playing_club]) VALUES (552, 160548, 1224, 23, N'Simon Church', N'FD', CAST(N'1988-12-10T00:00:00.0000000' AS DateTime2), 27, N'MK Dons')
GO
SET IDENTITY_INSERT [dbo].[player_mast] OFF
GO
SET IDENTITY_INSERT [dbo].[playing_position] ON 
GO
INSERT [dbo].[playing_position] ([ID], [Field1], [Field2]) VALUES (1, N'position_id', N'position_desc')
GO
INSERT [dbo].[playing_position] ([ID], [Field1], [Field2]) VALUES (2, N'GK', N'Goalkeepers')
GO
INSERT [dbo].[playing_position] ([ID], [Field1], [Field2]) VALUES (3, N'DF', N'Defenders')
GO
INSERT [dbo].[playing_position] ([ID], [Field1], [Field2]) VALUES (4, N'MF', N'Midfielders')
GO
INSERT [dbo].[playing_position] ([ID], [Field1], [Field2]) VALUES (5, N'FD', N'Defenders')
GO
SET IDENTITY_INSERT [dbo].[playing_position] OFF
GO
SET IDENTITY_INSERT [dbo].[referee_mast] ON 
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (1, 70001, N'Damir Skomina', 1225)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (2, 70002, N'Martin Atkinson', 1206)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (3, 70003, N'Felix Brych', 1208)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (4, 70004, N'Cuneyt Cakir', 1222)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (5, 70005, N'Mark Clattenburg', 1206)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (6, 70006, N'Jonas Eriksson', 1220)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (7, 70007, N'Viktor Kassai', 1209)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (8, 70008, N'Bjorn Kuipers', 1226)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (9, 70009, N'Szymon Marciniak', 1213)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (10, 70010, N'Milorad Mazic', 1227)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (11, 70011, N'Nicola Rizzoli', 1211)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (12, 70012, N'Carlos Velasco Carballo', 1219)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (13, 70013, N'William Collum', 1228)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (14, 70015, N'Sergei Karasev', 1217)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (15, 70016, N'Pavel Kralovec', 1205)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (16, 70017, N'Svein Oddvar Moen', 1229)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (17, 70018, N'Clement Turpin', 1207)
GO
INSERT [dbo].[referee_mast] ([ID], [referee_id], [referee_name], [country_id]) VALUES (18, 70014, N'Ovidiu Hategan', 1216)
GO
SET IDENTITY_INSERT [dbo].[referee_mast] OFF
GO
SET IDENTITY_INSERT [dbo].[Soccer Country] ON 
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (1, 1201, N'ALB', N'Albania')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (2, 1202, N'AUT', N'Austria')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (3, 1203, N'BEL', N'Belgium')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (4, 1204, N'CRO', N'Croatia')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (5, 1205, N'CZE', N'Czech Republic')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (6, 1206, N'ENG', N'England')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (7, 1207, N'FRA', N'France')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (8, 1208, N'GER', N'Germany')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (9, 1209, N'HUN', N'Hungary')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (10, 1210, N'ISL', N'Iceland')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (11, 1211, N'ITA', N'Italy')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (12, 1212, N'NIR', N'Northern Ireland')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (13, 1213, N'POL', N'Poland')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (14, 1214, N'POR', N'Portugal')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (15, 1215, N'IRL', N'Republic of Ireland')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (16, 1216, N'ROU', N'Romania')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (17, 1217, N'RUS', N'Russia')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (18, 1218, N'SVK', N'Slovakia')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (19, 1219, N'ESP', N'Spain')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (20, 1220, N'SWE', N'Sweden')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (21, 1221, N'SUI', N'Switzerland')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (22, 1222, N'TUR', N'Turkey')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (23, 1223, N'UKR', N'Ukraine')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (24, 1224, N'WAL', N'Wales')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (25, 1225, N'SLO', N'Slovenia')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (26, 1226, N'NED', N'Netherlands')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (27, 1227, N'SRB', N'Serbia')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (28, 1228, N'SCO', N'Scotland')
GO
INSERT [dbo].[Soccer Country] ([ID], [country_id], [country_abbr], [country_name]) VALUES (29, 1229, N'NOR', N'Norway')
GO
SET IDENTITY_INSERT [dbo].[Soccer Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Soccer_city] ON 
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (1, 10001, N'Paris', 1207)
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (2, 10002, N'Saint-Denis', 1207)
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (3, 10003, N'Bordeaux', 1207)
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (4, 10004, N'Lens', 1207)
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (5, 10005, N'Lille', 1207)
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (6, 10006, N'Lyon', 1207)
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (7, 10007, N'Marseille', 1207)
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (8, 10008, N'Nice', 1207)
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (9, 10009, N'Saint-Etienne', 1207)
GO
INSERT [dbo].[Soccer_city] ([ID], [city_id], [city], [country_id]) VALUES (10, 10010, N'Toulouse', 1207)
GO
SET IDENTITY_INSERT [dbo].[Soccer_city] OFF
GO
SET IDENTITY_INSERT [dbo].[Soccer_team] ON 
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (1, 1201, N'A', 3, 1, 0, 2, 1, 3, -2, 3, 3)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (2, 1202, N'F', 3, 0, 1, 2, 1, 4, -3, 1, 4)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (3, 1203, N'E', 3, 2, 0, 1, 4, 2, 2, 6, 2)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (4, 1204, N'D', 3, 2, 1, 0, 5, 3, 2, 7, 1)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (5, 1205, N'D', 3, 0, 1, 2, 2, 5, -3, 1, 4)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (6, 1206, N'B', 3, 1, 2, 0, 3, 2, 1, 5, 2)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (7, 1207, N'A', 3, 2, 1, 0, 4, 1, 3, 7, 1)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (8, 1208, N'C', 3, 2, 1, 0, 3, 0, 3, 7, 1)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (9, 1209, N'F', 3, 1, 2, 0, 6, 4, 2, 5, 1)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (10, 1210, N'F', 3, 1, 2, 0, 4, 3, 1, 5, 2)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (11, 1211, N'E', 3, 2, 0, 1, 3, 1, 2, 6, 1)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (12, 1212, N'C', 3, 1, 0, 2, 2, 2, 0, 3, 3)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (13, 1213, N'C', 3, 2, 1, 0, 2, 0, 2, 7, 2)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (14, 1214, N'F', 3, 0, 3, 0, 4, 4, 0, 3, 3)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (15, 1215, N'E', 3, 1, 1, 1, 2, 4, -2, 4, 3)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (16, 1216, N'A', 3, 0, 1, 2, 2, 4, -2, 1, 4)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (17, 1217, N'B', 3, 0, 1, 2, 2, 6, -4, 1, 4)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (18, 1218, N'B', 3, 1, 1, 1, 3, 3, 0, 4, 3)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (19, 1219, N'D', 3, 2, 0, 1, 5, 2, 3, 6, 2)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (20, 1220, N'E', 3, 0, 1, 2, 1, 3, -2, 1, 4)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (21, 1221, N'A', 3, 1, 2, 0, 2, 1, 1, 5, 2)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (22, 1222, N'D', 3, 1, 0, 2, 2, 4, -2, 3, 3)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (23, 1223, N'C', 3, 0, 0, 3, 0, 5, -5, 0, 4)
GO
INSERT [dbo].[Soccer_team] ([ID], [team_id], [team_group], [match_played], [won], [draw], [lost], [goal_for], [goal_agnst], [goal_diff], [points], [group_position]) VALUES (24, 1224, N'B', 3, 2, 0, 1, 6, 3, 3, 6, 1)
GO
SET IDENTITY_INSERT [dbo].[Soccer_team] OFF
GO
SET IDENTITY_INSERT [dbo].[soccer_venue] ON 
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (1, 20001, N'Stade de Bordeaux', 10003, 42115)
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (2, 20002, N'Stade Bollaert-Delelis', 10004, 38223)
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (3, 20003, N'Stade Pierre Mauroy', 10005, 49822)
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (4, 20004, N'Stade de Lyon', 10006, 58585)
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (5, 20005, N'Stade VElodrome', 10007, 64354)
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (6, 20006, N'Stade de Nice', 10008, 35624)
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (7, 20007, N'Parc des Princes', 10001, 47294)
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (8, 20008, N'Stade de France', 10002, 80100)
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (9, 20009, N'Stade Geoffroy Guichard', 10009, 42000)
GO
INSERT [dbo].[soccer_venue] ([ID], [venue_id], [venue_name], [city_id], [aud_capacity]) VALUES (10, 20010, N'Stadium de Toulouse', 10010, 33150)
GO
SET IDENTITY_INSERT [dbo].[soccer_venue] OFF
GO
SET IDENTITY_INSERT [dbo].[Team_coaches] ON 
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (1, 1201, 5550)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (2, 1202, 5551)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (3, 1203, 5552)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (4, 1204, 5553)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (5, 1205, 5554)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (6, 1206, 5555)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (7, 1207, 5556)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (8, 1208, 5557)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (9, 1209, 5558)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (10, 1210, 5559)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (11, 1210, 5560)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (12, 1211, 5561)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (13, 1212, 5562)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (14, 1213, 5563)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (15, 1214, 5564)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (16, 1215, 5565)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (17, 1216, 5566)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (18, 1217, 5567)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (19, 1218, 5568)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (20, 1219, 5569)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (21, 1220, 5570)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (22, 1221, 5571)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (23, 1222, 5572)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (24, 1223, 5573)
GO
INSERT [dbo].[Team_coaches] ([ID], [team_id], [coach_id]) VALUES (25, 1224, 5574)
GO
SET IDENTITY_INSERT [dbo].[Team_coaches] OFF
