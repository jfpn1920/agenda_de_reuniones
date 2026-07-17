Algoritmo agenda_de_reuniones
	Definir opcion, totalReuniones Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir encontrado Como Logico
	Dimension id[100]
	Dimension titulo[100]
	Dimension fecha[100]
	Dimension hora[100]
	Dimension lugar[100]
	Dimension organizador[100]
	Dimension participantes[100]
	totalReuniones <- 0
	//----------------------------------------//
	//--|menu_principal_agenda_de_reuniones|--//
	//----------------------------------------//	
	Repetir
		Escribir "menu principal agenda de reuniones"
		Escribir "1) registrar reunión"
		Escribir "2) editar reunión"
		Escribir "3) eliminar reunión"
		Escribir "4) buscar reunión"
		Escribir "5) listar reuniones"
		Escribir "6) ver detalles de la reunión"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_reunion|--//
			//-----------------------//
			1:
				Escribir "registrar reunion"
				id[totalReuniones + 1] <- totalReuniones + 1
				Escribir "id asignado automáticamente: ", id[totalReuniones + 1]
				Escribir "ingrese el título:"
				Leer titulo[totalReuniones + 1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalReuniones + 1]
				Escribir "ingrese la hora:"
				Leer hora[totalReuniones + 1]
				Escribir "ingrese el lugar:"
				Leer lugar[totalReuniones + 1]
				Escribir "ingrese el organizador:"
				Leer organizador[totalReuniones + 1]
				Escribir "ingrese los participantes:"
				Leer participantes[totalReuniones + 1]
				totalReuniones <- totalReuniones + 1
				Escribir "reunión registrada correctamente."
			//--------------------//
			//--|editar_reunion|--//
			//--------------------//
			2:
				Escribir "editar reunion"
				Si totalReuniones = 0 Entonces
					Escribir "no hay reuniones registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalReuniones Hacer
						Escribir id[i], " | ", titulo[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", organizador[i], " | ", participantes[i]
					FinPara
					Escribir "ingrese el id de la reunión que desea editar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalReuniones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo título:"
							Leer titulo[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese la nueva hora:"
							Leer hora[i]
							Escribir "ingrese el nuevo lugar:"
							Leer lugar[i]
							Escribir "ingrese el nuevo organizador:"
							Leer organizador[i]
							Escribir "ingrese los nuevos participantes:"
							Leer participantes[i]
							Escribir "reunión editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una reunión con ese ID."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_reunion|--//
			//----------------------//
			3:
				Escribir "eliminar reunion"
				Si totalReuniones = 0 Entonces
					Escribir "no hay reuniones registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalReuniones Hacer
						Escribir id[i], " | ", titulo[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", organizador[i], " | ", participantes[i]
					FinPara
					Escribir "ingrese el id de la reunión que desea eliminar:"
					Leer idBuscar
					Si idBuscar <= 0 Entonces
						Escribir "id no válido."
					SiNo
						encontrado <- Falso
						Para i <- 1 Hasta totalReuniones Hacer
							Si id[i] = idBuscar Entonces
								encontrado <- Verdadero
								Si i < totalReuniones Entonces
									Para j <- i Hasta totalReuniones - 1 Hacer
										id[j] <- id[j + 1]
										titulo[j] <- titulo[j + 1]
										fecha[j] <- fecha[j + 1]
										hora[j] <- hora[j + 1]
										lugar[j] <- lugar[j + 1]
										organizador[j] <- organizador[j + 1]
										participantes[j] <- participantes[j + 1]
									FinPara
								FinSi
								totalReuniones <- totalReuniones - 1
								Escribir "reunión eliminada correctamente."
							FinSi
						FinPara
						Si encontrado = Falso Entonces
							Escribir "no se encontró una reunión con ese id."
						FinSi
					FinSi
				FinSi
			//--------------------//
			//--|buscar_reunion|--//
			//--------------------//
			4:
				Escribir "buscar reunion"
				Escribir "ingrese el id de la reunión:"
				Leer idBuscar
				Escribir "función de búsqueda disponible."
			//----------------------//
			//--|listar_reuniones|--//
			//----------------------//
			5:
				Escribir "listar reuniones"
				Si totalReuniones = 0 Entonces
					Escribir "no hay reuniones registradas."
				SiNo
					Escribir "datos registrados en lista"
					Para i <- 1 Hasta totalReuniones Hacer
						Escribir id[i], " | ", titulo[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", organizador[i], " | ", participantes[i]
					FinPara
				FinSi
			//------------------------------//
			//--|ver_detalles_de_reunion|--//
			//------------------------------//
			6:
				Escribir "ver detalles de la reunion"
				Si totalReuniones = 0 Entonces
					Escribir "no hay reuniones registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalReuniones Hacer
						Escribir id[i], " | ", titulo[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", organizador[i], " | ", participantes[i]
					FinPara
					Escribir "ingrese el id de la reunión:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalReuniones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la reunion"
							Escribir "id: ", id[i]
							Escribir "título: ", titulo[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora: ", hora[i]
							Escribir "lugar: ", lugar[i]
							Escribir "organizador: ", organizador[i]
							Escribir "participantes: ", participantes[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una reunión con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//				
			7:
				Escribir "gracias por utilizar la Agenda de Reuniones."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo