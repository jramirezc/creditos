CREATE TABLE Tbl_Campo ( 
	idCampo int identity(1,1)  NOT NULL,
	nomCampo varchar(50),
	estado bit
)
;

CREATE TABLE Tbl_Credito ( 
	idCredito int identity(1,1)  NOT NULL,
	idTipCredito int,
	monto decimal(10,2) NOT NULL,
	idTasa int,
	idEstado int NOT NULL,
	años int,
	creado datetime DEFAULT getdate()
)
;

CREATE TABLE Tbl_CreditoBitacora ( 
	idCredito int NOT NULL,
	idTipCredito int NOT NULL,
	monto decimal(10,2) NOT NULL,
	tasInteres decimal(10,2) NOT NULL,
	idusuarioAgente int NOT NULL,
	idEstado int NOT NULL,
	Letras int,
	creado datetime,
	modificado datetime DEFAULT getdate()
)
;

CREATE TABLE Tbl_CreditoProducto ( 
	idCredito int,
	idProducto int,
	idSubProducto int,
	estado bit
)
;

CREATE TABLE Tbl_DetalleCredito ( 
	idDetCredito int identity(1,1)  NOT NULL,
	idCredito int NOT NULL,
	totalLetras int NOT NULL,
	noCuenta int NOT NULL,
	fechaCredito datetime NOT NULL,
	estado bit NOT NULL,
	letras int
)
;

CREATE TABLE Tbl_DocxCredito ( 
	idDocumento int identity(1,1)  NOT NULL,
	idPersona int NOT NULL,
	idTipDocumento int,
	fecha datetime,
	idCredito int,
	estado bit
)
;

CREATE TABLE Tbl_Estado ( 
	idEstado int identity(1,1)  NOT NULL,
	nomEstado varchar(50) NOT NULL,
	estado bit NOT NULL
)
;

CREATE TABLE Tbl_Estado_Civil ( 
	idEstCivil int identity(1,1)  NOT NULL,
	nomEstCivil varchar(50),
	estado bit DEFAULT 1
)
;

CREATE TABLE Tbl_EvaluacionDomiciliar ( 
	idEvaDomiciliar int identity(1,1)  NOT NULL,
	idCredito int,
	idCampo int,
	agua bit,
	luz bit,
	serBasura bit,
	serCable binary(10),
	area decimal(10,2),
	estado bit
)
;

CREATE TABLE Tbl_EvaluacionFinaciera ( 
	idEvaFinanciera int identity(1,1)  NOT NULL,
	idCredito int,
	ingresos decimal(10,2),
	egresos decimal(10,2),
	capital decimal(10,2),
	capPago decimal(10,2),
	estado bit
)
;

CREATE TABLE Tbl_Fiador ( 
	cuiPersona int,
	idCredito int,
	estado bit
)
;

CREATE TABLE Tbl_Involucrado ( 
	cuiPersona int identity(1,1) ,
	idCredito int,
	idTipInteres int,
	estado bit
)
;

CREATE TABLE Tbl_Letras_De_Pago ( 
	idletPago int identity(1,1)  NOT NULL,
	idCredito int NOT NULL,
	letraPago decimal(9,2) NOT NULL,
	Saldo decimal(9,2) NOT NULL,
	interesxMora int NOT NULL,
	estad bit
)
;

CREATE TABLE Tbl_PermisoxRol ( 
	idRolxPermiso int identity(1,1)  NOT NULL,
	idPermiso int NOT NULL,
	nomPermiso varchar(50) NOT NULL,
	estado bit NOT NULL,
	idRol int
)
;

CREATE TABLE Tbl_Persona ( 
	cuiPersona int identity(1,1)  NOT NULL,
	priNomPersona varchar(50) NOT NULL,
	segNomPersona varchar(50),
	priApePersona varchar(50) NOT NULL,
	segApePersona varchar(50),
	dirPersona varchar(10),
	telPersona varchar(8),
	idSexo int,
	fechNacPersona datetime,
	idEstCivil int,
	estado bit DEFAULT 1 NOT NULL
)
;

CREATE TABLE Tbl_Producto ( 
	idProducto int identity(1,1)  NOT NULL,
	nomProducto varchar(50),
	estado bit
)
;

CREATE TABLE Tbl_Rol ( 
	idRol int identity(1,1)  NOT NULL,
	nomRol varchar(50) NOT NULL,
	estado bit DEFAULT 1 NOT NULL
)
;

CREATE TABLE Tbl_Sexo ( 
	idSexo int identity(1,1)  NOT NULL,
	nomSexo varchar(50) NOT NULL,
	estado bit DEFAULT 1 NOT NULL
)
;

CREATE TABLE Tbl_Sub_Producto ( 
	intSubProducto int identity(1,1)  NOT NULL,
	nomSubProducto varchar(50),
	estado bit
)
;

