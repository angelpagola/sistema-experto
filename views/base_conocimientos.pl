insertar(Elem,Lista,[Elem|Lista]).
insertar(Elem,[X|Y],[X|Z]):-insertar(Elem,Y,Z).

suma_lista([],0).
suma_lista([H|Q],Sum):-suma_lista(Q,S1),Sum is H+S1.

contarRep(_,Lista,Veces):-Lista=[], Veces=0.
contarRep(Elem,Lista,Veces):-Lista=[Cab|Cola],
Elem==Cab, contarRep(Elem,Cola,Vez),Veces is Vez+1.
contarRep(Elem, Lista, Veces):-Lista=[Cab|Cola],
Elem\==Cab, contarRep(Elem,Cola,Vez), Veces is Vez.

/*Preguntas*/
pregunta1('01. Humor depresivo (tristeza, desesperanza, desamparo, sentimiento de inutilidad)').
pregunta2('02. Sentimientos de culpa').
pregunta3('03. Suicidio').
pregunta4('04. Insomnio precoz').
pregunta5('05. Insomnio intermedio').
pregunta6('06. Insomnio tardio ').
pregunta7('07. Trabajo y actividades').
pregunta8('08. Inhibicion psicomotora a (lentitud de pensamiento y lenguaje, facultad de concentracion disminuida, disminucion de la actividad motora)').
pregunta9('09. Agitacion psicomotora').
pregunta10('10. Ansiedad psiquica').
pregunta11('11. Ansiedad somatica (signos fisicos de ansiedad, gastrointestinales: sequedad de boca, diarrea, eructos, indigestion, etc; cardiovasculares: palpitaciones, cefaleas; respiratorios: hiperventilacion, suspiros; frecuencia de miccion incrementada; transpiracion)').
pregunta12('12. Sintomas somaticos gastrointestinales').
pregunta13('13. Sintomas somaticos generales ').
pregunta14('14. Sintomas genitales (tales como: disminucion de la libido y trastornos menstruales)').
pregunta15('15. Hipocondria').
pregunta16('16. Perdida de peso').
pregunta17('17. Introspecccion (insight)').

respuesta1(0,'Ausente').
respuesta1(1,'Estas sensaciones las expresa solamente si le preguntan como se siente').
respuesta1(2,'Estas sensaciones las relata espontaneamente').
respuesta1(3,'Sensaciones no comunicadas verbalmente (expresion facial, postura, voz, tendencia al llanto)').
respuesta1(4,'Manifiesta estas sensaciones en su comunicacion verbal y no verbal en forma espontanea').

respuesta2(0,'Ausente').
respuesta2(1,'Se culpa a si mismo, cree haber decepcionado a la gente').
respuesta2(2,'Tiene ideas de culpabilidad o medita sobre errores pasados o malas acciones').
respuesta2(3,'Siente que la enfermedad actual es un castigo').
respuesta2(4,'Oye voces acusatorias o de denuncia y/o experimenta alucinaciones visuales de amenaza').

respuesta3(0,'Ausente').
respuesta3(1,'Le parece que la vida no vale la pena ser vivida').
respuesta3(2,'Desearia estar muerto o tiene pensamientos sobre la posibilidad de morirse').
respuesta3(3,'Ideas de suicidio o amenazas').
respuesta3(4,'Intentos de suicidio (cualquier intento serio)').

respuesta4(0,'No tiene dificultad').
respuesta4(1,'Dificultad ocasional para dormir, por ej. mas de media hora el conciliar el sueno').
respuesta4(2,'Dificultad para dormir cada noche').

respuesta5(0,'No hay dificultad').
respuesta5(1,'Esta desvelado e inquieto o se despierta varias veces durante la noche').
respuesta5(2,'Esta despierto durante la noche, cualquier ocasion de levantarse de la cama se clasifica en 2 (excepto por motivos de evacuar)').

respuesta6(0,'No hay dificultad').
respuesta6(1,'Se despierta a primeras horas de la madrugada, pero se vuelve a dormir').
respuesta6(2,'No puede volver a dormirse si se levanta de la cama').

respuesta7(0,'No hay dificultad').
respuesta7(1,'Ideas y sentimientos de incapacidad, fatiga o debilidad (trabajos, pasatiempos)').
respuesta7(2,'Perdida de interes en su actividad (disminucion de la atencion, indecision y vacilacion)').
respuesta7(3,'Disminucion del tiempo actual dedicado a actividades o disminucion de la productividad').
respuesta7(4,'Dejo de trabajar por la presente enfermedad. Solo se compromete en las pequenas tareas, o no puede realizar estas sin ayuda.').

