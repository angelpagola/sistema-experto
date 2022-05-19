:-use_module(library(pce)).
:-use_module(library(pce_style_item)).
:-consult('base_conocimientos.pl').
:-consult('estudiantes.pl').
:-encoding(utf8).
:-pce_image_directory('../public/images/').
:-pce_image_directory('../public/images/icons/').
             %Actualizado

resource(logo,image,image('escudo_peru.jpg')).
resource(logo2,image,image('escudo_unasam.jpg')).
resource(logo3,image,image('escudo_unasam.jpg')).
resource(logo6,image,image('escudo_unasam.jpg')).
resource(unasam_licenciada,image,image('unasam_licenciada.jpg')).
resource(image_home,image,image('image_home.jpg')).
resource(image_questions,image,image('image_questions.jpg')).
resource(image_dg,image,image('dg.jpg')).
resource(image_tabla2,image('tabla.jpg')).
%----------------------------------ICONOS---------------------------------------
resource(icon_enter,image,image('icon_enter.gif')).
resource(icon_paper,image,image('icon_paper.gif')).
resource(icon_plus,image,image('icon_plus.gif')).
resource(icon_stamp,image,image('icon_stamp.gif')).
resource(icon_add_button,image,image('icon_add_button.gif')).
resource(icon_add_user,image,image('icon_add_user.gif')).
resource(icon_add,image,image('icon_add.gif')).
resource(icon_banned,image,image('icon_banned.gif')).
resource(icon_bookmark,image,image('icon_bookmark.gif')).
resource(icon_edit,image,image('icon_edit.gif')).

%---------------------------------MÉTODOS---------------------------------------------
nueva_imagen(Ventana, Imagen, Width, Height):-
    new(Figura, figure),
    new(Bitmap, bitmap(resource(Imagen),@on)),
    send(Bitmap, name, 1),
    send(Figura, display, Bitmap),
    send(Figura, status, 1),
    send(Ventana, display,Figura,point(Width,Height)).

% --------------------------PARA EL MENU PRINCIPAL------------------------------------
start:-
    new(Home, dialog),
    new(W,window('Diagnosticador de Depresión', size(1024, 550))),
    %new(ImageHome,label(icon,resource(image_home))),
    new(ImageUnasamLicenciada,label(icon,resource(unasam_licenciada))),

    new(BtnIni,button('Inicia Test_____',and(message(@prolog,ventanaUsuario),message(W, destroy)))),
    new(BtnResul,button('Ver Resultados_____',and(message(@prolog,ventanaResultado),message(W, destroy)))),
    %new(IconEnter,label(icon,resource(icon_enter))),

    send(Home, below, W),
    %send(W,display,ImageHome,point(0,0)),
    %send(W,display,ImageUnasamLicenciada,point(450,40)),
    nueva_imagen(W,image_home,0,0),
    nueva_imagen(W,unasam_licenciada,450,40),

    send(Home,display,BtnIni,point(200,10)),
    send(Home,display,BtnResul,point(700,10)),
    %send(Home,display,IconEnter,point(255,13)),
    nueva_imagen(Home,icon_enter,265,14),
    nueva_imagen(Home,icon_add_user,797,14),

    send(Home,background(white)),
    send(Home, open_centered),
    !.
% ---------------------------------------------------------------------------------------

  :-start.

% --------------------------PARA LA VENTANA CUESTIONARIO---------------------------------


