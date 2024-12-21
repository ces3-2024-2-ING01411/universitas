package co.edu.elpoli.ces3.universitas.servlet;

import co.edu.elpoli.ces3.universitas.dao.Student;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "srvStudet", value = "/student")
public class SrvStudent extends HttpServlet {
    private int myNumber;

    public SrvStudent(){}
    private ArrayList<Student> listStudents;

    @Override
    public void init() throws ServletException {
        super.init();
        this.listStudents = new ArrayList();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");

        GsonBuilder builder = new GsonBuilder();
        Gson json = builder.create();

        ArrayList<Student> students = new ArrayList<>();

        Student s1 = new Student();
        Student pepe = new Student("pepe");

        students.add(s1);
        students.add(pepe);

        //String json = "[{\"name\": \"Diana\", \"lenguages\": [\"spanish\", \"english\"]}},{},{}]";

        PrintWriter out = response.getWriter();
        out.println(json.toJson(students));
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
        JsonObject studentObject = this.getParamsFromBody(req);
        Student myStudent = new Student("pepe");

        System.out.println(studentObject.get("lastName"));
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp);
    }

    public JsonObject getParamsFromBody(HttpServletRequest request) throws IOException {
        BufferedReader reader = request.getReader();
        StringBuilder sb = new StringBuilder();
        String line = reader.readLine();
        while (line != null) {
            sb.append(line + "\n");
            line = reader.readLine();
        }
        reader.close();
        return JsonParser.parseString(sb.toString()).getAsJsonObject();
    }

}
