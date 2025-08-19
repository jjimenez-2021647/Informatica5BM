-- Por Josué Gilberto Jiménez Ajtún
-- IN5BM
-- 19/08/2025

-- Creación de la base de datos
Drop Database if exists DB_DispositivosPerifericos; 
Create Database DB_DispositivosPerifericos;
Use DB_DispositivosPerifericos;

-- Proveedores 
Create table Proveedores(
	codigoProveedor int auto_increment,
    nombreProveedor varchar(100) not null,
    telefonoProveedor varchar(20) not null,
    correoProveedor varchar(200) not null,
    paisProveedor varchar(150),
    primary key PK_codigoProveedor (codigoProveedor)
);

Create table DispositvosPerifericos(
	codigoDP int auto_increment,
    nombreDP varchar(100) not null,
    precioDP double(10,2),
    stock int,
    tipo varchar(100),
    codigoProveedor int,
    primary key PK_codigoDP (codigoDP),
	constraint FK_codigoProveedor foreign key (codigoProveedor)
		references Proveedores (codigoProveedor)
);

-- --------------------------- Procedimientos almacenados ---------------------------
-- --------------------------- Entidad Proveedor --------------------------- 
-- Agregar Proveedor
Delimiter //
	Create procedure sp_AgregarProveedor(
    in nombreProveedor varchar(100), 
    in telefonoProveedor varchar(20), 
    in correoProveedor varchar(200), 
    in paisProveedor varchar(150))
		Begin
			Insert into Proveedores(nombreProveedor, telefonoProveedor, correoProveedor, paisProveedor)
				Values(nombreProveedor, telefonoProveedor, correoProveedor, paisProveedor);
        End //
Delimiter ;
call sp_AgregarProveedor('Textiles Centro', '+502 2456-7890', 'textiles.centro@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Distribuidora El Faro', '+502 3345-1234', 'elfaro.proveedores@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Moda Global', '+502 5566-7788', 'modaglobal@gmail.com', 'México');
call sp_AgregarProveedor('Colores y Telas', '+502 4789-0012', 'coloresytelas@gmail.com', 'El Salvador');
call sp_AgregarProveedor('Fashion Import', '+502 5123-4567', 'fashionimport@gmail.com', 'Estados Unidos');
call sp_AgregarProveedor('Ropa Latina', '+502 6034-5678', 'ropalatina@gmail.com', 'Honduras');
call sp_AgregarProveedor('Tejidos Maya', '+502 7234-1122', 'tejidosmaya@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Estilo Urbano', '+502 3109-8765', 'estilourbano@gmail.com', 'Costa Rica');
call sp_AgregarProveedor('Boutique Express', '+502 4490-2233', 'boutique.express@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Importadora del Sur', '+502 5678-3344', 'import.sur@gmail.com', 'Panamá');
call sp_AgregarProveedor('Importadora del Sur', '+502 5678-3344', 'import.sur@gmail.com', 'Panamá');


-- Listar Proveedor
Delimiter //
	Create procedure sp_ListarProveedor()
		Begin
			Select codigoProveedor, nombreProveedor, telefonoProveedor, correoProveedor, paisProveedor from Proveedores;
        End //
Delimiter ;
call sp_ListarProveedor();

-- Eliminar Proveedor
Delimiter //
	Create procedure sp_EliminarProveedor(
    in _codigoProveedor int)
		Begin
			set foreign_key_checks = 0;
				Delete from Proveedores
					where codigoProveedor = _codigoProveedor;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarProveedor(11);

-- Buscar Proveedor
Delimiter //
	Create procedure sp_BuscarProveedor(
    in _codigoProveedor int)
		Begin
			Select codigoProveedor, nombreProveedor, telefonoProveedor, correoProveedor, paisProveedor from Proveedores
				where codigoProveedor = _codigoProveedor;
        End //
Delimiter ;
call sp_BuscarProveedor(1);