ventanaUsuario:-
    new(Cuestionario, dialog),
    new(W,  picture('Cuestionario para el paciente', size(1024, 550))),

    new(TxtNombre,text_item('Nombre del estudiante ')),
    new(TxtCodigo,text_item('Codigo del estudiante ')),
    new(TxtEscuela,text_item('Escuela del estudiante ')),

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

    nueva_imagen(W,image_questions,0,-1150),
    send(Cuestionario, below, W),

    % Agregando los labeles y los combos al Dialog
    send(W,display,TxtNombre,point(40,40)),
    send(W,display,TxtCodigo,point(40,70)),
    send(W,display,TxtEscuela,point(40,100)),
    send(W,display,P1,point(40,170)), send(W,display,ComboPreg1,point(65,190)),
    send(W,display,P2,point(40,240)), send(W,display,ComboPreg2,point(65,260)),
    send(W,display,P3,point(40,310)), send(W,display,ComboPreg3,point(65,330)),
    send(W,display,P4,point(40,380)), send(W,display,ComboPreg4,point(65,400)),
    send(W,display,P5,point(40,450)), send(W,display,ComboPreg5,point(65,470)),
    send(W,display,P6,point(40,520)), send(W,display,ComboPreg6,point(65,540)),
    send(W,display,P7,point(40,590)), send(W,display,ComboPreg7,point(65,610)),
    send(W,display,P8,point(40,660)), send(W,display,ComboPreg8,point(65,680)),
    send(W,display,P9,point(40,730)), send(W,display,ComboPreg9,point(65,750)),
    send(W,display,P10,point(40,800)), send(W,display,ComboPreg10,point(65,820)),
    send(W,display,P11,point(40,870)), send(W,display,ComboPreg11,point(65,890)),
    send(W,display,P12,point(40,940)), send(W,display,ComboPreg12,point(65,960)),
    send(W,display,P13,point(40,1010)), send(W,display,ComboPreg13,point(65,1030)),
    send(W,display,P14,point(40,1080)), send(W,display,ComboPreg14,point(65,1100)),
    send(W,display,P15,point(40,1150)), send(W,display,ComboPreg15,point(65,1170)),
    send(W,display,P16,point(40,1220)), send(W,display,ComboPreg16,point(65,1240)),
    send(W,display,P17,point(40,1290)), send(W,display,ComboPreg17,point(65,1310)),

    %send(W,display,Imagen2,point(420,0)),

    new(BtnAceptar,button('Obtener Diagnostico_____',and(message(@prolog,buscarResultado,TxtNombre?selection,TxtCodigo?selection,TxtEscuela?selection,ComboPreg1?selection,ComboPreg2?selection,ComboPreg3?selection,ComboPreg4?selection,ComboPreg5?selection,ComboPreg6?selection,ComboPreg7?selection,ComboPreg8?selection,ComboPreg9?selection,ComboPreg10?selection,ComboPreg11?selection,ComboPreg12?selection,ComboPreg13?selection,ComboPreg14?selection,ComboPreg15?selection,ComboPreg16?selection,ComboPreg17?selection), message(W, destroy)))),
    new(BtnRegresar,button('Cancelar_____',and(message(@prolog, start),message(W, destroy)))),

    send(Cuestionario,display,BtnRegresar,point(200,10)),
    nueva_imagen(Cuestionario,icon_banned,260,14),
    send(Cuestionario,display,BtnAceptar,point(700,10)),
    nueva_imagen(Cuestionario,icon_stamp,827,14),
    send(Cuestionario,background(white)),

    send(Cuestionario, open_centered),
    !.
    
