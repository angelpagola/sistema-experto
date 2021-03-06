/* Proyecto: Sistema Experto
 * Programadores: Alvarado Carlos, Blas Clinton, Pagola Angel, Paucar Frank, Silvestre Jefferson.
 * Programa: Prototipo de sistema experto que permita diagnosticar el nivel de
   depresi?n en los estudiantes de la Universidad Nacional Santiago Ant?nez de
   Mayolo como apoyo al trabajo de los psic?logos.
 */

/* Libraries
 * library(pce): Proporciona gr?ficos a SWI-Prolog
 * library(pce_style_item):
 */
:- use_module(library(pce)).
:- use_module(library(pce_style_item)).

/* Directories
 */
:- pce_image_directory('../public/images').


resource(escudo_unasam,image,image('escudo_unasam.jpg')).
resource(escudo_peru,image,image('escudo_peru.jpg')).
resource(unasam_licenciada,image,image('unasam_licenciada.jpg')).

resource(image_home,image,image('home.jpg')).
resource(log_out_icon,image,image('log_out.gif')).

/* Home
 *
 */
 
insert_image(Object, Image, Position):-new(Figure,  figure),
                     new(Bitmap, bitmap(resource(Image),@on)),
                     send(Bitmap, name, 1),
                     send(Figure, display, Bitmap),
                     send(Figure, status, 1),
                     send(Object, display, Figure, Position).
                     

home:- new(Window,dialog('Inicio')),

       insert_image(Window,image_home,point(0,0)),
       insert_image(Window,unasam_licenciada,point(550,50)),
       
       new(BtnDiagnosticar,button('Realizar Diagn?stico',message(@prolog,diagnostic_window))),
       
       send(Window,display,BtnDiagnosticar,point(760,390)),
          
       send(Window,height(650)),
       send(Window,width(1124)),
       send(Window,open_centered).

       :-home.


diagnostic_window :- new(DW,dialog('Diagnosticar paciente')),
                  new(InsomioPrecoz, menu('1.-?Insomnio precoz?')),
                  send_list(InsomioPrecoz, append,['A','B','C']),
                  new(Txt1,label(name,'A) No tiene dificultad',font('arial','',10))),
                  new(Txt2,label(name,'B) Dificultad ocasional para dormir',font('arial','',10))),
                  new(Txt3,label(name,'C) Dificultad para dormir cada noche',font('arial','',10))),
                  
                  send(DW,append,InsomioPrecoz),
                  send(DW,append,Txt1),
                  send(DW,append,Txt2),
                  send(DW,append,Txt3),
                  
                  new(InsomioIntermedio, menu('2.-?Insomnio Intermedio?')),
                  send_list(InsomioIntermedio, append,['A','B','C']),
                  new(Txt4,label(name,'A) No hay dificultad',font('arial','',10))),
                  new(Txt5,label(name,'B) Esta desvelado e inquieto o se despierta varias veces durante la noche',font('arial','',10))),
                  new(Txt6,label(name,'C) Esta despierto durante la noche, cualquier ocasi?n de levantarse de la cama se clasifica en 2',font('arial','',10))),

                  send(DW,append,InsomioIntermedio),
                  send(DW,append,Txt4),
                  send(DW,append,Txt5),
                  send(DW,append,Txt6),
                  
                  new(InsomioTardio, menu('3.-?Insomnio tard?o?')),
                  send_list(InsomioTardio, append,['A','B','C']),
                  new(Txt7,label(name,'A) No hay dificultad',font('arial','',10))),
                  new(Txt8,label(name,'B) Se despierta a primeras horas de la madrugada, pero se vuelve a dormir',font('arial','',10))),
                  new(Txt9,label(name,'C) No puede volver a dormirse si se levanta de la cama',font('arial','',10))),

                  send(DW,append,InsomioTardio),
                  send(DW,append,Txt7),
                  send(DW,append,Txt8),
                  send(DW,append,Txt9),
                  
                  new(Total,text_item('Total')),
                  new(Diagnostico,text_item('Diagnostico')),

                  new(BtnEnviar, button('Enviar',message(@prolog,robot,
                                                             InsomioPrecoz?selection,
                                                             InsomioIntermedio?selection,
                                                             InsomioTardio?selection,
                                                             Total,Diagnostico))),
    
                  send(Total,editable,false),
                  send(Diagnostico,editable,false),

                  send(DW,append,Total),
                  send(DW,append,BtnEnviar),
                  send(DW,append,Diagnostico),

                  send(DW,background(white)),
                  send(DW,height(500)),
                  send(DW,width(700)),
                  send(DW,open_centered).


robot(InsomioPrecoz,InsomioIntermedio,InsomioTardio,Total,Diagnostico):-
                                      deTres(N,InsomioPrecoz,InsomioIntermedio,InsomioTardio),
                                      dignostico(N,D),
                                      send(Total,selection,N),
                                      send(Diagnostico,selection,D).

%Combinartor?a de 6
:-dynamic deTres/4.
deTres(0,'A','A','A').
deTres(1,'A','A','B').
deTres(2,'A','A','C').

deTres(1,'A','B','A').
deTres(2,'A','B','B').
deTres(3,'A','B','C').

deTres(2,'A','C','A').
deTres(3,'A','C','B').
deTres(4,'A','C','C').

deTres(1,'B','A','A').
deTres(2,'B','A','B').
deTres(3,'B','A','C').

deTres(2,'B','B','A').
deTres(3,'B','B','B').
deTres(4,'B','B','C').

deTres(3,'B','C','A').
deTres(4,'B','C','B').
deTres(5,'B','C','C').

deTres(2,'C','A','A').
deTres(3,'C','A','B').
deTres(4,'C','A','C').

deTres(3,'C','B','A').
deTres(4,'C','B','B').
deTres(5,'C','B','C').

deTres(4,'C','C','A').
deTres(5,'C','C','B').
deTres(6,'C','C','C').

:-dynamic dignostico/2.
dignostico(0,'No deprimido').
dignostico(1,'Depresi?n ligera/menor').
dignostico(2,'Depresi?n ligera/menor').
dignostico(3,'Depresi?n moderada').
dignostico(4,'Depresi?n moderada').
dignostico(5,'Depresi?n severa').
dignostico(6,'Depresi?n muy severa').