CREATE TABLE Tbl_Tasa ( 
	idTasa int identity(1,1)  NOT NULL,
	tasa decimal(2,2),
	estado bit
)
;

CREATE TABLE Tbl_Tipo_Credito ( 
	idTipCredito int identity(1,1)  NOT NULL,
	nomTipCredito varchar(50) NOT NULL,
	estado bit NOT NULL
)
;

CREATE TABLE Tbl_TipoDocumento ( 
	idTipDocumento int identity(1,1)  NOT NULL,
	nomTipDocumento varchar(50),
	estado bit DEFAULT 1 NOT NULL
)
;

CREATE TABLE Tbl_Usuario ( 
	idUsuario int identity(1,1)  NOT NULL,
	nomUsuario char(50) NOT NULL,
	contraseñaUsuario char(12) NOT NULL,
	cuiPersona int,
	estado bit DEFAULT 1 NOT NULL,
	idRol int
)
;

CREATE TABLE Tbl_UsuariosxCredito ( 
	idUsuario int identity(1,1) ,
	idCredito binary(10),
	fecha datetime
)
;


ALTER TABLE Tbl_Campo ADD CONSTRAINT PK_TblArea 
	PRIMARY KEY CLUSTERED (idCampo)
;

ALTER TABLE Tbl_Credito ADD CONSTRAINT PK_tbl_credito 
	PRIMARY KEY CLUSTERED (idCredito)
;

ALTER TABLE Tbl_DetalleCredito ADD CONSTRAINT PK_tbl_detalle_credito 
	PRIMARY KEY CLUSTERED (idDetCredito)
;

ALTER TABLE Tbl_DocxCredito ADD CONSTRAINT PK_Tbl_Documento 
	PRIMARY KEY CLUSTERED (idDocumento)
;

ALTER TABLE Tbl_Estado ADD CONSTRAINT PK_Tbl_Estado 
	PRIMARY KEY CLUSTERED (idEstado)
;

ALTER TABLE Tbl_Estado_Civil ADD CONSTRAINT PK_tbl_estado_civil 
	PRIMARY KEY CLUSTERED (idEstCivil)
;

ALTER TABLE Tbl_EvaluacionDomiciliar ADD CONSTRAINT PK_Tbl_EvaluacionDomiciliar 
	PRIMARY KEY CLUSTERED (idEvaDomiciliar)
;

ALTER TABLE Tbl_EvaluacionFinaciera ADD CONSTRAINT PK_Tbl_EvaluacionFinaciera 
	PRIMARY KEY CLUSTERED (idEvaFinanciera)
;

ALTER TABLE Tbl_Letras_De_Pago ADD CONSTRAINT PK_tbl_letras_de_pago 
	PRIMARY KEY CLUSTERED (idletPago)
;

ALTER TABLE Tbl_PermisoxRol ADD CONSTRAINT PK_Tbl_PermisoxRol 
	PRIMARY KEY CLUSTERED (idRolxPermiso)
;

ALTER TABLE Tbl_Persona ADD CONSTRAINT PK_tbl_persona 
	PRIMARY KEY CLUSTERED (cuiPersona)
;

ALTER TABLE Tbl_Producto ADD CONSTRAINT PK_Tbl_Producto 
	PRIMARY KEY CLUSTERED (idProducto)
;

ALTER TABLE Tbl_Rol ADD CONSTRAINT PK_tbl_rol 
	PRIMARY KEY CLUSTERED (idRol)
;

ALTER TABLE Tbl_Sexo ADD CONSTRAINT PK_tbl_sexo 
	PRIMARY KEY CLUSTERED (idSexo)
;

ALTER TABLE Tbl_Sub_Producto ADD CONSTRAINT PK_Tbl_Sub_Producto 
	PRIMARY KEY CLUSTERED (intSubProducto)
;

ALTER TABLE Tbl_Tasa ADD CONSTRAINT PK_Tbl_Tasa 
	PRIMARY KEY CLUSTERED (idTasa)
;

ALTER TABLE Tbl_Tipo_Credito ADD CONSTRAINT PK_tbl_tipo_credito 
	PRIMARY KEY CLUSTERED (idTipCredito)
;

ALTER TABLE Tbl_TipoDocumento ADD CONSTRAINT PK_tbl_Tipo_Documento 
	PRIMARY KEY CLUSTERED (idTipDocumento)
;

ALTER TABLE Tbl_Usuario ADD CONSTRAINT PK_Tbl_Usuario 
	PRIMARY KEY CLUSTERED (idUsuario)
;


ALTER TABLE Tbl_Persona
	ADD CONSTRAINT UQ_Tbl_Persona_cuiPersona UNIQUE (cuiPersona)
;

ALTER TABLE Tbl_Tipo_Credito
	ADD CONSTRAINT UQ_Tbl_Tipo_Credito_nomTipCredito UNIQUE (nomTipCredito)