% ------------------- VENTANA PARA VER RESULTADOS ------------------
ventanaResultado:-new(Resultado, dialog),
    new(Wres,  picture('Resultados', size(800, 450))),
    
    new(Tit,label(nombre, 'Resultados almacenados', font('arial',bold,16))),
    nueva_imagen(Wres,image_tabla2,30,90),
    send(Resultado, below, Wres),
    send(Wres,display,Tit,point(50,50)),

    (estudiante(1,N1,C1,E1,S1,D1)
    -> string_concat(S1,' de 52',Resp1),
    new(Id1,label(nombre,1)),  new(Nom1,label(nombre,N1)), new(Cod1,label(nombre,C1)), new(Esc1,label(nombre,E1)), new(Sum1,label(nombre,Resp1)), new(Dig1,label(nombre, D1)),
    send(Wres,display,Id1,point(30,90)), send(Wres,display,Nom1,point(80,90)), send(Wres,display,Cod1,point(255,90)), send(Wres,display,Esc1,point(360,90)), send(Wres,display,Sum1,point(480,90)), send(Wres,display,Dig1,point(555,90))
    ; write('no existe')),

    (estudiante(2,N2,C2,E2,S2,D2)
    -> string_concat(S2,' de 52',Resp2),
    new(Id2,label(nombre,2)), new(Nom2,label(nombre,N2)), new(Cod2,label(nombre,C2)), new(Esc2,label(nombre,E2)), new(Sum2,label(nombre,Resp2)), new(Dig2,label(nombre, D2)),
    send(Wres,display,Id2,point(30,112)), send(Wres,display,Nom2,point(80,112)), send(Wres,display,Cod2,point(255,112)), send(Wres,display,Esc2,point(360,112)), send(Wres,display,Sum2,point(480,112)), send(Wres,display,Dig2,point(555,112))
    ; write('no existe')),

    (estudiante(3,N3,C3,E3,S3,D3)
    -> string_concat(S3,' de 52',Resp3),
    new(Id3,label(nombre,3)),  new(Nom3,label(nombre,N3)), new(Cod3,label(nombre,C3)), new(Esc3,label(nombre,E3)), new(Sum3,label(nombre,Resp3)), new(Dig3,label(nombre, D3)),
    send(Wres,display,Id3,point(30,134)), send(Wres,display,Nom3,point(80,134)), send(Wres,display,Cod3,point(255,134)), send(Wres,display,Esc3,point(360,134)), send(Wres,display,Sum3,point(480,134)), send(Wres,display,Dig3,point(555,134))
    ; write('no existe')),
    
    (estudiante(4,N4,C4,E4,S4,D4)
    -> string_concat(S4,' de 52',Resp4),
    new(Id4,label(nombre,4)), new(Nom4,label(nombre,N4)), new(Cod4,label(nombre,C4)), new(Esc4,label(nombre,E4)), new(Sum4,label(nombre,Resp4)), new(Dig4,label(nombre, D4)),
    send(Wres,display,Id4,point(30,156)), send(Wres,display,Nom4,point(80,156)), send(Wres,display,Cod4,point(255,156)), send(Wres,display,Esc4,point(360,156)), send(Wres,display,Sum4,point(480,156)), send(Wres,display,Dig4,point(555,156))
    ; write('no existe')),
    
    (estudiante(5,N5,C5,E5,S5,D5)
    -> string_concat(S5,' de 52',Resp5),
    new(Id5,label(nombre,5)), new(Nom5,label(nombre,N5)), new(Cod5,label(nombre,C5)), new(Esc5,label(nombre,E5)), new(Sum5,label(nombre,Resp5)), new(Dig5,label(nombre, D5)),
    send(Wres,display,Id5,point(30,178)), send(Wres,display,Nom5,point(80,178)), send(Wres,display,Cod5,point(255,178)), send(Wres,display,Esc5,point(360,178)), send(Wres,display,Sum5,point(480,178)), send(Wres,display,Dig5,point(555,178))
    ; write('no existe')),
    
    (estudiante(6,N6,C6,E6,S6,D6)
    -> string_concat(S6,' de 52',Resp6),
    new(Id6,label(nombre,6)), new(Nom6,label(nombre,N6)), new(Cod6,label(nombre,C6)), new(Esc6,label(nombre,E6)), new(Sum6,label(nombre,Resp6)), new(Dig6,label(nombre, D6)),
    send(Wres,display,Id6,point(30,200)), send(Wres,display,Nom6,point(80,200)), send(Wres,display,Cod6,point(255,200)), send(Wres,display,Esc6,point(360,200)), send(Wres,display,Sum6,point(480,200)), send(Wres,display,Dig6,point(555,200))
    ; write('no existe')),
    
    (estudiante(7,N7,C7,E7,S7,D7)
    -> string_concat(S7,' de 52',Resp7),
    new(Id7,label(nombre,7)), new(Nom7,label(nombre,N7)), new(Cod7,label(nombre,C7)), new(Esc7,label(nombre,E7)), new(Sum7,label(nombre,Resp7)), new(Dig7,label(nombre, D7)),
    send(Wres,display,Id7,point(30,222)), send(Wres,display,Nom7,point(80,222)), send(Wres,display,Cod7,point(255,222)), send(Wres,display,Esc7,point(360,222)), send(Wres,display,Sum7,point(480,222)), send(Wres,display,Dig7,point(555,222))
    ; write('no existe')),
    
    (estudiante(8,N8,C8,E8,S8,D8)
    -> string_concat(S8,' de 52',Resp8),
    new(Id8,label(nombre,8)), new(Nom8,label(nombre,N8)), new(Cod8,label(nombre,C8)), new(Esc8,label(nombre,E8)), new(Sum8,label(nombre,Resp8)), new(Dig8,label(nombre, D8)),
    send(Wres,display,Id8,point(30,244)), send(Wres,display,Nom8,point(80,244)), send(Wres,display,Cod8,point(255,244)), send(Wres,display,Esc8,point(360,244)), send(Wres,display,Sum8,point(480,244)), send(Wres,display,Dig8,point(555,244))
    ; write('no existe')),
    
    (estudiante(9,N9,C9,E9,S9,D9)
    -> string_concat(S9,' de 52',Resp9),
    new(Id9,label(nombre,9)), new(Nom9,label(nombre,N9)), new(Cod9,label(nombre,C9)), new(Esc9,label(nombre,E9)), new(Sum9,label(nombre,Resp9)), new(Dig9,label(nombre, D9)),
    send(Wres,display,Id9,point(30,266)), send(Wres,display,Nom9,point(80,266)), send(Wres,display,Cod9,point(255,266)), send(Wres,display,Esc9,point(360,266)), send(Wres,display,Sum9,point(480,266)), send(Wres,display,Dig9,point(555,266))
    ; write('no existe')),
    
    (estudiante(10,N10,C10,E10,S10,D10)
    -> string_concat(S10,' de 52',Resp10),
    new(Id10,label(nombre,10)), new(Nom10,label(nombre,N10)), new(Cod10,label(nombre,C10)), new(Esc10,label(nombre,E10)), new(Sum10,label(nombre,Resp10)), new(Dig10,label(nombre, D10)),
    send(Wres,display,Id10,point(30,288)), send(Wres,display,Nom10,point(80,288)), send(Wres,display,Cod10,point(255,288)), send(Wres,display,Esc10,point(360,288)), send(Wres,display,Sum10,point(480,288)), send(Wres,display,Dig10,point(555,288))
    ; write('no existe')),
    
    (estudiante(11,N11,C11,E11,S11,D11)
    -> string_concat(S11,' de 52',Resp11),
    new(Id11,label(nombre,11)), new(Nom11,label(nombre,N11)), new(Cod11,label(nombre,C11)), new(Esc11,label(nombre,E11)), new(Sum11,label(nombre,Resp11)), new(Dig11,label(nombre, D11)),
    send(Wres,display,Id11,point(30,310)), send(Wres,display,Nom11,point(80,310)), send(Wres,display,Cod11,point(255,310)), send(Wres,display,Esc11,point(360,310)), send(Wres,display,Sum11,point(480,310)), send(Wres,display,Dig11,point(555,310))
    ; write('no existe')),
    
    (estudiante(12,N12,C12,E12,S12,D12)
    -> string_concat(S12,' de 52',Resp12),
    new(Id12,label(nombre,12)), new(Nom12,label(nombre,N12)), new(Cod12,label(nombre,C12)), new(Esc12,label(nombre,E12)), new(Sum12,label(nombre,Resp12)), new(Dig12,label(nombre, D12)),
    send(Wres,display,Id12,point(30,332)), send(Wres,display,Nom12,point(80,332)), send(Wres,display,Cod12,point(255,332)), send(Wres,display,Esc12,point(360,332)), send(Wres,display,Sum12,point(480,332)), send(Wres,display,Dig12,point(555,332))
    ; write('no existe')),
    
    (estudiante(13,N13,C13,E13,S13,D13)
    -> string_concat(S13,' de 52',Resp13),
    new(Id13,label(nombre,13)), new(Nom13,label(nombre,N13)), new(Cod13,label(nombre,C13)), new(Esc13,label(nombre,E13)), new(Sum13,label(nombre,Resp13)), new(Dig13,label(nombre, D13)),
    send(Wres,display,Id13,point(30,354)), send(Wres,display,Nom13,point(80,354)), send(Wres,display,Cod13,point(255,354)), send(Wres,display,Esc13,point(360,354)), send(Wres,display,Sum13,point(480,354)), send(Wres,display,Dig13,point(555,354))
    ; write('no existe')),
    
    (estudiante(14,N14,C14,E14,S14,D14)
    -> string_concat(S14,' de 52',Resp14),
    new(Id14,label(nombre,14)), new(Nom14,label(nombre,N14)), new(Cod14,label(nombre,C14)), new(Esc14,label(nombre,E14)), new(Sum14,label(nombre,Resp14)), new(Dig14,label(nombre, D14)),
    send(Wres,display,Id14,point(30,376)), send(Wres,display,Nom14,point(80,376)), send(Wres,display,Cod14,point(255,376)), send(Wres,display,Esc14,point(360,376)), send(Wres,display,Sum14,point(480,376)), send(Wres,display,Dig14,point(555,376))
    ; write('no existe')),
    
    (estudiante(15,N15,C15,E15,S15,D15)
    -> string_concat(S15,' de 52',Resp15),
    new(Id15,label(nombre,15)), new(Nom15,label(nombre,N15)), new(Cod15,label(nombre,C15)), new(Esc15,label(nombre,E15)), new(Sum15,label(nombre,Resp15)), new(Dig15,label(nombre, D15)),
    send(Wres,display,Id15,point(30,398)), send(Wres,display,Nom15,point(80,398)), send(Wres,display,Cod15,point(255,398)), send(Wres,display,Esc15,point(360,398)), send(Wres,display,Sum15,point(480,398)), send(Wres,display,Dig15,point(555,398))
    ; write('no existe')),

    new(BtnRegresar,button('Volver al Inicio',and(message(@prolog, start),message(Wres, destroy)))),

    send(Resultado,display,BtnRegresar,point(50,10)),
            
    send(Resultado, open_centered),
    !.


