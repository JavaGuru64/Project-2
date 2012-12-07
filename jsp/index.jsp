<%-- 
    Document   : index
    Created on : Nov 24, 2012, 12:39:30 PM
    Author     : Joshua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resistor Color Calculator</title>
        <link rel="stylesheet" type="text/css" href="css/color_options.css"/>
        <link rel="stylesheet" type="text/css" href="css/form_layout.css"/>
        <link rel="stylesheet" type="text/css" href="css/main.css"/>
    </head>
    <body>
    <div id="main">
        <%@ page import="utilities.Resistor, utilities.OhmsLaw" %>
        <h1 id="title">Resistors</h1>
        
        <% 
        Resistor r = (Resistor)request.getAttribute("resistor");
        if(r == null){
            r = new utilities.Resistor(
                new String[]{"Brown", "Black", "None", "None", "Red", "Gold"});
        }
        String amps = (String) request.getAttribute("amps");
        String ohms = (String) request.getAttribute("ohms");
        String volts = (String) request.getAttribute("volts");
        
        if(amps == null){
           amps = ""; 
        }
        if(ohms == null){
           ohms = "";
        }
        if(volts == null){
           volts = "";
        }
        %>
        <form class="form1" action="ResistCalcServlet" method="post">
            <h2> Resistor Color Value Finder </h2>
            <div class="left">
                <p>Color Band 1</p>  
                
                <select name = "color1">
                   <%if(r.colorAt(0).equalsIgnoreCase("Black")){%> 
                    <option selected>Black</option>
                   <%}else{%>
                    <option>Black</option>
                   <%}if(r.colorAt(0).equalsIgnoreCase("Brown")){%>
                    <option selected>Brown</option>
                   <%}else{%>
                    <option>Brown</option>
                   <%}if(r.colorAt(0).equalsIgnoreCase("Red")){%>
                    <option selected>Red</option>
                   <%}else{%>
                    <option>Red</option>
                   <%}if(r.colorAt(0).equalsIgnoreCase("Orange")){%>
                    <option selected>Orange</option>
                   <%}else{%>
                    <option>Orange</option>
                   <%}if(r.colorAt(0).equalsIgnoreCase("Yellow")){%>
                    <option selected>Yellow</option>
                   <%}else{%>
                    <option>Yellow</option>
                   <%}if(r.colorAt(0).equalsIgnoreCase("Green")){%>
                    <option selected>Green</option>
                   <%}else{%>
                    <option>Green</option>
                   <%}if(r.colorAt(0).equalsIgnoreCase("Blue")){%>
                    <option selected>Blue</option>
                   <%}else{%>
                    <option>Blue</option>
                   <%}if(r.colorAt(0).equalsIgnoreCase("Violet")){%>
                    <option selected>Violet</option>
                   <%}else{%>
                    <option>Violet</option>
                   <%}if(r.colorAt(0).equalsIgnoreCase("Gray")){%>
                    <option selected>Gray</option>
                   <%}else{%>
                    <option>Gray</option>
                   <%}if(r.colorAt(0).equalsIgnoreCase("White")){%>
                    <option selected>White</option>
                   <%}else{%>
                    <option>White</option>
                   <%}%>
                </select>
            </div>
            
            <div class="left">
                <p>Color Band 2</p>  
                
                <select name ="color2">
                   <%if(r.colorAt(1).equalsIgnoreCase("Black")){%> 
                    <option selected>Black</option>
                   <%}else{%>
                    <option>Black</option>
                   <%}if(r.colorAt(1).equalsIgnoreCase("Brown")){%>
                    <option selected>Brown</option>
                   <%}else{%>
                    <option>Brown</option>
                   <%}if(r.colorAt(1).equalsIgnoreCase("Red")){%>
                    <option selected>Red</option>
                   <%}else{%>
                    <option>Red</option>
                   <%}if(r.colorAt(1).equalsIgnoreCase("Orange")){%>
                    <option selected>Orange</option>
                   <%}else{%>
                    <option>Orange</option>
                   <%}if(r.colorAt(1).equalsIgnoreCase("Yellow")){%>
                    <option selected>Yellow</option>
                   <%}else{%>
                    <option>Yellow</option>
                   <%}if(r.colorAt(1).equalsIgnoreCase("Green")){%>
                    <option selected>Green</option>
                   <%}else{%>
                    <option>Green</option>
                   <%}if(r.colorAt(1).equalsIgnoreCase("Blue")){%>
                    <option selected>Blue</option>
                   <%}else{%>
                    <option>Blue</option>
                   <%}if(r.colorAt(1).equalsIgnoreCase("Violet")){%>
                    <option selected>Violet</option>
                   <%}else{%>
                    <option>Violet</option>
                   <%}if(r.colorAt(1).equalsIgnoreCase("Gray")){%>
                    <option selected>Gray</option>
                   <%}else{%>
                    <option>Gray</option>
                   <%}if(r.colorAt(1).equalsIgnoreCase("White")){%>
                    <option selected>White</option>
                   <%}else{%>
                    <option>White</option>
                   <%}%>
                </select>
            </div>
            
            <div class="left">
                <p>Color Band 3</p>  
                
                <select name ="color3">
                   <%if(r.colorAt(2).equalsIgnoreCase("None")){%> 
                    <option selected>None</option>
                   <%}else{%>
                    <option>None</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("Black")){%> 
                    <option selected>Black</option>
                   <%}else{%>
                    <option>Black</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("Brown")){%>
                    <option selected>Brown</option>
                   <%}else{%>
                    <option>Brown</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("Red")){%>
                    <option selected>Red</option>
                   <%}else{%>
                    <option>Red</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("Orange")){%>
                    <option selected>Orange</option>
                   <%}else{%>
                    <option>Orange</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("Yellow")){%>
                    <option selected>Yellow</option>
                   <%}else{%>
                    <option>Yellow</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("Green")){%>
                    <option selected>Green</option>
                   <%}else{%>
                    <option>Green</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("Blue")){%>
                    <option selected>Blue</option>
                   <%}else{%>
                    <option>Blue</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("Violet")){%>
                    <option selected>Violet</option>
                   <%}else{%>
                    <option>Violet</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("Gray")){%>
                    <option selected>Gray</option>
                   <%}else{%>
                    <option>Gray</option>
                   <%}if(r.colorAt(2).equalsIgnoreCase("White")){%>
                    <option selected>White</option>
                   <%}else{%>
                    <option>White</option>
                   <%}%>
                </select>
            </div>
 
            <div class="left">
                <p>Color Band 4</p>  
                
                <select name ="color4">
                   <%if(r.colorAt(3).equalsIgnoreCase("None")){%> 
                    <option selected>None</option>
                   <%}else{%>
                    <option>None</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("Black")){%> 
                    <option selected>Black</option>
                   <%}else{%>
                    <option>Black</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("Brown")){%>
                    <option selected>Brown</option>
                   <%}else{%>
                    <option>Brown</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("Red")){%>
                    <option selected>Red</option>
                   <%}else{%>
                    <option>Red</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("Orange")){%>
                    <option selected>Orange</option>
                   <%}else{%>
                    <option>Orange</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("Yellow")){%>
                    <option selected>Yellow</option>
                   <%}else{%>
                    <option>Yellow</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("Green")){%>
                    <option selected>Green</option>
                   <%}else{%>
                    <option>Green</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("Blue")){%>
                    <option selected>Blue</option>
                   <%}else{%>
                    <option>Blue</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("Violet")){%>
                    <option selected>Violet</option>
                   <%}else{%>
                    <option>Violet</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("Gray")){%>
                    <option selected>Gray</option>
                   <%}else{%>
                    <option>Gray</option>
                   <%}if(r.colorAt(3).equalsIgnoreCase("White")){%>
                    <option selected>White</option>
                   <%}else{%>
                    <option>White</option>
                   <%}%>
                </select>
            </div>
            
            <div class="left">
                <p>Multiplier</p>  
                
                <select name ="multi">
                   <%if(r.colorAt(4).equalsIgnoreCase("Black")){%> 
                    <option selected>Black</option>
                   <%}else{%>
                    <option>Black</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Brown")){%>
                    <option selected>Brown</option>
                   <%}else{%>
                    <option>Brown</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Red")){%>
                    <option selected>Red</option>
                   <%}else{%>
                    <option>Red</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Orange")){%>
                    <option selected>Orange</option>
                   <%}else{%>
                    <option>Orange</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Yellow")){%>
                    <option selected>Yellow</option>
                   <%}else{%>
                    <option>Yellow</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Green")){%>
                    <option selected>Green</option>
                   <%}else{%>
                    <option>Green</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Blue")){%>
                    <option selected>Blue</option>
                   <%}else{%>
                    <option>Blue</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Violet")){%>
                    <option selected>Violet</option>
                   <%}else{%>
                    <option>Violet</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Gray")){%>
                    <option selected>Gray</option>
                   <%}else{%>
                    <option>Gray</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("White")){%>
                    <option selected>White</option>
                   <%}else{%>
                    <option>White</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Gold")){%>
                    <option selected>Gold</option>
                   <%}else{%>
                    <option>Gold</option>
                   <%}if(r.colorAt(4).equalsIgnoreCase("Silver")){%>
                    <option selected>Silver</option>
                   <%}else{%>
                    <option>Silver</option>
                   <%}%>
                </select>
            </div>
            
            <div class="left">
                <p>Tolerance</p>  
                
                <select name ="tol">
                   <%if(r.colorAt(5).equalsIgnoreCase("Brown")){%>
                    <option selected>Brown</option>
                   <%}else{%>
                    <option>Brown</option>
                   <%}if(r.colorAt(5).equalsIgnoreCase("Red")){%>
                    <option selected>Red</option>
                   <%}else{%>
                    <option>Red</option>
                   <%}if(r.colorAt(5).equalsIgnoreCase("Green")){%>
                    <option selected>Green</option>
                   <%}else{%>
                    <option>Green</option>
                   <%}if(r.colorAt(5).equalsIgnoreCase("Blue")){%>
                    <option selected>Blue</option>
                   <%}else{%>
                    <option>Blue</option>
                   <%}if(r.colorAt(5).equalsIgnoreCase("Violet")){%>
                    <option selected>Violet</option>
                   <%}else{%>
                    <option>Violet</option>
                   <%}if(r.colorAt(5).equalsIgnoreCase("Gray")){%>
                    <option selected>Gray</option>
                   <%}else{%>
                    <option>Gray</option>
                   <%}if(r.colorAt(5).equalsIgnoreCase("Gold")){%>
                    <option selected>Gold</option>
                   <%}else{%>
                    <option>Gold</option>
                   <%}if(r.colorAt(5).equalsIgnoreCase("Silver")){%>
                    <option selected>Silver</option>
                   <%}else{%>
                    <option>Silver</option>
                   <%}%>
                </select>
            </div>
            
            <br class ="clear">
            
            <div id="form1_submit">
            <input type="submit" value="Find Value">
            </div>
            
            <br class ="clear">
            <br>
            
            <h3><%= r.getResistorValue()%></h3>
        </form>
        <br>
        <br>
        <br>
        <form class="form2" action="OhmsLawServlet" method="post">
            <h2> Ohms Law Calculator</h2>
            <div>
            <p class="left">Amps:<input type="text" name="amps" value="<%= amps%>"></p>
            <p class="left">Ohms:<input type="text" name="ohms" value="<%= ohms%>"></p>
            <p class="left">Volts:<input type="text" name="volts" value="<%= volts%>"></p>
            <br class ="clear">
            <input id="form2_submit" type="submit" value="Calculate">
            </div>
        </form>
        <br>
        <br>
    </div>
            
    <div class="copy">
    <p>
        <br><br>
         This site written by Joshua Long &copy; 2012.<br>
         This is my school project 2 for CIS-2206.<br>
         All code is placed in the public domain.
        <br><br><br>
    </p>    
    </div>
    </body>
</html>
