         :-use_module(library(pce)).
:-use_module(library(pce_style_item)).
:-consult('base_conocimientos.pl').
:-pce_image_directory('../public/images/').


resource(logo,image,image('escudo_peru.jpg')).
resource(logo2,image,image('escudo_unasam.jpg')).
resource(logo3,image,image('escudo_unasam.jpg')).
resource(logo6,image,image('escudo_unasam.jpg')).


% --------------------------PARA EL MENU PRINCIPAL------------------------------------
start:-
    new(Home, dialog),
    new(W,  window('Diagnosticador de Depresión', size(900, 500))),
    new(Imagen,label(icon,resource(logo))),

    new(BtnIni,button('Usuario',and(message(@prolog,ventanaUsuario),message(W, destroy)))),

    send(Home, below, W),
    send(W,display,Imagen,point(0,0)),
    send(Home,display,BtnIni,point(200,10)),
    send(Home, open_centered),
    !.
% ---------------------------------------------------------------------------------------

  :-start.

% --------------------------PARA LA VENTANA CUESTIONARIO---------------------------------


ventanaUsuario:-
    new(Cuestionario, dialog),
    new(W,  picture('Sistema Experto | Modulo de usuario', size(800, 430))),

    % Creación de los labeles con los nombres de las preguntas
    pregunta1(Pr1), new(P1,label(nombre, Pr1)),
    pregunta2(Pr2), new(P2,label(nombre, Pr2)),
    pregunta3(Pr3), new(P3,label(nombre, Pr3)),
    pregunta4(Pr4), new(P4,label(nombre, Pr4)),
    pregunta5(Pr5), new(P5,label(nombre, Pr5)),
    pregunta6(Pr6), new(P6,label(nombre, Pr6)),
    pregunta7(Pr7), new(P7,label(nombre, Pr7)),
    pregunta8(Pr8), new(P8,label(nombre, Pr8)),
    pregunta9(Pr9), new(P9,label(nombre, Pr9)),
    pregunta10(Pr10), new(P10,label(nombre, Pr10)),
    pregunta11(Pr11), new(P11,label(nombre, Pr11)),
    pregunta12(Pr12), new(P12,label(nombre, Pr12)),
    pregunta13(Pr13), new(P13,label(nombre, Pr13)),
    pregunta14(Pr14), new(P14,label(nombre, Pr14)),
    pregunta15(Pr15), new(P15,label(nombre, Pr15)),
    pregunta16(Pr16), new(P16,label(nombre, Pr16)),
    pregunta17(Pr17), new(P17,label(nombre, Pr17)),

    % Creación de los combos con las alternativas de las preguntas
    respuestas(1, Resp1), new(ComboPreg1,menu('Respuesta',cycle)), send_list(ComboPreg1,append, Resp1),
    respuestas(2, Resp2), new(ComboPreg2,menu('Respuesta',cycle)), send_list(ComboPreg2,append, Resp2),
    respuestas(3, Resp3), new(ComboPreg3,menu('Respuesta',cycle)), send_list(ComboPreg3,append, Resp3),
    respuestas(4, Resp4), new(ComboPreg4,menu('Respuesta',cycle)), send_list(ComboPreg4,append, Resp4),
    respuestas(5, Resp5), new(ComboPreg5,menu('Respuesta',cycle)), send_list(ComboPreg5,append, Resp5),
    respuestas(6, Resp6), new(ComboPreg6,menu('Respuesta',cycle)), send_list(ComboPreg6,append, Resp6),
    respuestas(7, Resp7), new(ComboPreg7,menu('Respuesta',cycle)), send_list(ComboPreg7,append, Resp7),
    respuestas(8, Resp8), new(ComboPreg8,menu('Respuesta',cycle)), send_list(ComboPreg8,append, Resp8),
    respuestas(9, Resp9), new(ComboPreg9,menu('Respuesta',cycle)), send_list(ComboPreg9,append, Resp9),
    respuestas(10, Resp10), new(ComboPreg10,menu('Respuesta',cycle)), send_list(ComboPreg10,append, Resp10),
    respuestas(11, Resp11), new(ComboPreg11,menu('Respuesta',cycle)), send_list(ComboPreg11,append, Resp11),
    respuestas(12, Resp12), new(ComboPreg12,menu('Respuesta',cycle)), send_list(ComboPreg12,append, Resp12),
    respuestas(13, Resp13), new(ComboPreg13,menu('Respuesta',cycle)), send_list(ComboPreg13,append, Resp13),
    respuestas(14, Resp14), new(ComboPreg14,menu('Respuesta',cycle)), send_list(ComboPreg14,append, Resp14),
    respuestas(15, Resp15), new(ComboPreg15,menu('Respuesta',cycle)), send_list(ComboPreg15,append, Resp15),
    respuestas(16, Resp16), new(ComboPreg16,menu('Respuesta',cycle)), send_list(ComboPreg16,append, Resp16),
    respuestas(17, Resp17), new(ComboPreg17,menu('Respuesta',cycle)), send_list(ComboPreg17,append, Resp17),

    send(Cuestionario, below, W),

    % Agregando los labeles y los combos al Dialog
    send(W,display,P1,point(30,30)), send(W,display,ComboPreg1,point(50,50)),
    send(W,display,P2,point(30,90)), send(W,display,ComboPreg2,point(50,110)),
    send(W,display,P3,point(30,150)), send(W,display,ComboPreg3,point(50,170)),
    send(W,display,P4,point(30,210)), send(W,display,ComboPreg4,point(50,230)),
    send(W,display,P5,point(30,270)), send(W,display,ComboPreg5,point(50,290)),
    send(W,display,P6,point(30,330)), send(W,display,ComboPreg6,point(50,350)),
    send(W,display,P7,point(30,390)), send(W,display,ComboPreg7,point(50,410)),
    send(W,display,P8,point(30,450)), send(W,display,ComboPreg8,point(50,470)),
    send(W,display,P9,point(30,510)), send(W,display,ComboPreg9,point(50,530)),
    send(W,display,P10,point(30,570)), send(W,display,ComboPreg10,point(50,590)),
    send(W,display,P11,point(30,630)), send(W,display,ComboPreg11,point(50,650)),
    send(W,display,P12,point(30,690)), send(W,display,ComboPreg12,point(50,710)),
    send(W,display,P13,point(30,750)), send(W,display,ComboPreg13,point(50,770)),
    send(W,display,P14,point(30,810)), send(W,display,ComboPreg14,point(50,830)),
    send(W,display,P15,point(30,870)), send(W,display,ComboPreg15,point(50,890)),
    send(W,display,P16,point(30,930)), send(W,display,ComboPreg16,point(50,950)),
    send(W,display,P17,point(30,990)), send(W,display,ComboPreg17,point(50,1010)),



      %send(W,display,Imagen2,point(420,0)),

      new(BtnAceptar,button('Continuar',and(message(@prolog,buscarResultado,ComboPreg1?selection,ComboPreg2?selection,ComboPreg3?selection,ComboPreg4?selection,ComboPreg5?selection,ComboPreg6?selection), message(W, destroy)))),

      new(BtnRegresar,button('Regresar',and(message(@prolog, start),message(W, destroy)))),

      send(Cuestionario,display,BtnRegresar,point(10,10)),
      send(Cuestionario,display,BtnAceptar,point(280,10)),

      send(Cuestionario, open_centered),
      !.