% -----------------------------BUSCAR SOLUCION A DEPRESION-----------------------------------------------

buscarResultado(Nombre,Codigo,Escuela,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17):-
  writeln("Seleccionados: "),
  respuesta1(R1, P1), insertar(R1, [], Lista1),
  respuesta2(R2, P2), insertar(R2, Lista1, Lista2),
  respuesta3(R3, P3), insertar(R3, Lista2, Lista3),
  respuesta4(R4, P4), insertar(R4, Lista3, Lista4),
  respuesta5(R5, P5), insertar(R5, Lista4, Lista5),
  respuesta6(R6, P6), insertar(R6, Lista5, Lista6),
  respuesta7(R7, P7), insertar(R7, Lista6, Lista7),
  respuesta8(R8, P8), insertar(R8, Lista7, Lista8),
  respuesta9(R9, P9), insertar(R9, Lista8, Lista9),
  respuesta10(R10, P10), insertar(R10, Lista9, Lista10),
  respuesta11(R11, P11), insertar(R11, Lista10, Lista11),
  respuesta12(R12, P12), insertar(R12, Lista11, Lista12),
  respuesta13(R13, P13), insertar(R13, Lista12, Lista13),
  respuesta14(R14, P14), insertar(R14, Lista13, Lista14),
  respuesta15(R15, P15), insertar(R15, Lista14, Lista15),
  respuesta16(R16, P16), insertar(R16, Lista15, Lista16),
  respuesta17(R17, P17), insertar(R17, Lista16, Lista17),
  suma_lista(Lista17,Suma),
  write(Lista17),
  write(Suma),
  validacion(Suma,Msj,Recomendacion), write(Msj),
  recom_criticos(Lista17,Recom_critico),
  generarNuevoConocimiento(Nombre,Codigo,Escuela,Suma,Msj),
  resp(Msj, Suma, Recomendacion, Recom_critico), !.
  
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

