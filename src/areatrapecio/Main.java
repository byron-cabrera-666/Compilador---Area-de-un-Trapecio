/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package areatrapecio;

import java.io.IOException;

/**
 *
 * @author BYRON
 */
public class Main {

     public static void main(String[] args) throws IOException, Exception {
        
        String path = "src\\areatrapecio\\AreaTrapecio.flex";
//          String [] formula = {"8,4,5 AreaTrapecio"};      
//        String area= "AreaTrapecio.cup";
//        String [] lex = {path};
//        String [] sintac={"-parser","AnalizadorSintactico",area};
//        JFlex.Main.main(lex);
//        java_cup.Main.main(sintac);
        
        String [] archivo={"src\\areatrapecio\\prueba.txt"};
        AnalizadorSintactico.main(archivo);
    }

}