;

ALTER TABLE Tbl_Usuario
	ADD CONSTRAINT UQ_Tbl_Usuario_idUsuario UNIQUE (idUsuario)
;


ALTER TABLE Tbl_Credito ADD CONSTRAINT FK_Tbl_Credito_Tbl_Estado 
	FOREIGN KEY (idEstado) REFERENCES Tbl_Estado (idEstado)
;

ALTER TABLE Tbl_Credito ADD CONSTRAINT FK_Tbl_Credito_Tbl_Tasa 
	FOREIGN KEY (idTasa) REFERENCES Tbl_Tasa (idTasa)
;

ALTER TABLE Tbl_Credito ADD CONSTRAINT FK_tbl_credito_tbl_tipo_credito 
	FOREIGN KEY (idTipCredito) REFERENCES Tbl_Tipo_Credito (idTipCredito)
;

ALTER TABLE Tbl_CreditoProducto ADD CONSTRAINT FK_Tbl_CreditoProducto_Tbl_Credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_CreditoProducto ADD CONSTRAINT FK_Tbl_CreditoProducto_Tbl_Producto 
	FOREIGN KEY (idProducto) REFERENCES Tbl_Producto (idProducto)
;

ALTER TABLE Tbl_CreditoProducto ADD CONSTRAINT FK_Tbl_CreditoProducto_Tbl_Sub_Producto 
	FOREIGN KEY (idSubProducto) REFERENCES Tbl_Sub_Producto (intSubProducto)
;

ALTER TABLE Tbl_DetalleCredito ADD CONSTRAINT FK_tbl_detalle_credito_tbl_credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_DocxCredito ADD CONSTRAINT FK_Tbl_Documento_tbl_Tipo_Documento 
	FOREIGN KEY (idTipDocumento) REFERENCES Tbl_TipoDocumento (idTipDocumento)
;

ALTER TABLE Tbl_DocxCredito ADD CONSTRAINT FK_Tbl_DocxCredito_Tbl_Credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_EvaluacionDomiciliar ADD CONSTRAINT FK_Tbl_EvaluacionDomiciliar_Tbl_Credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_EvaluacionDomiciliar ADD CONSTRAINT FK_Tbl_EvaluacionDomiciliar_TblArea 
	FOREIGN KEY (idCampo) REFERENCES Tbl_Campo (idCampo)
;

ALTER TABLE Tbl_EvaluacionFinaciera ADD CONSTRAINT FK_Tbl_EvaluacionFinaciera_Tbl_Credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_Fiador ADD CONSTRAINT FK_Tbl_Fiador_Tbl_Credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_Fiador ADD CONSTRAINT FK_Tbl_Fiador_Tbl_Persona 
	FOREIGN KEY (cuiPersona) REFERENCES Tbl_Persona (cuiPersona)
;

ALTER TABLE Tbl_Involucrado ADD CONSTRAINT FK_Tbl_Solicitante_Tbl_Credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_Involucrado ADD CONSTRAINT FK_Tbl_Solicitante_Tbl_Persona 
	FOREIGN KEY (cuiPersona) REFERENCES Tbl_Persona (cuiPersona)
;

ALTER TABLE Tbl_Letras_De_Pago ADD CONSTRAINT FK_tbl_letras_de_pago_tbl_credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_PermisoxRol ADD CONSTRAINT FK_Tbl_PermisoxRol_Tbl_Rol 
	FOREIGN KEY (idRol) REFERENCES Tbl_Rol (idRol)
;

ALTER TABLE Tbl_Persona ADD CONSTRAINT FK_tbl_persona_tbl_estado_civil 
	FOREIGN KEY (idEstCivil) REFERENCES Tbl_Estado_Civil (idEstCivil)
;

ALTER TABLE Tbl_Persona ADD CONSTRAINT FK_tbl_persona_tbl_sexo 
	FOREIGN KEY (idSexo) REFERENCES Tbl_Sexo (idSexo)
;

ALTER TABLE Tbl_Usuario ADD CONSTRAINT FK_Tbl_Usuario_tbl_persona 
	FOREIGN KEY (cuiPersona) REFERENCES Tbl_Persona (cuiPersona)
;

ALTER TABLE Tbl_Usuario ADD CONSTRAINT FK_Tbl_Usuario_Tbl_Rol 
	FOREIGN KEY (idRol) REFERENCES Tbl_Rol (idRol)
;

ALTER TABLE Tbl_UsuariosxCredito ADD CONSTRAINT FK_Tbl_UsuariosxCredito_Tbl_Credito 
	FOREIGN KEY (idUsuario) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_UsuariosxCredito ADD CONSTRAINT FK_Tbl_UsuariosxCredito_Tbl_Usuario 
	FOREIGN KEY (idUsuario) REFERENCES Tbl_Usuario (idUsuario)
;
