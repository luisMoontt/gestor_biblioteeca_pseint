Algoritmo gestion_biblioteca
	Definir usuario Como Cadena
	Dimensionar usuario(99,7)
	Definir libro Como Cadena
	Dimensionar libro(99,7)
	
	Definir prestamo Como Cadena
	Dimensionar prestamo(99,7)
	
	Definir libro_state Como Lógico
	Dimensionar libro_state(99)
	Definir libro_ejemplares Como Entero
	Dimensionar libro_ejemplares(99)
	Definir ejemplares Como Cadena
	Dimensionar ejemplares(999,3)
	Definir mes Como Entero
	Dimensionar mes(12,1)
	Definir cant_usuarios Como Entero
	Definir cant_libros Como Entero
	Definir cant_ejemplares Como Entero
	Definir codigo_libro Como Cadena
	cant_usuarios <- 1
	cant_libros <- 1
	cant_ejemplares <- 1
	cant_prestamos <- 1
	cant_multas <- 1
	// MESES ///////////////////////////////////////////////////////////////////////////////////////////////////////
	mes[1,1]<-31
	mes[2,1]<-28
	mes[3,1]<-31
	mes[4,1]<-30
	mes[5,1]<-31
	mes[6,1]<-30
	mes[7,1]<-31
	mes[8,1]<-31
	mes[9,1]<-30
	mes[10,1]<-31
	mes[11,1]<-30
	mes[12,1]<-31
	// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	prestamo[1,1] <- "900"
	prestamo[1,2] <- "1000"
	prestamo[1,3] <- "2025001"
	prestamo[1,4] <- "12/10/2025"
	prestamo[1,5] <- "19/10/2025"
	prestamo[1,6] <- "ACTIVO"
	prestamo[1,7] <- "NO" // 
	
	// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// ID                        NOMBRE                          CARNET                   NUMERO                         MAIL                              FECHA DE INICIO         PRESTAMOS ACTIVOS
	usuario[1,1]<-'2025001'
	usuario[1,2]<-'Luis Monterroso'
	usuario[1,3]<-'202500066'
	usuario[1,4]<-'50110425'
	usuario[1,5]<-'lmonterroso@gmail.com'
	usuario[1,6]<-'25/10/2025'
	usuario[1,7]<-'0'
	// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// ID                         TITULO                                     AUTOR                       GENERO/CATEGORIA        AÑO
	libro[1,1]<-'100'
	libro[1,2]<-'El coronel no tiene quien le escriba'
	libro[1,3]<-'Garcia Marquez'
	libro[1,4]<-'Novela'
	libro[1,5]<-'1961'
	libro_ejemplares[1] <- 1
	libro_state[1] <- Verdadero
	// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// CODIGO DE LIBRO            ID              ESTADO (DISPONIBLE-PRESTADO-RESERVADO)
	ejemplares[1,1]<-'1000'
	ejemplares[1,2]<-'100'
	ejemplares[1,3]<-'DISPONIBLE'
	Definir op Como Entero
	op1 <- 0
	Mientras op1<>5 Hacer
		Limpiar Pantalla
		Escribir '===================================='
		Escribir '  SISTEMA DE GESTIÓN DE BIBLIOTECA  '
		Escribir '===================================='
		Escribir ' 1. Gestión de Libros'
		Escribir ' 2. Gestión de Usuarios'
		Escribir ' 3. Préstamos y Devoluciones'
		Escribir ' 4. Reportes'
		Escribir ' 5. Salir'
		Escribir '===================================='
		Escribir 'Ingrese opción: '
		Leer op1
		Según op1 Hacer
			1:
				Limpiar Pantalla
				cant_libros <- menu_libros(libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
			2:
				Limpiar Pantalla
				cant_usuarios <- menu_usuarios(usuario,cant_usuarios)
			3:
				Limpiar Pantalla
				cant_prestamos <- menu_prestamos(prestamo,cant_prestamos, usuario, cant_usuarios,libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
			4:
				Limpiar Pantalla
			5:
				// NADA
			De Otro Modo:
				Escribir 'OPCION NO VALIDA'
				Escribir '------------------------------------------'
				Escribir 'Presione ENTER para volver al menu inicial'
				Leer enter
		FinSegún
	FinMientras
	Escribir 'VUELVA PRONTO!'
FinAlgoritmo

// MENU DE LIBROS ////////////////////////////////////////////////////////////////////
Función cant_libros <- menu_libros(libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
	cant_libros <- cant_libros
	Definir op Como Entero
	op2 <- 0
	Mientras op2<>5 Hacer
		Limpiar Pantalla
		Escribir '===================================='
		Escribir '         GESTIÓN DE LIBROS          '
		Escribir '===================================='
		Escribir '1. Agregar libro'
		Escribir '2. Buscar libro'
		Escribir '3. Eliminar libro'
		Escribir '4. Listar libros'
		Escribir '5. Salir al menu principal'
		Escribir '===================================='
		Escribir 'Ingrese opción: '
		Leer op2
		Según op2 Hacer
			1:
				Limpiar Pantalla
				cant_libros <- agregar_libro(libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
				op2 <- 5
			2:
				Limpiar Pantalla
				codigo_libro <- buscar_libro(libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
			3:
				
			4:
				Limpiar Pantalla
				cant_libros <- listar_libros(libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
				op2 <- 5
			5:
				// NADA
			De Otro Modo:
				Escribir 'OPCION NO VALIDA'
				Escribir '----------------------------------------------'
				Escribir 'Presione ENTER para volver al menu de libros.'
				Leer enter
		FinSegún
	FinMientras
FinFunción

// LIBROS // AGREGAR ///////////////////////////////////////////////////
Función cant_libros <- agregar_libro(libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
	cant_libros <- cant_libros
	Definir op3 Como Entero
	Definir op4 Como Entero
	Definir titulo_i Como Cadena
	Definir id_i Como Entero
	Definir id2_i Como Entero
	Definir id_b Como Cadena
	Definir autor_i Como Cadena
	Definir genero_i Como Cadena
	Definir anio_i Como Cadena
	Definir copias Como Entero
	Definir error Como Lógico
	copias <- 0
	error <- Verdadero
	Mientras error=Verdadero Hacer
		op3 <- 0
		op4 <- 0
		Escribir '============  AGREGANDO LIBRO  ============'
		Escribir ' Elegir una opcion...'
		Escribir ' 1. Agregar un libro nuevo.'
		Escribir ' 2. Agregar una copia de un libro.'
		Leer op3
		Si op3=1 O op3=2 Entonces
			Si op3=1 Entonces
				Escribir '============  NUEVO LIBRO  ============'
				Escribir ' Ingrese el titulo del libro...'
				Leer titulo_i
				Escribir ' Ingrese el autor del libro...'
				Leer autor_i
				Escribir ' Ingrese el año del libro...'
				Leer anio_i
				Mientras op4<1 O op4>6 Hacer
					Escribir ' Elegir la categoria o genero del libro...'
					Escribir ' 1. ciencia ficcion'
					Escribir ' 2. novela'
					Escribir ' 3. thrillers'
					Escribir ' 4. bibliografico'
					Escribir ' 5. enciclopedia'
					Escribir ' 6. ensayo'
					Leer op4
					Según op4 Hacer
						1:
							genero_i <- 'ciencia ficcion'
						2:
							genero_i <- 'novela'
						3:
							genero_i <- 'thrillers'
						4:
							genero_i <- 'bibliografico'
						5:
							genero_i <- 'enciclopedia'
						6:
							genero_in <- 'ensayo'
						De Otro Modo:
							Escribir 'OPCION NO VALIDA'
							Escribir '----------------------------------------------'
					FinSegún
				FinMientras
				id_i <- (100+cant_libros)
				id2_i <- (1000+cant_libros)
				cant_libros <- cant_libros+1
				
				libro[cant_libros,1]<-ConvertirATexto(id_i)
				libro[cant_libros,2]<-titulo_i
				libro[cant_libros,3]<-autor_i
				libro[cant_libros,4]<-genero_i
				libro[cant_libros,5]<-anio_i
				libro_ejemplares[cant_libros] <- 1
				libro_state[cant_libros] <- Verdadero
				ejemplares[cant_libros,1] <- ConvertirATexto(id2_i)
				ejemplares[cant_libros,2] <- libro[cant_libros,1]
				ejemplares[cant_libros,3] <- "DISPONIBLE"
				error <- Falso
				Escribir '-----------------------------------------------------------'
				Escribir '|  LIBRO '+libro[cant_libros,2]+" "+libro[cant_libros,1]+' AGREGADO EXITOSAMENTE  '
				Escribir '-----------------------------------------------------------'
				Escribir 'Presione ENTER para continuar...'
				Leer enter
			SiNo
				Escribir '============  AGREGAR COPIA DE LIBRO  ============'
				Escribir ' Ingrese el id del libro...'
				Leer id_b
				Para i<-1 Hasta (cant_libros) Con Paso 1 Hacer
					Si libro[i,1]=id_b Entonces
						Mientras op4<>1 Y op4<>2 Hacer
							Escribir ' Desea agregar una copia del libro: '+libro[i,2]+' ?'
							Escribir ' 1. Si'
							Escribir ' 2. No'
							Leer op4
							Según op4 Hacer
								1:
									id2_i <- (1000+cant_libros)
									cant_libros <- cant_libros+1
									
									libro_ejemplares[i] <- (libro_ejemplares[i]+1)
									ejemplares[cant_libros,1]<-ConvertirATexto(id2_i)
									ejemplares[cant_libros,2]<-id_b
									ejemplares[cant_libros,3]<-'DISPONIBLE'
									error <- Falso
									Escribir '-----------------------------------------------------------'
									Escribir '|  COPIA DEL LIBRO '+libro[i,2]+' AGREGADO EXITOSAMENTE  '
									Escribir '-----------------------------------------------------------'
									Escribir 'Presione ENTER para continuar...'
									Leer enter
								2:
									// NADA
								De Otro Modo:
									Escribir 'OPCION NO VALIDA'
									Escribir '----------------------------------------------'
							FinSegún
							error <- Falso
						FinMientras
					FinSi
				FinPara
				Si error Entonces
					Escribir 'EL LIBRO CON ESTE ID NO EXISTE'
					Escribir '-------------------------------------------------------------'
				FinSi
			FinSi
		SiNo
			Escribir 'OPCION NO VALIDA'
			Escribir '----------------------------------------------'
			Escribir 'Presione ENTER para volver a intentarlo...'
			Leer enter
		FinSi
	FinMientras
FinFunción
// LISTAR //////////////////////////////////////////////////////////////////////////////
Funcion cant_libros <- listar_libros(libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
	cant_libros <- cant_libros
	Para i<-1 Hasta (cant_libros) Con Paso 1 Hacer
		
		si libro_ejemplares[i] <> 0
			Escribir "=================================================="
			Escribir "CODIGO: "+libro[i,1]
			Escribir "Titulo: "+libro[i,2]
			Escribir "Autor: "+libro[i,3]
			Escribir "Categoría: ",libro[i,4]
			Escribir "Año: ",libro[i,5]
			Escribir "Numero de ejemplares disponibles: ",libro_ejemplares[i]
			Escribir '----------------------------------------------'
		FinSi
		Para j <- 1 Hasta (cant_libros) Con Paso 1 Hacer
			si ejemplares[j,2] = libro[i,1]
				Escribir ejemplares[j,1]+" - "+ejemplares[j,3]
			FinSi
		FinPara
	FinPara
	Escribir '----------------------------------------------'
	Escribir 'Presione ENTER para volver a intentarlo...'
	Leer enter
FinFuncion
// BUSCAR LIBRO /////////////////////////////////////////////////////////////////////
Funcion codigo_libro <- buscar_libro(libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
	op2 <- 0
	Definir error Como Logico
	error <- Verdadero
	
	Mientras op2 = 0 Hacer
		Escribir "Buscar libro..."
		
		Leer busqueda
		busqueda <- Mayusculas(busqueda)	
		
		Para i<-1 Hasta cant_libros Con Paso 1 Hacer
			titulo_actual <- Mayusculas(libro[i,2])
			Para k <- 0 Hasta Longitud(titulo_actual) - Longitud(busqueda) + 1 Hacer
				Si Subcadena(titulo_actual, k, k + Longitud(busqueda) - 1) = busqueda Entonces
					encontrado <- Verdadero
					Escribir "--------------------------------------------------------------------"
					Escribir " Este es el libro que buscas? :", libro[i,2]
					Escribir "--------------------------------------------------------------------"
					Escribir " 1.Si"
					Escribir " 2.No"
					Leer op2
					Si op2 = 1
						codigo_libro <- libro[i,1]
					SiNo
						op2 <- 0 
					FinSi
					error <- Falso
					op2 = 10
				FinSi
			FinPara
		FinPara
		si error 
			Escribir " NO HAY NINGUNA COINCIDENCIA"
			Escribir "--------------------------------------------------------------------"
			op2 <- 0
		FinSi
	FinMientras
	
	Escribir 'Presione ENTER para volver.'
	Leer enter
FinFuncion
// MENU DE USUARIOS ////////////////////////////////////////////////////////////////////
Función cant_usuarios <- menu_usuarios(usuario,cant_usuarios)
	cant_usuarios <- cant_usuarios
	Definir op2 Como Entero
	op2 <- 0
	Mientras op2<>5 Hacer
		Limpiar Pantalla
		Escribir '===================================='
		Escribir '        GESTIÓN DE USUARIOS        '
		Escribir '===================================='
		Escribir '1. Agregar usuario'
		Escribir '2. Editar usuarios'
		Escribir '3. Listar usuarios'
		Escribir '4. Datos de usuario'
		Escribir '5. Salir al menu principal'
		Escribir '===================================='
		Escribir 'Ingrese opción: '
		Leer op2
		Según op2 Hacer
			1:
				Limpiar Pantalla
				cant_usuarios <- agregar_usuario(usuario,cant_usuarios)
				op2 <- 5
			2:
				Limpiar Pantalla
			3:
				Limpiar Pantalla
			4:
				Limpiar Pantalla
				datos_usuario(usuario,cant_usuarios)
				op2 <- 5
			5:
				// NADA
			De Otro Modo:
				Escribir 'OPCION NO VALIDA'
				Escribir '----------------------------------------------'
				Escribir 'Presione ENTER para volver al menu de usuarios.'
				Leer enter
		FinSegún
	FinMientras
FinFunción

// USUARIOS // AGREGAR /////////////////////////////////////////////////
Función cant_usuarios <- agregar_usuario(usuario,cant_usuarios)
	cant_usuarios <- cant_usuarios
	Definir op3 Como Entero
	Definir error Como Lógico
	error <- Verdadero
	Definir nombre_i Como Cadena
	Definir identificador_i Como Cadena
	Definir telefono_i Como Cadena
	Definir correo_i Como Cadena
	Definir fecha_i Como Cadena
	Mientras error=Verdadero Hacer
		op3 <- 0
		Escribir '============  AGREGANDO USUARIO  ============'
		// Escribir "========================================="
		Escribir 'Ingrese el nombre del usuario...'
		Leer nombre_i
		Mientras (op3<>1 Y op3<>2) Hacer
			Escribir 'Elija el tipo de identificador unico...'
			Escribir '1. DPI'
			Escribir '2. Carnet'
			Leer op3
			Si op3=1 O op3=2 Entonces
				Mientras error=Verdadero Hacer
					Si op3=1 Entonces
						Escribir 'Ingrese el DPI del usuario...'
						Leer identificador_i
						Si Longitud(identificador_i)=13 Entonces
							error <- Falso
						SiNo
							Escribir 'SE REQUIERE QUE EL DPI TENGA 13 CARACTERES'
							Escribir '------------------------------------------------'
						FinSi
					SiNo
						Escribir 'Ingrese el carnet del usuario...'
						Leer identificador_i
						Si Longitud(identificador_i)=9 Entonces
							error <- Falso
						SiNo
							Escribir 'SE REQUIERE QUE EL CARNET TENGA 9 CARACTERES'
							Escribir '------------------------------------------------'
						FinSi
					FinSi
				FinMientras
			SiNo
				Escribir 'OPCION NO VALIDA'
				Escribir '----------------------------------------------'
			FinSi
			Si op3=1 Entonces
				Para i<-1 Hasta (cant_usuarios) Con Paso 1 Hacer
					Si usuario[i,3]=identificador_i Entonces
						Escribir 'EL USUARIO CON ESTE DPI YA SE ENCUENTRA REGISTRADO'
						Escribir '----------------------------------------------------'
						error <- Verdadero
					FinSi
				FinPara
			FinSi
			Si op3=2 Entonces
				Para i<-1 Hasta (cant_usuarios) Con Paso 1 Hacer
					Si usuario[i,3]=identificador_i Entonces
						Escribir 'EL USUARIO CON ESTE CARNET YA SE ENCUENTRA REGISTRADO'
						Escribir '-------------------------------------------------------'
						error <- Verdadero
					FinSi
				FinPara
			FinSi
		FinMientras
		Si !error Entonces
			Escribir 'Ingrese el telefono del usuario...'
			Leer telefono_i
			Escribir 'Ingrese el correo del usuario...'
			Leer correo_i
			Escribir 'Ingrese la fecha de registro del usuario...'
			Leer fecha_i
			// REGISTRANDO USUARIO
			cant_usuarios <- (cant_usuarios+1)
			id_i <- (2025000+cant_usuarios)
			Escribir cant_usuarios
			usuario[cant_usuarios,1]<-ConvertirATexto(id_i)
			usuario[cant_usuarios,2]<-nombre_i
			usuario[cant_usuarios,3]<-identificador_i
			usuario[cant_usuarios,4]<-telefono_i
			usuario[cant_usuarios,5]<-correo_i
			usuario[cant_usuarios,6]<-fecha_i
			usuario[cant_usuarios,7]<-'0'
			Escribir '-------------------------------------'
			Escribir '|  USUARIO REGISTRADO EXITOSAMENTE  |'
			Escribir '-------------------------------------'
			Escribir 'Presione ENTER para continuar...'
			Leer enter
		FinSi
	FinMientras
FinFunción

// DATOS /////////////////////////////////////////////////
Función datos_usuario(usuario,cant_usuarios)
	Definir identificador_b Como Cadena
	Definir error Como Lógico
	error <- Verdadero
	Escribir '=====================  DATOS DE USUARIO  ====================='
	Escribir 'Ingrese el identificador del usuario DPI/Carnet de usuario...'
	Leer identificador_b
	Si Longitud(identificador_b)=9 O Longitud(identificador_b)=13 Entonces
		Para i<-1 Hasta (cant_usuarios) Con Paso 1 Hacer
			Si usuario[i,3]=identificador_b Entonces
				Escribir '--------------------------------------------------------------'
				Escribir ' ID: '+usuario[i,1]
				Escribir ' Identificador: '+usuario[i,3]
				Escribir ' Nombre: '+usuario[i,2]
				Escribir ' Telefono: '+usuario[i,4]
				Escribir ' Correo: '+usuario[i,5]
				Escribir ' Fecha de registro: '+usuario[i,6]
				Escribir '--------------------------------------------------------------'
				Escribir ' Prestamos pendientes: '+usuario[i,7]
				Escribir '--------------------------------------------------------------'
				error <- Falso
			FinSi
		FinPara
		Si error Entonces
			Escribir 'EL USUARIO CON ESTE IDENTIFICADOR NO SE ENCUENTRA REGISTRADO'
			Escribir '-------------------------------------------------------------'
		FinSi
	SiNo
		Escribir 'ESTE IDENTIFICADOR NO ES VALIDO'
		Escribir '----------------------------------------------------'
	FinSi
	Escribir 'Presione ENTER para continuar...'
	Leer enter
FinFunción
// PRESTAMOS // MENU /////////////////////////////////////////////////////////////////////////////////////////////
Funcion cant_prestamos <- menu_prestamos(prestamo,cant_prestamos, usuario, cant_usuarios,libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
	cant_prestamos <- cant_prestamos
	Mientras op2<>5 Hacer
		Limpiar Pantalla
		Escribir '===================================='
		Escribir '      PRESTAMOS Y DEVOLUCIONES      '
		Escribir '===================================='
		Escribir '1. Prestar libro.'
		Escribir '2. Devolver lbro.'
		Escribir '3. Gestionar Multas'
		Escribir '4. Gestionar prestamos activos'
		Escribir '5. Listado de prestamos'
		Escribir '===================================='
		Escribir 'Ingrese opción que desa realizar: '
		Leer op2
		Según op2 Hacer
			1: 
				cant_prestamos <- prestar_libro(prestamo,cant_prestamos,usuario,cant_usuarios,libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
				op2 <- 5
			5:
				// NADOTA
			De Otro Modo:
				Escribir 'OPCION NO VALIDA'
				Escribir '----------------------------------------------'
		FinSegun
	FinMientras
FinFuncion
// PRESTAR LIBRO //////////////////////////////////////////////////////////
Funcion cant_prestamos <- prestar_libro(prestamo,cant_prestamos, usuario, cant_usuarios,libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
	cant_prestamos <- cant_prestamos
	Definir identificador_b Como Cadena
	Definir id_codigo_b Como Cadena
	Definir error Como Lógico
	Definir autorizado Como Logico
	autorizado <- Falso
	error <- Verdadero
	Escribir '=====================  PRESTAMO DE LIBROS  ====================='
	Escribir 'Ingrese el identificador del usuario DPI/Carnet de usuario...'
	Leer identificador_b
	Si Longitud(identificador_b)=9 O Longitud(identificador_b)=13 Entonces
		Para i<-1 Hasta (cant_usuarios) Con Paso 1 Hacer
			Si usuario[i,3]=identificador_b Entonces
				si ConvertirANumero(usuario[i,7]) < 3
					id_usuario_i <- usuario[i,1]
					Escribir "Bienvenido "+usuario[i,2]
					indice_usuario <- i
					error <- Falso
				SiNo
					Escribir "Usted no puede exceder los 3 prestamos pendientes."
					error <- Falso
				FinSi
			FinSi
		FinPara
		Si error Entonces
			Escribir ' EL USUARIO CON ESTE IDENTIFICADOR NO SE ENCUENTRA REGISTRADO'
			Escribir '--------------------------------------------------------------'
		FinSi
	SiNo
		Escribir 'ESTE IDENTIFICADOR NO ES VALIDO'
		Escribir '----------------------------------------------------'
	FinSi
	Si !error
		codigo_libro <- buscar_libro(libro,libro_state,libro_ejemplares,ejemplares,cant_libros)
		Para i<-1 Hasta (cant_libros) Con Paso 1 Hacer
			Si libro[i,1] = codigo_libro Entonces
				Si libro_ejemplares[i] > 0
					indice_libro <- i
					autorizado <- Verdadero
				SiNo
					Escribir 'NO HAY COPIAS DISPONIBLES'
				FinSi
			FinSi
		FinPara
	FinSi
	Si autorizado
		Escribir "= INGRESO DE FECHA INICIAL ="
		Escribir "Ingreso de año"
		Leer anio_i 
		Escribir "Ingreso de mes"
		Leer mes_i
		Escribir "Ingreso de día"
		Leer dia_i
		
		// id_prestamos_i <- 900+cant_prestamos
		//cant_prestamos <- cant_prestamos+1
		//prestamo[cant_prestamos,1] <- ConvertirATexto(id_prestamos_i)
		//prestamo[cant_prestamos,2] <- usuario[indice_usuairio,1]
		//prestamo[cant_prestamos,3] <- "2025001"
		//prestamo[cant_prestamos,4] <- "12/10/2025"
		//prestamo[cant_prestamos,5] <- "19/10/2025"
		//prestamo[cant_prestamos,6] <- "ACTIVO"
		//prestamo[cant_prestamos,7] <- "NO" // 
		Escribir usuario[indice_usuario,2]+"ESTE ES TU LIBRO"+libro[indice_libro,2]
	FinSi
	Escribir 'Presione ENTER para continuar...'
	Leer enter	
FinFuncion

	