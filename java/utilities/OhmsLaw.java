/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

/**
 *
 * @author Joshua
 */
public class OhmsLaw {
    
    public static double calcOhms(double amps, double volts){
        return volts / amps;
    }
    
    public static double calcAmps(double ohms, double volts){
        return volts / ohms;
    }
    
    public static double calcVolts(double ohms, double amps){
        return ohms * amps;
    }
}
