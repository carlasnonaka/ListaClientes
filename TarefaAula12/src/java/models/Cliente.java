/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Cliente {
    private int id;
    private String name;
    private String lastname;
    private String company;

    public Cliente(int id, String name, String lastname, String company) {
        this.id = id;
        this.name = name;
        this.lastname = lastname;
        this.company = company;
    }
    
     public static int getCount() throws Exception{
        ArrayList<Cliente> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\ThinkPad\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select count(*) as count from customers;");
        int count = 0;
        while(rs.next()){
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        return count;
    }
    
    public static ArrayList<Cliente> getlist() throws ClassNotFoundException, SQLException
    {
        ArrayList<Cliente> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\ThinkPad\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM customers;");
        while(rs.next()){
            int id = rs.getInt("CustomerId");
            String name = rs.getString("FirstName");
            String lastname = rs.getString("LastName");
            String company = rs.getString("Company");
            Cliente a = new Cliente (id, name, lastname, company);
            list.add(a);   
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    
    
}

