package Laba8;

import java.sql.*;
import java.util.Scanner;

public class Exam {
    static Scanner inp;

    public static void main(String[] args) {
        try {
            Class.forName("org.postgresql.Driver");
            try (Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Laba8", "postgres", "ka1eka")) {
                // 4.1
                System.out.println("Данные из первой таблицы");
                PreparedStatement prsment = conn.prepareStatement("select * from cities");
                ResultSet res = prsment.executeQuery();
                while (res.next()) {
                    int id = res.getInt("id");
                    String name = res.getString("name");
                    int population = res.getInt("population");
                    System.out.println(id + " " + name + " " + population);
                }

//                System.out.println("Данные из второй таблицы");
//                prsment = conn.prepareStatement("select * from название второй таблицы");
//                res = prsment.executeQuery();
//                while (res.next()) {
//                    int c1 = res.getInt("название стобца");
//                    String c2 = res.getString("название стобца");
//                    int c3 = res.getInt("название стобца");
//                    System.out.println(c1 + " " + c2 + " " + c3);
//                }

                System.out.println();
                // 4.2
//                prsment = conn.prepareStatement("insert into cities (name, population) VALUES (?, ?);");
//                prsment.setString(1, "что-то");
//                prsment.setInt(2, 123);
//                prsment.executeUpdate();
                // дальше аналогично
//                prsment.setString(1,"Париж");
//                prsment.setInt(2,4655147);
//                prsment.executeUpdate(); аналогично

                System.out.println();
//                // 4.3
                Statement statement = conn.createStatement();
                inp = new Scanner(System.in);
//                System.out.println("Введите название таблицы");
//                String table = inp.next();
//                System.out.println("Введите ключ для изменения записи");
//                int key = inp.nextInt();
//                System.out.println("Введите новое значение");
//                String value1 = inp.next();
//                System.out.println("Введите новое значение");
//                String value2 = inp.next();
//                String sql = String.format("UPDATE %s\n" +
//                        "SET name = '%s', population = '%s' WHERE id = %d;",table,value1,value2,key);
//                statement.executeUpdate(sql);

                // 4.4
//                System.out.println("Отбор и сортировка по некотормоу критерию");
//                prsment = conn.prepareStatement("SELECT name,population FROM cities \n" +
//                        "WHERE population > 1000000\n" +
//                        "ORDER BY population DESC");
//                res = prsment.executeQuery();
//                while (res.next()) {
//                    String c1 = res.getString(1);
//                    int c2 = res.getInt(2);
//                    System.out.println(c1 + " " + c2);
//                }

                System.out.println();
                // 4.5
//                System.out.println("Введите название таблицы из которой хотите удалить запись ");
//                String n = inp.next();
//                System.out.println("Введите ключ");
//                int key2 = inp.nextInt();
//                String sql = String.format("DELETE FROM %s \n" +
//                        "WHERE id = '%d';",n,key2);
//                statement.executeUpdate(sql);

                // 4.6
//                String sql = String.format("CREATE TABLE people (id SERIAL NOT NULL PRIMARY KEY,\n" +
//                        "\t\t\t\t\tfirstname CHARACTER VARYING(30),\n" +
//                        "\t\t\t\t\tlastname CHARACTER VARYING(30),\n" +
//                        "\t\t\t\t\temail CHARACTER VARYING(30),\n" +
//                        "\t\t\t\t\tage integer,\n" +
//                        "\t\t\t\t\tcityid integer,\n" +
//                        "\t\t\t\t\tFOREIGN KEY (cityid) REFERENCES cities (id));");
//                statement.executeUpdate(sql);
//
//                prsment = conn.prepareStatement("insert into \"people\" (firstname, lastname, email, age, cityid) VALUES (?, ?, ?, ?, ?);");
//                prsment.setString(1, "Слава");
//                prsment.setString(2, "Иванов");
//                prsment.setString(3,"slavaivanov@mail.ru");
//                prsment.setInt(4,18);
//                prsment.setInt(5,1);
//                prsment.executeUpdate();
//                prsment.setString(1, "Иван");
//                prsment.setString(2, "Кукушкин");
//                prsment.setString(3,"kykywkin@mail.ru");
//                prsment.setInt(4,15);
//                prsment.setInt(5,2);
//                prsment.executeUpdate();
//                prsment.setString(1, "Александр");
//                prsment.setString(2, "Птушкин");
//                prsment.setString(3,"ptuwkin@mail.ru");
//                prsment.setInt(4,19);
//                prsment.setInt(5,3);
//                prsment.executeUpdate();

            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.exit(0);
        }
    }
}
//    CREATE TABLE market (id SERIAL NOT NULL PRIMARY KEY,
//                         name CHARACTER VARYING(30),
//    addres integer);
//        CREATE TABLE employees (id SERIAL NOT NULL PRIMARY KEY,
//        firstname CHARACTER VARYING(30),
//        lastname CHARACTER VARYING(30),
//        age integer,
//        position CHARACTER VARYING(30),
//        marketid integer,
//        FOREIGN KEY (marketid) REFERENCES market (id))
//INSERT INTO market (name, addres)
//    VALUES
//            ('DNS', 49),
//('МВидео',75),
//        ('Технопарк',8);
//        INSERT INTO employees (firstname,lastname,age,position)
//        VALUES
//        ('Иван','Иванов', 25,'консультант'),
//        ('Александр','Кукушкин', 19,'менеджер'),
//        ('Василий','Пупкин', 30,'заведующий');