-- Editar Proveedor
Delimiter //
	Create procedure sp_EditarProveedor(
    in _codigoProveedor int,
    in _nombreProveedor varchar(100), 
    in _telefonoProveedor varchar(20), 
    in _correoProveedor varchar(200), 
    in _paisProveedor varchar(150))
		Begin
			Update Proveedores
				set nombreProveedor = _nombreProveedor,
					telefonoProveedor = _telefonoProveedor,
                    correoProveedor = _correoProveedor,
                    paisProveedor = _paisProveedor
					where codigoProveedor = _codigoProveedor;
        End //
Delimiter ;
call sp_EditarProveedor(10, 'Tendencias del Sur', '+502 4567-8899', 'tendenciassur@gmail.com', 'Costa Rica');

-- --------------------------- Entidad Dispositvos Perifericos --------------------------- 
-- Agregar DispositvosPerifericos
Delimiter //
	Create procedure sp_AgregarDispositvosPerifericos(
    in nombreDP varchar(100),
    in precioDP double(10,2),
    in stock int,
    in tipo varchar(100),
    in codigoProveedor int)
		Begin
			Insert into DispositvosPerifericos(nombreDP, precioDP, stock, tipo, codigoProveedor)
				Values(nombreDP, precioDP, stock, tipo, codigoProveedor);
        End //
Delimiter ;
call sp_AgregarDispositvosPerifericos('Microfono', 150.20, 25, 'Entrada', 1);
call sp_AgregarDispositvosPerifericos('Camara', 350.20, 13, 'Entrada', 2);
call sp_AgregarDispositvosPerifericos('USB', 150.00, 5, 'Entrada y Salida', 3);
call sp_AgregarDispositvosPerifericos('Mouse', 352.26, 52, 'Entrada', 4);
call sp_AgregarDispositvosPerifericos('Teclado', 400.00, 12, 'Entrada', 5);
call sp_AgregarDispositvosPerifericos('Impresora', 600.50, 3, 'Salida', 6);
call sp_AgregarDispositvosPerifericos('Monitor', 1500.02, 6, 'Salida', 7);
call sp_AgregarDispositvosPerifericos('Audifonos', 562.2, 5, 'Salida', 8);
call sp_AgregarDispositvosPerifericos('Bocinas', 150.00, 4, 'Salida', 9);
call sp_AgregarDispositvosPerifericos('Joystick', 156.20, 4, 'Entrada', 10);

-- Listar DispositvosPerifericos
Delimiter //
	Create procedure sp_ListarDispositvosPerifericos()
		Begin
			Select codigoDP, nombreDP, precioDP, stock, tipo, codigoProveedor from DispositvosPerifericos;
        End //
Delimiter ;
call sp_ListarDispositvosPerifericos();

-- Eliminar DispositvosPerifericos
Delimiter //
	Create procedure sp_EliminarDispositvosPerifericos(
    in _codigoDP int)
		Begin
			set foreign_key_checks = 0;
				Delete from DispositvosPerifericos
					where codigoDP = _codigoDP;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarDispositvosPerifericos(10);

-- Buscar DispositvosPerifericos
Delimiter //
	Create procedure sp_BuscarDispositvosPerifericos(
    in _codigoDP int)
		Begin
			Select codigoDP, nombreDP, precioDP, stock, tipo, codigoProveedor from DispositvosPerifericos
				where codigoDP = _codigoDP;
        End //
Delimiter ;
call sp_BuscarDispositvosPerifericos(1);

-- Editar sp_EditarDispositvosPerifericos
Delimiter //
	Create procedure sp_EditarDispositvosPerifericos(
    in _codigoDP int,
    in _nombreDP varchar(100),
    in _precioDP double(10,2),
    in _stock int,
    in _tipo varchar(100),
    in _codigoProveedor int)
		Begin
			Update DispositvosPerifericos
				set nombreDP = _nombreDP,
                    precioDP = _precioDP,
                    stock = _stock,
                    tipo = _tipo,
                    codigoProveedor = _codigoProveedor
					where codigoDP = _codigoDP;
        End //
Delimiter ;
call sp_EditarDispositvosPerifericos(10, 'Joystick', 560.65, 10, 'Entrada', 10);