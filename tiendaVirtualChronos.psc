Algoritmo tienda_virtual_agendas
	// Definición de Variables
	Definir q_ag_mod1,q_ag_mod2, q_ag_mod3, q_ag_compradas, ag_mod1, ag_mod2, ag_mod3 Como Entero
	Definir regalos_m1, regalos_mod2, regalos_mod3, regalos, mod_agenda, medio_de_pago, zona_envio Como Entero;
	Definir subtotal_1, subtotal_2, subtotal_3, total_sin_descuento, descuento, cuota, total_a_pagar, costo_envio Como Real;
	Definir respuesta_carrito, respuesta_compra, email, nombre, apellido, celular, dni, calle, altura,cp, ciudad, provincia Como Caracter;
	// Definición de Constantes
	// Precio de la Agenda
	PRECIO_AGENDA<- 18000;
	// Nombre de Modelos de Agendas
	MODELO_1 <- "Blue Woman";
	MODELO_2 <- "Gold Woman";
	MODELO_3 <- "Pink Woman";
	// Descuentos segun Medio de Pago
	EFECTIVO_DESCUENTO<- 0.15;
	TRANSFERENCIA_DESCUENTO<- 0.10;
	DEBITO_DESCUENTO <- 0.05;
	// Cuotas Tarjeta de Crédito
	CUOTA_CREDITO <- 3;
	// Costos de Envío
	MIN_ENVIO_GRATIS <- 25000;
	ENVIO_ZONA1 <- 1500;
	ENVIO_ZONA2 <- 2000;
	ENVIO_ZONA3 <- 3000;
	// Inicializacion de variables
	total_sin_descuento <- 0;
	total_a_pagar <- 0;
	regalos <- 0;
	
	
	Mostrar " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
	Mostrar " * Bienvenido a Chronos - Tienda Online *";
	Mostrar " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
	Mostrar " ----------------------------------------------------------";
	Mostrar "  Nueva Colección ~ Agendas Premium 2024: Women in colours ";
	Mostrar " ----------------------------------------------------------";
	Mostrar "        ~~~~~~~~~~~~    ~~~~~~~~~~~~    ~~~~~~~~~~~~";
	Mostrar "         Blue Woman      Gold Woman      Pink Woman ";
	Mostrar "        ~~~~~~~~~~~~    ~~~~~~~~~~~~    ~~~~~~~~~~~~";
	Mostrar "";
	Mostrar "  Descripción";
	Mostrar " -------------";
	Mostrar "    * Agenda a todo color - Tapa dura";
	Mostrar "    * Separadores mensuales con solapa";
	Mostrar "    * 2 días por hoja";
	Mostrar "    * Hoja de gastos y tracker mensual - Indice - Contraseñas - Notas";
	Mostrar "    * Incluye: Stickers - Sobre de cartulina - Elástico - Señalador";
	Mostrar "    * Medida: 19 x 22,5cm";
	Mostrar "    * 200 páginas"
	Mostrar "";
	
	// Selección del producto
	Mostrar " ----------------------";
	Mostrar " * Carrito de Compras *";
	Repetir
		Mostrar " -------------------------------------------------";
		Escribir "  Agregá el modelo de agenda que deseás comprar:";
		Mostrar " -------------------------------------------------";
		Mostrar "    |1| Blue Woman";
		Mostrar "    |2| Gold Woman";
		Mostrar "    |3| Pink Woman";
		Mostrar " --------------------------------------------------";
		Leer mod_agenda;
		Segun mod_agenda Hacer
			1:
				Mostrar " -------------------------------------------------";
				Escribir "  Elegí la cantidad de agendas que querés comprar: "
				Mostrar " -------------------------------------------------";
				Leer q_ag_mod1;
				Mostrar " ==================================================";
				ag_mod1 <-  q_ag_mod1;
				subtotal_1 <- q_ag_mod1 * PRECIO_AGENDA;
				regalo_mod1 <- ag_mod1;
				Mostrar " Agregaste: ", q_ag_mod1, "u del Modelo: ", MODELO_1;
				Mostrar " ==================================================";
				Mostrar " Subtotal: $", subtotal_1;
				Mostrar " --------------------------------------------------";
				Mostrar "";
				Mostrar " *-----------------------------------------------------------------------------------*";
				Mostrar " * ¡Tenes un REGALO SORPRESA!                                                        *";
				Mostrar " *   - 5 planchas de stikers + 1 mini resaltador + Paper Flags Chronos x 50 unidades *"; 
				Mostrar " *-----------------------------------------------------------------------------------*";
				Mostrar "";
			2:
				Mostrar " -------------------------------------------------";
				Escribir "  Elegí la cantidad de agendas que querés comprar: "
				Mostrar " -------------------------------------------------";
				Leer q_ag_mod2;
				Mostrar " ==================================================";
				ag_mod2 <-  q_ag_mod2;
				subtotal_2 <- q_ag_mod2 * PRECIO_AGENDA;
				regalo_mod2 <- ag_mod2;
				Mostrar " Agregaste: ", q_ag_mod2, "u del Modelo: ", MODELO_2;
				Mostrar " ==================================================";
				Mostrar " Subtotal: $", subtotal_2;
				Mostrar " --------------------------------------------------";
				Mostrar "";
				Mostrar " *-----------------------------------------------------------------------------------*";
				Mostrar " * ¡Tenés un REGALO SORPRESA!                                                        *";
				Mostrar " *   - 5 planchas de stikers + 1 mini resaltador + Post-it Chronos x 50 unidades     *"; 
				Mostrar " *-----------------------------------------------------------------------------------*";
				Mostrar "";
			3:
				Mostrar " -------------------------------------------------";
				Escribir "  Elegí la cantidad de agendas que querés comprar: "
				Mostrar " -------------------------------------------------";
				Leer q_ag_mod3;
				Mostrar " ==================================================";
				ag_mod3 <-  q_ag_mod3;
				subtotal_3 <- q_ag_mod3 * PRECIO_AGENDA;
				regalo_mod1 <- ag_mod3;
				Mostrar " Agregaste: ", q_ag_mod3, "u del Modelo: ", MODELO_3;
				Mostrar " ==================================================";
				Mostrar " Subtotal: $", subtotal_3;
				Mostrar " --------------------------------------------------";
				Mostrar "";
				Mostrar " *-----------------------------------------------------------------------------------*";
				Mostrar " * ¡Tenés un REGALO SORPRESA!                                                        *";
				Mostrar " *   - 5 planchas de stikers + 1 mini resaltador +  1 WashiTape Chronos Glitter      *"; 
				Mostrar " *-----------------------------------------------------------------------------------*";
				Mostrar "";
		Fin Segun
		// Decisión: agregar o no más productos al carrito
		Escribir " ¿Deseas agregar más productos a tu carrito de compras? Si(s) o No (n)"
		Leer respuesta_carrito;
		Mostrar "";
	Hasta Que respuesta_carrito = "n"
	
	// Cálculo de cantidad de productos comprados
	q_ag_compradas <- q_ag_mod1 + q_ag_mod2 + q_ag_mod3;
	
	// Cálculo de la cantidad de regalos obtenidos
	regalos <- ag_mod1 + ag_mod2 + ag_mod3;
	
	// Cálculo del monto a pagar por los productos comprados
	total_sin_descuento <- subtotal_1 + subtotal_2 + subtotal_3;
	Mostrar " =======================";
	Mostrar "  Total a pagar: $", total_sin_descuento;
	Mostrar " =======================";
	Mostrar "";

	Escribir " ¿Deseas completar la compra? Si(s) o No (n)";
	Leer respuesta_compra;
	Borrar Pantalla;
	// Inicio de la Compra - Carga de datos del cliente
	Si respuesta_compra = "s" Entonces
		Mostrar " ------------------";
		Mostrar " * Iniciar Compra *";
		Mostrar " ------------------------------------------------";
		Mostrar " Por favor, ingrese los datos que le solicitamos ";
		Mostrar " ------------------------------------------------";
		Escribir " E-mail: ";
		Leer email;
		Mostrar " ------------------------------------------------";
		Escribir " Nombre: ";
		Leer nombre;
		Mostrar " ------------------------------------------------";
		Escribir " Apellido: "
		Leer apellido;
		Mostrar " ------------------------------------------------";
		Escribir " DNI:";
		Leer dni;
		Mostrar " ------------------------------------------------";
		Escribir " Número de celular: ";
		Leer celular;
		Mostrar " ------------------------------------------------";
		Escribir " Calle del domicilio de envío: ";
		Leer calle;
		Mostrar " ------------------------------------------------";
		Escribir " Número del domicilio de envío: ";
		Leer altura;
		Mostrar " ------------------------------------------------";
		Escribir " Código Postal: ";
		Leer cp;
		Mostrar " ------------------------------------------------";
		Escribir " Ciudad: ";
		Leer ciudad;
		Mostrar " ------------------------------------------------";
		Escribir " Provincia: ";
		Leer provincia;
		Mostrar " ------------------------------------------------";
		Esperar Tecla
		Borrar Pantalla
		
		// Selección del Medio de Pago
		Mostrar " ------------------";
		Mostrar " * Medios de Pago *"
		Mostrar " ---------------------------------------------------";
		Mostrar "  Podes abonar tu compra con:";
		Mostrar " ---------------------------------------------------";
		Mostrar "    |1| Efectivo - Descuento: 15% "
		Mostrar "    |2| Tarjeta de Débito - Descuento: 5%  "; 
		Mostrar "    |3| Tarjeta de Crédito - 3 Cuotas sin interés "; 
		Mostrar "    |4| Transferencia Bancaria - Descuento: 10% ";
		Mostrar " ---------------------------------------------------";
		Escribir "  Ingresá el medio de pago con el que querés pagar: ";
		Mostrar " ---------------------------------------------------";
		Leer medio_de_pago;
		
		// Análisis del descuento según el medio elegido
		Segun medio_de_pago Hacer
			1:
				descuento <- total_sin_descuento * EFECTIVO_DESCUENTO;
				total_a_pagar <- total_sin_descuento - descuento;
				Mostrar " ===================================================";
				Mostrar "  Descuento (Pago en Efectivo): $", descuento;
				Mostrar " ===================================================";
				Mostrar "  Total a Pagar (con descuento): $", total_a_pagar;
				Mostrar " ===================================================";
			2:
				descuento <- total_sin_descuento * DEBITO_DESCUENTO;
				total_a_pagar <- total_sin_descuento - descuento;
				Mostrar " ===================================================";
				Mostrar "  Descuento (Tarjeta de Débito): $", descuento;
				Mostrar " ===================================================";
				Mostrar "  Total a Pagar (con descuento): $", total_a_pagar;
				Mostrar " ===================================================";
			3:
				cuota <- total_sin_descuento / CUOTA_CREDITO;
				total_a_pagar <- total_sin_descuento;
				Mostrar " ===================================================";
				Mostrar "  Total a pagar $:", total_a_pagar, " en 3 cuotas de $", cuota, " c/u";
				Mostrar " ===================================================";
			4:
				descuento <- total_sin_descuento * TRANSFERENCIA_DESCUENTO;
				total_a_pagar <- total_sin_descuento - descuento;
				Mostrar " ===================================================";
				Mostrar "  Descuento (Transferencia Bancaria): $", descuento;
				Mostrar " ===================================================";
				Mostrar "  Total a Pagar: $", total_a_pagar;
				Mostrar " ===================================================";
		Fin Segun
		
		Esperar Tecla
		
		// Selección de la zona de residencia según monto para calcular el envío a domicilio
		Mostrar " ---------------------";
		Mostrar " * Envío a Domicilio *";
		Mostrar " -------------------------------------";
		// Análisis de los costos de los envíos según monto
		Si total_a_pagar < MIN_ENVIO_GRATIS Entonces
			Mostrar "  Las zonas de envío a domicilio son:";
			Mostrar " -------------------------------------";
			Mostrar "    |1| CABA";
			Mostrar "    |2| Gran Buenos Aires"; 
			Mostrar "    |3| Resto del País"; 
			Mostrar " -------------------------------------";
			Escribir "  Ingresá tu zona de residencia:";
			Mostrar " -------------------------------------";
			Leer zona_envio;
			Mostrar " -------------------------------------";
			Segun zona_envio Hacer
				1:
					costo_envío <- ENVIO_ZONA1;
					total_a_pagar = total_a_pagar + costo_envio;
				2:
					costo_envío <- ENVIO_ZONA2;
					total_a_pagar = total_a_pagar + costo_envio;
				3:
					costo_envío <- ENVIO_ZONA3;
					total_a_pagar = total_a_pagar + costo_envio;
			Fin Segun
			Mostrar "  Costo del Envío: $", costo_envio;
			Mostrar " =====================================";
			Mostrar "  Total a pagar (con envío):$ ", total_a_pagar;
			Mostrar " =====================================";
		SiNo
			Mostrar " * ¡GRATIS! *";
			Mostrar " -------------------------------------";
		Fin Si
		Esperar Tecla
		Borrar Pantalla
		
		// Resumen de la compra y datos cargados por el cliente
		Mostrar " ==========================================================";
		Mostrar "  Resumen de Compra";
		Mostrar " ----------------------------------------------------------";
		Mostrar "      * Cantidad de Productos:", q_ag_compradas;
		Mostrar "      * Regalos Sorpresa:", regalos;
		Mostrar "      * Total a pagar (con envio):$", total_a_pagar;
		Mostrar " ==========================================================";
		Mostrar "  Datos de Contacto";
		Mostrar " ----------------------------------------------------------";
		Mostrar "      * e-mail: ", email;
		Mostrar " ----------------------------------------------------------";
		Mostrar "  Datos del Destinatario";
		Mostrar " ----------------------------------------------------------";
		Mostrar "      * Nombre y Apellido: ", nombre, " ", apellido;
		mostrar "      * DNI: ", dni;
		Mostrar "      * Celular: (015) ", celular;
		Mostrar " ----------------------------------------------------------";
		Mostrar "  Datos del Domicilio de Envío";
		Mostrar " ----------------------------------------------------------";
		Mostrar "      * Calle: ", calle, "  N°: ", altura, "  CP: ", cp;
		Mostrar "      * Ciudad: ", ciudad, "  Provincia: ", provincia;
		Mostrar " ==========================================================";;
		Mostrar " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
		Mostrar " | IMPORTANTE: Ten enviaremos a tu e-email la factura digital y el número de seguimiento de tu pedido |";
		Mostrar " -~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
		Mostrar " *********************************";
		Mostrar " * ¡Muchas Gracias por tu compra!*";
		Mostrar " *********************************";
		Mostrar "";
	SiNo
		Borrar Pantalla
		Mostrar " +------------------------------------------------------+";
		Mostrar "   ¡ Esperamos volver a verte pronto en nuestra tienda !";
		Mostrar "   ¡ Muchas gracias por tu visita !';
		Mostrar " +------------------------------------------------------+";
		Mostrar " ";
	Fin Si
FinAlgoritmo