respuesta8(0,'Palabra y pensamiento normales').
respuesta8(1,'Ligero retraso en el habla').
respuesta8(2,'Evidente retraso en el habla').
respuesta8(3,'Dificultad para expresarse').
respuesta8(4,'Incapacidad para expresarse').

respuesta9(0,'Ninguna').
respuesta9(1,'Juega con sus dedos').
respuesta9(2,'Juega con sus manos, cabello, etc.').
respuesta9(3,'No puede quedarse quieto ni permanecer sentado').
respuesta9(4,'Retuerce las manos, se muerde las unas, se tira de los cabellos, se muerde los labios').

respuesta10(0,'No hay dificultad').
respuesta10(1,'Tension subjetiva e irritabilidad').
respuesta10(2,'Preocupacion por pequenas cosas').
respuesta10(3,'Actitud aprensiva en la expresion o en el habla').
respuesta10(4,'Expresa sus temores sin que le pregunten').

respuesta11(0,'Ausente').
respuesta11(1,'Ligera').
respuesta11(2,'Moderada').
respuesta11(3,'Severa').
respuesta11(4,'Incapacitante').

respuesta12(0,'Ninguno').
respuesta12(1,'Perdida del apetito pero come sin necesidad de que lo estimulen.').
respuesta12(2,'Sensacion de pesadez en el abdomen').
respuesta12(3,'Dificultad en comer si no se le insiste.').
respuesta12(4,'Solicita laxantes o medicacion intestinal para sus sintomas gastrointestinales').

respuesta13(0,'Ninguno').
respuesta13(1,'Pesadez en las extremidades, espalda o cabeza. Dorsalgias. Cefaleas, algias musculares.').
respuesta13(2,'Perdida de energia y fatigabilidad. Cualquier sintoma bien definido se clasifica en 2').

respuesta14(0,'Ausente').
respuesta14(1,'Debil').
respuesta14(2,'Grave').

respuesta15(0,'Ausente').
respuesta15(1,'Preocupado de si mismo (corporalmente)').
respuesta15(2,'Preocupado por su salud y se lamenta constantemente, solicita ayuda').

respuesta16(0,'Perdida de peso inferior a 500 gr. en una semana').
respuesta16(1,'Perdida de mas de 500 gr. en una semana').
respuesta16(2,'Perdida de mas de 1 Kg. en una semana').

respuesta17(0,'Se da cuenta que esta deprimido y enfermo').
respuesta17(1,'Se da cuenta de su enfermedad pero atribuye la causa a la mala alimentacion, clima, exceso de trabajo, virus, necesidad de descanso, etc. ').
respuesta17(2,'No se da cuenta que esta enfermo').