% -----------------------------BUSCAR SOLUCION BIOMEDICA-----------------------------------------------

buscarResultado(A,B,C,D,E,F):-
findall(Solucion, (necesidad(Solucion, A),
etapa(Solucion, B),
peso(Solucion, C),
extremidad(Solucion, D),
anomalia(Solucion, E),
actividad(Solucion, F)), Lista),
pasarResp(Lista), !.

buscarResultado(A, B, C, D, E, F) :-
writeln('No se encontro ningun resultado con los siguientes parametros:'),
writeln(A), writeln(B), writeln(C), writeln(D), writeln(E), writeln(F),
respNO(A,B,C,D,E,F).

pasarResp([X|Rest]):-
(resp(X), pasarResp(Rest));true.

resp(Solucion):-
descripcion(Solucion, R),
imagen(Solucion, I),
explicacion(Solucion, E),
writeln(R), writeln(I),
new(D, dialog),
new(W,  window('Sistema Experto | Resultado', size(750, 500))),
new(R0,label(nombre,'Usted necesita:')),
new(R1,label(nombre,R)),
send(W,display,R0,point(40,15)),
send(W,display,R1,point(40,55)),
mostrar(I, W, 10, 70), % medidas


new(BtnExplica,button('Leer Explicacion',and(message(@prolog, explica, E)))),

