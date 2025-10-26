Algoritmo gestion_biblioteca
	Definir usuario Como Cadena
	Dimension usuario[1,7]
	Definir cant_usuarios como entero
	cant_usuarios <- 1
	//     ID                        NOMBRE                          CARNET                    NUMERO                        MAIL                                  FECHA DE INICIO            PRESTAMOS ACTIVOS      
	usuario[1,1] <- "2025001"; usuario[1,2] <- "Luis Monterroso"; usuario[1,3] <- "202500066"; usuario[1,4] <- "50110425"; usuario[1,5] <- "lmonterroso@gmail.com"; usuario[1,6] <- "25/10/2025"; usuario[1,7] <- "0";
	
	definir op como entero
	op1 = 0
	
	Mientras op1 <> 5
		Borrar Pantalla
		Escribir "===================================="
		Escribir "  SISTEMA DE GESTIÓN DE BIBLIOTECA  "
		Escribir "===================================="
		Escribir "1. Gestión de Libros"
		Escribir "2. Gestión de Usuarios"
		Escribir "3. Préstamos y Devoluciones"
		Escribir "4. Reportes"
		Escribir "5. Salir"
		Escribir "===================================="
		Escribir "Ingrese opción: "; Leer op1
		
		Segun op1 Hacer
			1:
				Borrar Pantalla
				menu_libros
			2:
				Borrar Pantalla
				menu_usuarios(usuario)
			3:
				Borrar Pantalla
			4:
				Borrar Pantalla
			5:
				// NADA
			De Otro Modo:
				Escribir "OPCION NO VALIDA"
				Escribir "------------------------------------------"
				Escribir "Presione ENTER para volver al menu inicial"
				leer enter
		FinSegun
	FinMientras
	Escribir "VUELVA PRONTO!"
FinAlgoritmo
// MENU DE LIBROS ////////////////////////////////////////////////////////////////////
Funcion menu_libros
	definir op como entero
	op2 = 0
FinFuncion
// MENU DE USUARIOS ////////////////////////////////////////////////////////////////////
Funcion menu_usuarios(usuario)
	definir op como entero
	op2 = 0
	
	Mientras op2 <> 5
		Borrar Pantalla
		Escribir "===================================="
		Escribir "        GESTIÓN DE USUSARIOS        "
		Escribir "===================================="
		Escribir "1. Agregar usuario"
		Escribir "2. Editar usuarios"
		Escribir "3. Listar usuarios"
		Escribir "4. Datos de usuario"
		Escribir "5. Salir al menu principal"
		Escribir "===================================="
		Escribir "Ingrese opción: "; Leer op2
		
		Segun op2 Hacer
			1:
				Borrar Pantalla
				agregar_usuario(usuario)
			2:
				Borrar Pantalla
				
			3:
				Borrar Pantalla
			4:
				Borrar Pantalla
			5:
				// NADA
			De Otro Modo:
				Escribir "OPCION NO VALIDA"
				Escribir "----------------------------------------------"
				Escribir "Presione ENTER para volver al menu de usuario."
				leer enter
		FinSegun
	FinMientras
	
FinFuncion
// USUARIOS // AGREGAR /////////////////////////////////////////////////
Funcion agregar_usuario (usuario)
	definir op3 Como Entero
	definir error Como Logico
	error = Verdadero
	definir nombre_i Como cadena
	definir identificador_i Como cadena
	definir telefono_i como cadena
	definir correo_i como cadena
	definir fecha_i como cadena
	
	Mientras error = Verdadero
		op3 <- 0
		Escribir "============  AGREGANDO USUARIO  ============"
		// Escribir "========================================="
		Escribir "Ingrese el nombre del usuario..."
		Leer nombre_i
		mientras (op3 <> 1 y op3 <> 2)
			Escribir "Elija el tipo de identificador unico..."
			Escribir "1. DPI"
			Escribir "2. Carnet"
			Leer op3
			si op3 = 1 o op3 = 2
				Mientras error = Verdadero
					si op3 = 1
						Escribir "Ingrese el DPI del usuario..."
						Leer identificador_i
						si Longitud(identificador_i) = 13
							error <- falso
						SiNo
							Escribir "SE REQUIERE QUE EL DPI TENGA 13 CARACTERES"
							Escribir "------------------------------------------------"
						FinSi
					sino 
						Escribir "Ingrese el carnet del usuario..."
						Leer identificador_i
						si Longitud(identificador_i) = 9
							error <- falso
						SiNo
							Escribir "SE REQUIERE QUE EL CARNET TENGA 9 CARACTERES"
							Escribir "------------------------------------------------"
						FinSi
					FinSi
				FinMientras
			SiNo
				Escribir "OPCION NO VALIDA"
				Escribir "----------------------------------------------"
			FinSi
			
			si op3 = 1
				Para i <- 1 Hasta (cant_usuarios+1) Con Paso 1 Hacer
					si usuario[i,3] = identificador_i
						Escribir "EL USUARIO CON ESTE DPI YA SE ENCUENTRA REGISTRADO"
						Escribir "----------------------------------------------------"
						error <- verdadero
					FinSi
				FinPara
			FinSi
			Si op3 = 2
				Para i <- 1 Hasta (cant_usuarios+1) Con Paso 1 Hacer
					si usuario[i,3] = identificador_i
						Escribir "EL USUARIO CON ESTE CARNET YA SE ENCUENTRA REGISTRADO"
						Escribir "-------------------------------------------------------"
						error <- verdadero
					FinSi
				FinPara
			FinSi
		FinMientras
		si !error
			Escribir "Ingrese el telefono del usuario..."
			Leer telefono_i
			Escribir "Ingrese el correo del usuario..."
			Leer correo_i
			Escribir "Ingrese la fecha de registro del usuario..."
			Leer fecha_i
			// REGISTRANDO USUARIO
			cant_usuarios <- cant_usuarios+1
			id_i <- (2025000 + cant_usuarios)
			
			usuario[cant_usuarios,1] <- ConvertirATexto(id_i); 
			usuario[cant_usuarios,2] <- nombre_i; 
			usuario[cant_usuarios,3] <- identificador_i; 
			usuario[cant_usuarios,4] <- telefono_i; 
			usuario[cant_usuarios,5] <- correo_i; 
			usuario[cant_usuarios,6] <- fecha_i; 
			usuario[cant_usuarios,7] <- "0";
			Escribir "------------------------------------"
			Escribir "| USUARIO REGISTRADO EXITOSAMENTE  |"
			Escribir "------------------------------------"
			Escribir "Presione ENTER para continuar..."
			Leer enter
		FinSi
	FinMientras
FinFuncion
// ////////////////////////////////////////////////////////////////////

// ////////////////////////////////////////////////////////////////////

// ////////////////////////////////////////////////////////////////////