respuestas(1, ['Ausente', 'Estas sensaciones las expresa solamente si le preguntan como se siente','Estas sensaciones las relata espontaneamente','Sensaciones no comunicadas verbalmente (expresion facial, postura, voz, tendencia al llanto)','Manifiesta estas sensaciones en su comunicacion verbal y no verbal en forma espontanea']).
respuestas(2, ['Ausente','Se culpa a si mismo, cree haber decepcionado a la gente','Tiene ideas de culpabilidad o medita sobre errores pasados o malas acciones','Siente que la enfermedad actual es un castigo','Oye voces acusatorias o de denuncia y/o experimenta alucinaciones visuales de amenaza']).
respuestas(3, ['Ausente','Le parece que la vida no vale la pena ser vivida','Desearia estar muerto o tiene pensamientos sobre la posibilidad de morirse','Ideas de suicidio o amenazas','Intentos de suicidio (cualquier intento serio)']).
respuestas(4, ['No tiene dificultad','Dificultad ocasional para dormir, por ej. mas de media hora el conciliar el sueno','Dificultad para dormir cada noche']).
respuestas(5, ['No hay dificultad','Esta desvelado e inquieto o se despierta varias veces durante la noche','Esta despierto durante la noche, cualquier ocasion de levantarse de la cama se clasifica en 2 (excepto por motivos de evacuar)']).
respuestas(6, ['No hay dificultad','Se despierta a primeras horas de la madrugada, pero se vuelve a dormir','No puede volver a dormirse si se levanta de la cama']).
respuestas(7, ['No hay dificultad','Ideas y sentimientos de incapacidad, fatiga o debilidad (trabajos, pasatiempos)','Perdida de interes en su actividad (disminucion de la atencion, indecision y vacilacion)','Disminucion del tiempo actual dedicado a actividades o disminucion de la productividad','Dejo de trabajar por la presente enfermedad. Solo se compromete en las pequenas tareas, o no puede realizar estas sin ayuda.']).
respuestas(8, ['Palabra y pensamiento normales','Ligero retraso en el habla','Evidente retraso en el habla','Dificultad para expresarse','Incapacidad para expresarse']).
respuestas(9, ['Ninguna','Juega con sus dedos','Juega con sus manos, cabello, etc.','No puede quedarse quieto ni permanecer sentado','Retuerce las manos, se muerde las unas, se tira de los cabellos, se muerde los labios']).
respuestas(10, ['No hay dificultad','Tension subjetiva e irritabilidad','Preocupacion por pequenas cosas','Actitud aprensiva en la expresion o en el habla','Expresa sus temores sin que le pregunten']).
respuestas(11, ['Ausente','Ligera','Moderada','Severa','Incapacitante']).
respuestas(12, ['Ninguno','Perdida del apetito pero come sin necesidad de que lo estimulen.','Sensacion de pesadez en el abdomen','Dificultad en comer si no se le insiste.','Solicita laxantes o medicacion intestinal para sus sintomas gastrointestinales']).
respuestas(13, ['Ninguno','Pesadez en las extremidades, espalda o cabeza. Dorsalgias. Cefaleas, algias musculares.','Perdida de energia y fatigabilidad. Cualquier sintoma bien definido se clasifica en 2']).
respuestas(14, ['Ausente','Debil','Grave']).
respuestas(15, ['Ausente','Preocupado de si mismo (corporalmente)','Preocupado por su salud y se lamenta constantemente, solicita ayuda']).
respuestas(16, ['Perdida de peso inferior a 500 gr. en una semana','Perdida de mas de 500 gr. en una semana','Perdida de mas de 1 Kg. en una semana']).
respuestas(17, ['Se da cuenta que esta deprimido y enfermo','Se da cuenta de su enfermedad pero atribuye la causa a la mala alimentacion, clima, exceso de trabajo, virus, necesidad de descanso, etc. ','No se da cuenta que esta enfermo']).

% -------------

test:-pregunta1(P1),write('Pregunta 1: '),write(P1),nl,
write('Ingrese opcion P1: '),read(N1), V1 is N1-1,
insertar(V1,[],Lista1),
respuesta1(V1,R1),
write('Respuesta 1: '),write(R1),nl,nl,

pregunta2(P2),write('Pregunta 2: '),write(P2),nl,
write('Ingrese opcion P2: '),read(N2),V2 is N2-1,
insertar(V2,Lista1,Lista2),
respuesta2(V2,R2),
write('Respuesta 2: '),write(R2),nl,nl,

pregunta3(P3),write('Pregunta 3: '),write(P3),nl,
write('Ingrese opcion P3: '),read(N3),V3 is N3-1,
insertar(V3,Lista2,Lista3),
respuesta3(V3,R3),
write('Respuesta 3: '),write(R3),nl,nl,

pregunta4(P4),write('Pregunta 4: '),write(P4),nl,
write('Ingrese opcion P4: '),read(N4),V4 is N4-1,
insertar(V4,Lista3,Lista4),
respuesta4(V4,R4),
write('Respuesta 4: '),write(R4),nl,nl,

pregunta5(P5),write('Pregunta 5: '),write(P5),nl,
write('Ingrese opcion P5: '),read(N5),V5 is N5-1,
insertar(V5,Lista4,Lista5),
respuesta5(V5,R5),
write('Respuesta 5: '),write(R5),nl,nl,

pregunta6(P6),write('Pregunta 6: '),write(P6),nl,
write('Ingrese opcion P6: '),read(N6),V6 is N6-1,
insertar(V6,Lista5,Lista6),
respuesta6(V6,R6),
write('Respuesta 6: '),write(R6),nl,nl,

