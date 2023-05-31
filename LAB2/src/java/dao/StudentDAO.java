/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Student;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Random;

/**
 *
 * @author dell
 */
public class StudentDAO {

    public String RandomDateOfBirth() {

        GregorianCalendar gc = new GregorianCalendar();

        int year = randBetween(1900, 2010);

        gc.set(gc.YEAR, year);

        int dayOfYear = randBetween(1, gc.getActualMaximum(gc.DAY_OF_YEAR));

        gc.set(gc.DAY_OF_YEAR, dayOfYear);

        String dob = gc.get(gc.DAY_OF_MONTH) + "-" + (gc.get(gc.MONTH) + 1) + "-" + gc.get(gc.YEAR);
        return dob;

    }

    public static int randBetween(int start, int end) {
        return start + (int) Math.round(Math.random() * (end - start));
    }

    public String genName() {

        String alpha = "abcdefghijklmnopqrstuvwxyz";
        String alphaUpperCase = alpha.toUpperCase();
        String ALPHA_NUMERIC = alpha + alphaUpperCase;
        StringBuilder sb = new StringBuilder();
        int numberOfCharactor = 8;
        for (int i = 0; i < numberOfCharactor; i++) {
            int number = randomNumber(0, ALPHA_NUMERIC.length() - 1);
            char ch = ALPHA_NUMERIC.charAt(number);
            sb.append(ch);
        }
        return sb.toString();
    }

    public static int randomNumber(int min, int max) {
        Random generator = new Random();
        return generator.nextInt((max - min) + 1) + min;
    }

    public boolean genGender() {
        Random random = new Random();
        return random.nextBoolean();

    }

    public List<Student> getAll(int numOfStudent) {
        List<Student> list = new ArrayList<>();

        for (int i = 0; i < numOfStudent; i++) {
            

            Student s = new Student();
            s.setName(genName());
            s.setGender(genGender());
            try {
                SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                Date date = formatter.parse(RandomDateOfBirth());

                s.setDob(date);

            } catch (ParseException e) {
                e.printStackTrace();
            }
           s.setId(i + 1);
           s.getId();
            s.getName();
            s.isGender();
            s.getDob();
            list.add(s);
        }
        return list;
    }

    public static void main(String[] args) throws ParseException {

        StudentDAO rand = new StudentDAO();

        System.out.println(rand.getAll(8));
    }
}
