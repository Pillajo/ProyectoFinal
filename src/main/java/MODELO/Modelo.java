/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

/**
 *
 * @author josep
 */
public class Modelo {
    

    private final int porCumplir = 3;
    private int porFinalizar = 0;
    private String username = "jose";
    private String password = "2004";
    // Obtener el nombre de usuario
    public String getUsername() {
        return username;
    }
    // Establecer el nombre de usuario
    public void setUsername(String Username) {
        this.username = Username;
    }
    // Obtener la contraseña
    public String getPassword() {
        return password;
    }

    public void setPassword(String Password) {
        this.password = Password;
    }
    // Método para validar las credenciales ingresadas por el usuario
    public boolean validateCredentials(String enteredUsername, String enteredPassword) {
        System.out.println("Entered txtuser: " + enteredUsername);
        System.out.println("Entered txtpass: " + enteredPassword);
        // Verifica si la cuenta está suspendida debido a demasiados intentos fallidos
        if (porFinalizar >= porCumplir) {
            System.out.println("Su cuneta ha sido suspendida <a href='http://localhost:8080/Mlog/'>¿Algo salio mal?</a>");
            return false;
        }
        // Realiza la validación de las credenciales comparando los datos
        boolean isValid = username.equals(enteredUsername) && password.equals(enteredPassword);
        {
            // Si las credenciales son inválidas, muestra la cantidad de intentos restantes
            System.out.println("Intentos :  " + (porCumplir - porFinalizar));
            porFinalizar++;
        }
        return isValid;
    }
    // Reinicia el contador de intentos
    public void resetAttempts() {
        porFinalizar = 0;
    }
    // Obtiene la cantidad de intentos restantes permitidos

    public int getRemainingAttempts() {
        return porCumplir - porFinalizar;
    }

    public Modelo() {
    }
}