pregunta7(P7),write('Pregunta 7: '),write(P7),nl,
write('Ingrese opcion P7: '),read(N7),V7 is N7-1,
insertar(V7,Lista6,Lista7),
respuesta7(V7,R7),
write('Respuesta 7: '),write(R7),nl,nl,

pregunta8(P8),write('Pregunta 8: '),write(P8),nl,
write('Ingrese opcion P8: '),read(N8),V8 is N8-1,
insertar(V8,Lista7,Lista8),
respuesta8(V8,R8),
write('Respuesta 8: '),write(R8),nl,nl,

pregunta9(P9),write('Pregunta 9: '),write(P9),nl,
write('Ingrese opcion P9: '),read(N9),V9 is N9-1,
insertar(V9,Lista8,Lista9),
respuesta9(V9,R9),
write('Respuesta 9: '),write(R9),nl,nl,

pregunta10(P10),write('Pregunta 10: '),write(P10),nl,
write('Ingrese opcion P10: '),read(N10),V10 is N10-1,
insertar(V10,Lista9,Lista10),
respuesta10(V10,R10),
write('Respuesta 10: '),write(R10),nl,nl,

pregunta11(P11),write('Pregunta 11: '),write(P11),nl,
write('Ingrese opcion P11: '),read(N11),V11 is N11-1,
insertar(V11,Lista10,Lista11),
respuesta11(V11,R11),
write('Respuesta 11: '),write(R11),nl,nl,

pregunta12(P12),write('Pregunta 12: '),write(P12),nl,
write('Ingrese opcion P12: '),read(N12),V12 is N12-1,
insertar(V12,Lista11,Lista12),
respuesta12(V12,R12),
write('Respuesta 12: '),write(R12),nl,nl,

pregunta13(P13),write('Pregunta 13: '),write(P13),nl,
write('Ingrese opcion P13: '),read(N13),V13 is N13-1,
insertar(V13,Lista12,Lista13),
respuesta13(V13,R13),
write('Respuesta 13: '),write(R13),nl,nl,

pregunta14(P14),write('Pregunta 14: '),write(P14),nl,
write('Ingrese opcion P14: '),read(N14),V14 is N14-1,
insertar(V14,Lista13,Lista14),
respuesta14(V14,R14),
write('Respuesta 14: '),write(R14),nl,nl,

pregunta15(P15),write('Pregunta 15: '),write(P15),nl,
write('Ingrese opcion P15: '),read(N15),V15 is N15-1,
insertar(V15,Lista14,Lista15),
respuesta15(V15,R15),
write('Respuesta 15: '),write(R15),nl,nl,

pregunta16(P16),write('Pregunta 16: '),write(P16),nl,
write('Ingrese opcion P16: '),read(N16),V16 is N16-1,
insertar(V16,Lista15,Lista16),
respuesta16(V16,R16),
write('Respuesta 16: '),write(R16),nl,nl,

pregunta17(P17),write('Pregunta 17: '),write(P17),nl,
write('Ingrese opcion P17: '),read(N17),V17 is N17-1,
insertar(V17,Lista16,Lista17),
respuesta17(V17,R17),
write('Respuesta 17: '),write(R17),nl,nl,

write(Lista17),
suma_lista(Lista17,Suma),
write('La suma es: '),write(Suma),
validacion(Suma,Msj,Recom), write(Msj),nl, /*validacion*/
recom_criticos(Lista17,Recomendacion),
/*contarRep(0,Lista17,Veces0),
contarRep(1,Lista17,Veces1),
contarRep(2,Lista17,Veces2),
contarRep(3,Lista17,Veces3),
contarRep(4,Lista17,Veces4),
%onteo de respuestas con sus valores
write('Numero de respuestas con valor 0 son: '),write(Veces0),
write('Numero de respuestas con valor 1 son: '),write(Veces1),
write('Numero de respuestas con valor 2 son: '),write(Veces2),
write('Numero de respuestas con valor 3 son: '),write(Veces3),
write('Numero de respuestas con valor 4 son: '),write(Veces4),*/
write(Recomendacion).

/*DIAGNOSTICO*/
niveles(0,'NO DEPRIMIDO','Procure mantener la salud mental que tiene').
niveles(1,'DEPRESION LIGERA/MENOR','Se le recomienda tratar de relajarse con actividades recreativas').
niveles(2,'DEPRESION MODERADA','Se le recomienda estar en contacto frecuente con algun profesional de salud').
niveles(3,'DEPRESION SEVERA','Visitar un profesional de salud con urgencia').
niveles(4,'DEPRESION MUY SEVERA','Visitar un profesional de salud con urgencia y de ser necesario comunicarse al 043-2547').

