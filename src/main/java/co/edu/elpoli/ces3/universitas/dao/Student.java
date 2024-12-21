package co.edu.elpoli.ces3.universitas.dao;

import java.sql.Struct;
import java.util.ArrayList;
import java.util.Date;

public class Student {

    public String name;
    private String lastName;
    private int age;
    private Date bithDate;
    private boolean isMarriend;
    private String[] subjectStudy;
    protected String documentId;
    
    private int[] kmTrabeled;

    private ArrayList<Integer> subjects;

    public Student(){
        age = 5;
        name = "default";
        kmTrabeled = new int[10];
        subjects = new ArrayList();
        subjects.add(9);
        //subjects.add(true);
        //subjects.add(new String("Texto"));
        kmTrabeled[0] = 10;
        this.kmTrabeled[9] = 9;
        for (int i = 0; i < 10; i++) {
            System.out.println(kmTrabeled[i]);
        }
    }

    public Student(String name){
        this.name = name;
    }

    public Student(String lastName, String name){
        this.name = name;
        this.age = 8;
        this.lastName = lastName;
    }

    public Student(boolean isMarriend){
        this.isMarriend = isMarriend;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Date getBithDate() {
        return bithDate;
    }

    public void setBithDate(Date bithDate) {
        this.bithDate = bithDate;
    }

    public boolean isMarriend() {
        return isMarriend;
    }

    public void setMarriend(boolean marriend) {
        isMarriend = marriend;
    }

    public String[] getSubjectStudy() {
        return subjectStudy;
    }

    public void setSubjectStudy(String[] subjectStudy) {
        this.subjectStudy = subjectStudy;
    }

    public String getDocumentId() {
        return documentId;
    }

    public void setDocumentId(String documentId) {
        this.documentId = documentId;
    }

    public double calcularNotaFinal(){
        double n1, n2;
        n1 = 4.4;
        n2 = 3.9;
        printNote(n2);
        return (n1 + n2) / 2;
    }

    public double calcularNotaFinal(int note){
        return 0;
    }

    private void printNote(double note){
        System.out.println("La nota es: " + note);
    }

    public static void main(String[] args) {
        Student pepe = new Student();
        /*Student ana = new Student(true);
        System.out.println(ana.calcularNotaFinal());
        ana.printNote(3.9);
        System.out.println(pepe.name);*/
    }

    @Override
    public String toString() {
        return "Estudiante " + this.getName() + " " + this.lastName + " " + super.toString();
    }
}