resp(Nivel, Suma, Recomendacion, Recom_critico):-
  /*descripcion(Solucion, R),
  imagen(Solucion, I),
  explicacion(Solucion, E),
  writeln(R),
  writeln(I),*/
  new(Respuesta, dialog),
  new(Wd,  picture('Diagnostico del paciente', size(850, 530))),
  new(Lb2,label(nombre, Nivel,font('Arial','bold',14))),
  new(Lb3,label(nombre, Suma, font('Arial','bold',24))),
  new(Lb4,label(nombre, Recomendacion,font('Arial','bold',14))),
  new(Lb5,label(nombre, Recom_critico,font('Arial','bold',12))),
  
  new(BtnStart,button('Volver Inicio_____',and(message(@prolog,start),message(Wd, destroy)))),
  %new(IconEnter,label(icon,resource(icon_enter))),

  nueva_imagen(Wd, image_dg,0,0),
  send(Respuesta, below, Wd),

  send(Wd,display,Lb2,point(263,183)),
  send(Wd,display,Lb3,point(410,40)),
  send(Wd,display,Lb4,point(40,365)),
  send(Wd,display,Lb5,point(40,470)),
  send(Lb5,colour(red)),

  send(Respuesta,display,BtnStart,point(400,10)),
  nueva_imagen(Respuesta,icon_paper,475,14),
  send(Respuesta,background(white)),
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




%------------------------GUARDAR DIAGNOSTICO DEL ESTUDIANTE--------------------------

generarNuevoConocimiento(Nombre,Codigo,Escuela,Suma,Diagn) :-
  indice(Id),
  write('Indice: '), writeln(Id),
  asserta(estudiante(Id, Nombre,Codigo,Escuela,Suma,Diagn)),
  (NewId is Id + 1),
  write('Nuevo Indice: '), writeln(NewId),
  asserta(indice(NewId)),
  guardar.

guardar :-
  tell('./estudiantes.pl'),
  listing(estudiante),
  listing(indice),
  told.

