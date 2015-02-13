
/* Calculo del Área de un trapecio */
/* primera parte */

package areatrapecio;

import java_cup.runtime.*;
import java.io.Reader;

%%
/* segunda parte */ 

%class AreaTrapecio
  
%line	
%column	
%cup		

%{
    /*  Generamos un java_cup.Symbol para guardar el tipo de token 
        encontrado */
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    
    /* Generamos un Symbol para el tipo de token encontrado 
       junto con su valor */
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

/* tercera parte */
/*  Un salto de linea es un \n, \r o \r\n dependiendo del SO   */
Salto = \r|\n|\r\n
Espacio = {Salto} | [ \t\f]
Entero = -?[0-9]



%%
<YYINITIAL>{

/* PALABRAS RESERVADAS */
//exprecion regular ocurra una o mas veses con el +}

","		       {System.out.println(""); return symbol(sym.COMA);}
"AreaTrapecio" {System.out.println(""); return symbol(sym.FINLINEA);}
{Entero}*      {System.out.println("NUMERO:  " + yytext()); return symbol(sym.NUMERO, new Integer(yytext()));}


{Espacio} { }
. { System.out.println( " ERROR LEXICO, SOLO SE DEBEN INGRESAR NUMEROS ENTEROS:  " + yytext() ); }
}

