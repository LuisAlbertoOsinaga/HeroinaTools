CREATE TABLE [dbo].[RolEmails] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [Rol]              NVARCHAR (255) DEFAULT ('') NOT NULL,
    [Mail]             NVARCHAR (255) DEFAULT ('') NOT NULL,
    [Dato]             NVARCHAR (255) NULL,
    [CreadoPor]        NVARCHAR (255) NULL,
    [CreadoEn]         DATETIME       DEFAULT (getdate()) NOT NULL,
    [ActualizadoPor]   NVARCHAR (255) NULL,
    [ActualizadoEn]    DATETIME       DEFAULT (getdate()) NOT NULL,
    [RegId]            NVARCHAR (255) NULL,
    [RowVersion]       ROWVERSION     NOT NULL,
    [RolEmail_Empresa] INT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([RegId] ASC),
    CONSTRAINT [RolEmail_Empresa] FOREIGN KEY ([RolEmail_Empresa]) REFERENCES [dbo].[Empresas] ([Id])
);

CREATE TABLE [dbo].[SendEMails] (
    [Id]               INT              IDENTITY (1, 1) NOT NULL,
    [Fecha]            DATETIME         DEFAULT (getdate()) NOT NULL,
    [Random]           UNIQUEIDENTIFIER NULL,
    [MailFrom]         NVARCHAR (255)   NULL,
    [MailTo]           NVARCHAR (255)   NULL,
    [Subject]          NVARCHAR (255)   NULL,
    [Body]             NVARCHAR (500)   NULL,
    [Attached]         VARBINARY (MAX)  NULL,
    [FileAttached]     NVARCHAR (255)   NULL,
    [Dato]             NVARCHAR (255)   NULL,
    [CreadoPor]        NVARCHAR (255)   NULL,
    [CreadoEn]         DATETIME         DEFAULT (getdate()) NOT NULL,
    [ActualizadoPor]   NVARCHAR (255)   NULL,
    [ActualizadoEn]    DATETIME         NULL,
    [RegId]            NVARCHAR (255)   NULL,
    [RowVersion]       ROWVERSION       NOT NULL,
    [SendMail_Empresa] INT              DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([RegId] ASC),
    CONSTRAINT [SendEMail_Empresa] FOREIGN KEY ([SendMail_Empresa]) REFERENCES [dbo].[Empresas] ([Id])
);

CREATE TABLE [dbo].[Parametros] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [Categoria]         NVARCHAR (255) DEFAULT ('') NOT NULL,
    [Clave]             NVARCHAR (255) DEFAULT ('') NOT NULL,
    [Valor]             NVARCHAR (255) NULL,
    [Dato]              NVARCHAR (255) NULL,
    [CreadoPor]         NVARCHAR (255) NULL,
    [CreadoEn]          DATETIME       DEFAULT (getdate()) NOT NULL,
    [ActualizadoPor]    NVARCHAR (255) NULL,
    [ActualizadoEn]     DATETIME       DEFAULT (getdate()) NOT NULL,
    [RegId]             NVARCHAR (255) NULL,
    [RowVersion]        ROWVERSION     NOT NULL,
    [Parametro_Empresa] INT            DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([RegId] ASC),
    CONSTRAINT [Parametro_Empresa] FOREIGN KEY ([Parametro_Empresa]) REFERENCES [dbo].[Empresas] ([Id])
);