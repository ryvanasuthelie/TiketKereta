/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tiketkereta;

import java.sql.SQLException;
import view.KeretaView;
import view.TransaksiView;

/**
 *
 * @author USER
 */
public class TiketKereta {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        new KeretaView().show();
    }
    
}
