:-use_module(library(pce)).
:-use_module(library(pce_style_item)).
:-consult('base_conocimientos.pl').
:-encoding(utf8).
:-pce_image_directory('../public/images/').


resource(logo,image,image('escudo_peru.jpg')).
resource(logo2,image,image('escudo_unasam.jpg')).
resource(logo3,image,image('escudo_unasam.jpg')).
resource(logo6,image,image('escudo_unasam.jpg')).


% --------------------------PARA EL MENU PRINCIPAL------------------------------------
start:-
    new(Home, dialog),
    new(W,  window('Diagnosticador de Depresi�n', size(900, 500))),
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
    new(W,  picture('Cuestionario para el paciente', size(850, 500))),

    % Creaci�n de los labeles con los nombres de las preguntas
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

    % Creaci�n de los combos con las alternativas de las preguntas
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
    send(W,display,P1,point(40,40)), send(W,display,ComboPreg1,point(55,60)),
    send(W,display,P2,point(40,120)), send(W,display,ComboPreg2,point(55,140)),
    send(W,display,P3,point(40,200)), send(W,display,ComboPreg3,point(55,220)),
    send(W,display,P4,point(40,280)), send(W,display,ComboPreg4,point(55,300)),
    send(W,display,P5,point(40,360)), send(W,display,ComboPreg5,point(55,380)),
    send(W,display,P6,point(40,440)), send(W,display,ComboPreg6,point(55,460)),
    send(W,display,P7,point(40,520)), send(W,display,ComboPreg7,point(55,540)),
    send(W,display,P8,point(40,600)), send(W,display,ComboPreg8,point(55,620)),
    send(W,display,P9,point(40,680)), send(W,display,ComboPreg9,point(55,700)),
    send(W,display,P10,point(40,760)), send(W,display,ComboPreg10,point(55,780)),
    send(W,display,P11,point(40,840)), send(W,display,ComboPreg11,point(55,860)),
    send(W,display,P12,point(40,920)), send(W,display,ComboPreg12,point(55,940)),
    send(W,display,P13,point(40,1000)), send(W,display,ComboPreg13,point(55,1020)),
    send(W,display,P14,point(40,1080)), send(W,display,ComboPreg14,point(55,1100)),
    send(W,display,P15,point(40,1160)), send(W,display,ComboPreg15,point(55,1180)),
    send(W,display,P16,point(40,1240)), send(W,display,ComboPreg16,point(55,1260)),
    send(W,display,P17,point(40,1320)), send(W,display,ComboPreg17,point(55,1340)),

    %send(W,display,Imagen2,point(420,0)),

    new(BtnAceptar,button('Obtener Diagnostico',and(message(@prolog,buscarResultado,ComboPreg1?selection,ComboPreg2?selection,ComboPreg3?selection,ComboPreg4?selection,ComboPreg5?selection,ComboPreg6?selection,ComboPreg7?selection,ComboPreg8?selection,ComboPreg9?selection,ComboPreg10?selection,ComboPreg11?selection,ComboPreg12?selection,ComboPreg13?selection,ComboPreg14?selection,ComboPreg15?selection,ComboPreg16?selection,ComboPreg17?selection), message(W, destroy)))),
    new(BtnRegresar,button('Cancelar test',and(message(@prolog, start),message(W, destroy)))),

    send(Cuestionario,display,BtnRegresar,point(10,10)),
    send(Cuestionario,display,BtnAceptar,point(280,10)),

    send(Cuestionario, open_centered),
    !.


% -----------------------------BUSCAR SOLUCION A DEPRESION-----------------------------------------------

buscarResultado(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17):-
  writeln("Seleccionados: "),
  write(P1), respuesta1(R1, P1), write(' -> '), writeln(R1), insertar(R1, [], Lista1),
  write(P2), respuesta2(R2, P2), write(' -> '), writeln(R2), insertar(R2, Lista1, Lista2),
  write(P3), respuesta3(R3, P3), write(' -> '), writeln(R3), insertar(R3, Lista2, Lista3),
  write(P4), respuesta4(R4, P4), write(' -> '), writeln(R4), insertar(R4, Lista3, Lista4),
  write(P5), respuesta5(R5, P5), write(' -> '), writeln(R5), insertar(R5, Lista4, Lista5),
  write(P6), respuesta6(R6, P6), write(' -> '), writeln(R6), insertar(R6, Lista5, Lista6),
  write(P7), respuesta7(R7, P7), write(' -> '), writeln(R7), insertar(R7, Lista6, Lista7),
  write(P8), respuesta8(R8, P8), write(' -> '), writeln(R8), insertar(R8, Lista7, Lista8),
  write(P9), respuesta9(R9, P9), write(' -> '), writeln(R9), insertar(R9, Lista8, Lista9),
  write(P10), respuesta10(R10, P10), write(' -> '), writeln(R10), insertar(R10, Lista9, Lista10),
  write(P11), respuesta11(R11, P11), write(' -> '), writeln(R11), insertar(R11, Lista10, Lista11),
  write(P12), respuesta12(R12, P12), write(' -> '), writeln(R12), insertar(R12, Lista11, Lista12),
  write(P13), respuesta13(R13, P13), write(' -> '), writeln(R13), insertar(R13, Lista12, Lista13),
  write(P14), respuesta14(R14, P14), write(' -> '), writeln(R14), insertar(R14, Lista13, Lista14),
  write(P15), respuesta15(R15, P15), write(' -> '), writeln(R15), insertar(R15, Lista14, Lista15),
  write(P16), respuesta16(R16, P16), write(' -> '), writeln(R16), insertar(R16, Lista15, Lista16),
  write(P17), respuesta17(R17, P17), write(' -> '), writeln(R17), insertar(R17, Lista16, Lista17),
  suma_lista(Lista17,Suma),
  write(Lista),
  write(Suma),
  validacion(Suma,Msj), write(Msj),
  resp(Msj, Suma), !.
  
  /*findall(Solucion,
    (necesidad(Solucion, A),
    etapa(Solucion, B),
    peso(Solucion, C),
    extremidad(Solucion, D),
    anomalia(Solucion, E),
    actividad(Solucion, F)), Lista),
  pasarResp(Lista), !.*/
/*
buscarResultado(A, B, C, D, E, F) :-
  writeln('No se encontro ningun resultado con los siguientes parametros:'),
  writeln(A), writeln(B), writeln(C), writeln(D), writeln(E), writeln(F),
  respNO(A,B,C,D,E,F).*/

pasarResp([X|Rest]):-(resp(X), pasarResp(Rest));true.

resp(Nivel, Suma):-
  /*descripcion(Solucion, R),
  imagen(Solucion, I),
  explicacion(Solucion, E),
  writeln(R),
  writeln(I),*/
  new(Respuesta, dialog),
  new(Wd,  picture('Diagnostico del paciente', size(850, 500))),
  new(Lb1,label(nombre, "Diagnostico:")),
  new(Lb2,label(nombre, Nivel)),
  new(Lb3,label(nombre, Suma)),
  send(Respuesta, below, Wd),
  send(Wd,display,Lb1,point(40,40)),
  send(Wd,display,Lb2,point(40,80)),
  send(Wd,display,Lb3,point(40,100)),

 /* mostrar(I, W, 10, 70),
    
  new(BtnExplica,button('Leer Explicacion',and(message(@prolog, explica, E)))),
  new(BtnInicio,button('Regresar',and(message(@prolog, start),message(W, destroy)))),
  send(D,display,BtnExplica,point(250,10)),
  send(D,display,BtnInicio,point(380,10)),
  send(D, below, W),*/
  send(Respuesta, open_centered),
    !.


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