new(BtnInicio,button('Regresar',and(message(@prolog, start),message(W, destroy)))),

send(D,display,BtnExplica,point(250,10)),
send(D,display,BtnInicio,point(380,10)),

send(D, below, W),
send(D, open_centered).


mostrar(I, W, X, Y) :-
new(Imagen, image(I)),
new(B,bitmap(Imagen)),
new(F,figure),
send(F,display,B),
new(D1,device),
send(D1,display,F),
send(W,display,D1),
send(W,display,D1,point(X,Y)).

explica(E):-
new(D, dialog('Explicacion')),
new(R0,label(nombre,'Esta es la mejor solucion por las siguientes razones:')),
new(R1,label(nombre,E)),
send(D,display,R0,point(40,15)),
send(D,display,R1,point(40,55)),
send(D, open_centered).

respNO(A,B,C,D,E,F):-

new(X, dialog),
new(W,  window('No se encontro ninguna coincidencia', size(750, 500))),
new(R0,label(nombre,'1. Con base a la informacion obtenida:')),
new(R1,label(nombre,A)),
new(R2,label(nombre,B)),
new(R3,label(nombre,C)),
new(R4,label(nombre,D)),
new(R5,label(nombre,E)),
new(R6,label(nombre,F)),

send(W,display,R0,point(40,15)),
send(W,display,R1,point(40,45)),
send(W,display,R2,point(40,75)),
send(W,display,R3,point(40,105)),
send(W,display,R4,point(40,135)),
send(W,display,R5,point(40,165)),
send(W,display,R6,point(40,195)),

new(Imagen6,label(icon,resource(logo6))),
send(W,display,Imagen6,point(10,10)),

%new(BtnAgregar,button('Generar nuevo conocimiento',and(message(@prolog,meterDatosNuevos,A,B,C,D,E), message(W, destroy)))),

new(BtnSalir,button('Salir',and(message(W, destroy)))),


new(BtnInicio,button('Regresar',and(message(@prolog, start),message(W, destroy)))),

%send(X,display,BtnAgregar,point(10,10)),
send(X,display,BtnInicio,point(10,10)),
send(X,display,BtnSalir,point(700,10)),


send(X, below, W),
send(X, open_centered).



%-----------------------------------------------------------------------------------------




%------------------------PARA GUARDAR SOLUCION BIOMEDICA EN LA BASE DE HECHOS--------------------------

generarNuevoConocimiento(Necesidad, Etapa, Peso, Extremidad, Anomalia, Actividad, Desc, Exp, X) :-
  asserta(necesidad(X, Necesidad)),
  asserta(etapa(X, Etapa)),
  asserta(peso(X, Peso)),
  asserta(extremidad(X, Extremidad)),
  asserta(anomalia(X, Anomalia)),
  asserta(actividad(X, Actividad)),
  asserta(descripcion(X, Desc)),
  atom_concat(X, '.jpg', I),
  asserta(imagen(X, I)),
  asserta(explicacion(X, Exp)),
  guardar.

guardar :-
  tell('./hechos.pl'),
  listing(necesidad),
  listing(etapa),
  listing(peso),
  listing(extremidad),
  listing(anomalia),
  listing(actividad),
  listing(descripcion),
  listing(imagen),
  listing(explicacion),
  told.