%%Mensajes de alertaas criticos
msg_recom(1,'Alerta! Presencia de un posible trastorno de ansiedad asista a un psicologo de la UNASAM porque tiene problemas criticos').
msg_recom(2,'Alerta! Presenta algun sintoma de ansiedad o nerviosismo, acerquese a un psicologo de la UNASAM').
msg_recom(3,'Alerta! Usted tiene alg??n s??ntoma de ansiedad o nerviosismo por precaucion acerquese a un psicologo de la UNASAM').
msg_recom(4,'Precaucion! Acerquese a la Oficina de Salud y Unidad de Psicopedagogia de la UNASAM').
msg_recom(5,'En hora buena! No hay situaciones alarmantes').
%%%%%%Validacion de cantidad de  4's mayores a 1 por ejemplo una respuesta de intento de suicidio%%%%
%captura lista resultados y muestra recomendacion extrA
/*eJEMPLO: recom_criticos([1,2,1,2,1,3,1,4,1,2,3,3,3,2,3,2,0],Mensaje).*/
recom_criticos(Resultados,Recom):-contarRep(4,Resultados,Vez),Vez>0,Vez<18,msg_recom(1,Recom).
recom_criticos(Resultados,Recom):-contarRep(3,Resultados,Vez),Vez>9,Vez<18,msg_recom(1,Recom).
recom_criticos(Resultados,Recom):-contarRep(3,Resultados,Vez),Vez>5,Vez<10,msg_recom(2,Recom).
recom_criticos(Resultados,Recom):-contarRep(3,Resultados,Vez),Vez>3,Vez<6,msg_recom(3,Recom).
recom_criticos(Resultados,Recom):-contarRep(3,Resultados,Vez),Vez>0,Vez<4,msg_recom(4,Recom).
recom_criticos(Resultados,Recom):-contarRep(2,Resultados,Vez),Vez>0,Vez<18,msg_recom(5,Recom).
recom_criticos(Resultados,Recom):-contarRep(1,Resultados,Vez),Vez>0,Vez<18,msg_recom(5,Recom).
recom_criticos(Resultados,Recom):-contarRep(0,Resultados,Vez),Vez>0,Vez<18,msg_recom(5,Recom).
%%%%%%Validacion de numeros 4 mayores a 1 por ejemplo una respuesta de intento de suicidio%%%%

%%%validacion ingresa la suma de los pesos de test y muestra el nivel de depresion y la recomendaciion
/*Ejemplo: validacion(30,Mensaje,Recomendacion).*/

validacion(Suma,Mensaje,Recomendacion):- Suma>(-1),Suma<8,
niveles(0,Mensaje,Recomendacion).
validacion(Suma,Mensaje,Recomendacion):- Suma>7, Suma<14,
niveles(1,Mensaje,Recomendacion).
validacion(Suma,Mensaje,Recomendacion):- Suma>13, Suma<19,
niveles(2,Mensaje,Recomendacion).
validacion(Suma,Mensaje,Recomendacion):- Suma>18, Suma<23,
niveles(3,Mensaje,Recomendacion).
validacion(Suma,Mensaje,Recomendacion):- Suma>22, Suma<53,
niveles(4,Mensaje,Recomendacion).

/*No deprimido: 0-7
  Depresi????n ligera/menor: 8-13
  Depresi????n moderada: 14-18
  Depresi????n severa: 19-22   */
/*depresion_ligera:- Suma>=8, Suma<=13,
diagnostico('DEPRESION LIGERA/MENOR ').
depresion_moderada:- Suma >= 14, Suma <= 18,
diagnostico('DDEPRESION MODERADA ').
depresion_severa:- Suma >= 19, Suma <= 22,
diagnostico('DEPRESION SEVERA ').
depresion_muy_severa:- Suma >= 23, Suma <= 52,
diagnostico('DEPRESION MUY SEVERA ').  */

/*
pos(X,[X|_],0).
pos(_,[],_):-!,fail.
pos(X,[_|R],Pos):-pos(X,R,Pos1),Pos is Pos1+1. */
/**Goku insecto**/


/* Kakaroto aliancista */
/*Otro comentario*/


