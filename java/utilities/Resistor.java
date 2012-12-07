/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

/**
 *
 * @author joshualong
 */
public class Resistor {
    
    private String[] colors;
    
    private double ohms;
    private double tol;
    
    private int numColors;
    
    public Resistor(String[] colors)
    {
        this.colors = colors;
        numColors = calcNumColors();
        ohms = calcOhms();
        tol = calcTol();
        numColors = calcNumColors();
    }
    
    private double calcOhms()
    {
        double val = 0;
        int colorDigit = 0;
        
        for(int i=3; i >= 0; i--)
        {
            if(!(colors[i].equalsIgnoreCase("None")))
            {
                val += (colorVal(colors[i]) * Math.pow(10, colorDigit));
                colorDigit++;
            }
        }
        
        val *= calcMultiplier();
        
        return val;
    }
    
    private double calcTol()
    {
        if(colors[5].equalsIgnoreCase("Brown"))
        {
            return 1;
        }
        if(colors[5].equalsIgnoreCase("Red"))
        {
            return 2;
        }
        if(colors[5].equalsIgnoreCase("Green"))
        {
            return .05;
        }
        if(colors[5].equalsIgnoreCase("Blue"))
        {
            return .25;
        }
        if(colors[5].equalsIgnoreCase("Violet"))
        {
            return .1;
        }
        if(colors[5].equalsIgnoreCase("Gray"))
        {
            return .05;
        }
        if(colors[5].equalsIgnoreCase("Gold"))
        {
            return 5;
        }
        if(colors[5].equalsIgnoreCase("Silver"))
        {
            return 10;
        }
        
        return 20;
    }
    
    private int calcNumColors()
    {
        int numOfColors = 0;
        
        for(int i=0; i < 4; i++)
        {
            if(!colors[i].equalsIgnoreCase("None"))
            {
                numOfColors++;
            }
        }
        
        numOfColors += 2;
        
        return numOfColors;
    }
    
    private int colorVal(String color)
    {
        if(color.equalsIgnoreCase("Black"))
        {
            return 0;
        }
        if(color.equalsIgnoreCase("Brown"))
        {
            return 1;
        }
        if(color.equalsIgnoreCase("Red"))
        {
            return 2;
        }
        if(color.equalsIgnoreCase("Orange"))
        {
            return 3;
        }
        if(color.equalsIgnoreCase("Yellow"))
        {
            return 4;
        }
        if(color.equalsIgnoreCase("Green"))
        {
            return 5;
        }
        if(color.equalsIgnoreCase("Blue"))
        {
            return 6;
        }
        if(color.equalsIgnoreCase("Violet"))
        {
            return 7;
        }
        if(color.equalsIgnoreCase("Gray"))
        {
            return 8;
        }
        if(color.equalsIgnoreCase("White"))
        {
            return 9;
        }
        
        return -1; 
    }
    
    private double calcMultiplier()
    {
        if(colors[4].equalsIgnoreCase("Black"))
        {
            return Math.pow(10, 0);
        }
        if(colors[4].equalsIgnoreCase("Brown"))
        {
            return Math.pow(10, 1);
        }
        if(colors[4].equalsIgnoreCase("Red"))
        {
            return Math.pow(10, 2);
        }
        if(colors[4].equalsIgnoreCase("Orange"))
        {
            return Math.pow(10, 3);
        }
        if(colors[4].equalsIgnoreCase("Yellow"))
        {
            return Math.pow(10, 4);
        }
        if(colors[4].equalsIgnoreCase("Green"))
        {
            return Math.pow(10, 5);
        }
        if(colors[4].equalsIgnoreCase("Blue"))
        {
            return Math.pow(10, 6);
        }
        if(colors[4].equalsIgnoreCase("Violet"))
        {
            return Math.pow(10, 7);
        }
        if(colors[4].equalsIgnoreCase("Gray"))
        {
            return Math.pow(10, 8);
        }
        if(colors[4].equalsIgnoreCase("White"))
        {
            return Math.pow(10, 9);
        }
        if(colors[4].equalsIgnoreCase("Gold"))
        {
            return Math.pow(10, -1);
        }
        if(colors[4].equalsIgnoreCase("Silver"))
        {
            return Math.pow(10, -2);
        }
        
        return -1; 
    }
    
    // Change.. well you'll get it
    public String getResistorValue()
    {
      
        double om = ohms;
        String o;
        
        if(ohms < 1000 && ohms >= 0){
            o = String.format("%4.3f", om);
            return o + " Ohms At " + "+/-" + tol + "% Tolerance";
        }
        else if(ohms < 1000000){
            o = String.format("%4.3f", om / 1000);
            return o + " KOhms At " + "+/-" + tol + "% Tolerance";
        }
        else if(ohms < 1000000000){
            o = String.format("%4.3f", om / 1000000);
            return o + " MOhms At " + "+/-" + tol + "% Tolerance";
        }
        else if((long)ohms < 1000000000000L){
            o = String.format("%4.3f", om / 1000000000);
            return o + " GOhms At " + "+/-" + tol + "% Tolerance";
        }
        else if((long)ohms < 1000000000000000L){
            o = String.format("%4.3f", om / 1000000000000L);
            return o + " TOhms At " + "+/-" + tol + "% Tolerance";
        }
        return "There was an error. Either You have some insane resistance\n" +
               "(over 1000000000000000 Ohms), entered in erronous data\n"
               + "or you have just exposed a bug in my code. Thanks! Please\n"
               + "call ###-###-#### and tell me what you did.";
    }
    
    public String colorAt(int index)
    {
        return colors[index];
    }
}
