/* Proyecto: Sistema Experto
 * Programadores: Alvarado Carlos, Blas Clinton, Pagola Angel, Paucar Frank, Silvestre Jefferson.
 * Programa: Prototipo de sistema experto que permita diagnosticar el nivel de
   depresi�n en los estudiantes de la Universidad Nacional Santiago Ant�nez de
   Mayolo como apoyo al trabajo de los psic�logos.
 */

/* Libraries
 * library(pce): Proporciona gr�ficos a SWI-Prolog
 * library(pce_style_item):
 */
:- use_module(library(pce)).
:- use_module(library(pce_style_item)).


/* Home
 *
 */

home:- new(Window,dialog('Inicio')),
       send(Window,height(650)),
       send(Window,width(1024)),
       send(Window,open_centered).
       :-home.
       

