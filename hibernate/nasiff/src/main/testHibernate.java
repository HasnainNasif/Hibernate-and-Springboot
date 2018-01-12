package main;

import entity.Student;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

public class testHibernate {



    public static void main(String args[]) {
        Session session = createHibernateSession.hibernateSession();


//        Student student = new Student("Nasif", "IT-13030");
//
//        session.save(student);
//
//        session.getTransaction().commit();
//        System.out.println("Saved....");
        //fetch data
        List<Student> studentList = session.createCriteria(Student.class).list();
        /*int count=0;
        for (Student s : studentList) {
            System.out.println("====" + s);

            s.setName("test new name-"+count++);

            session.update(s);
        }
*/


        /*Student student=studentList.get(0);
        student.setName("Mahib");
        session.update(student);
*/        /*Student student=studentList.get(1);

        session.delete(student);*/

        Query query= session.createSQLQuery("Update student SET name='Hasnain' WHERE name LIKE '%mahib%'");

                query.executeUpdate();

        session.getTransaction().commit();

    }
}
