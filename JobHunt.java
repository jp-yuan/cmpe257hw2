import org.neo4j.driver.*;
import static org.neo4j.driver.Values.parameters;

public class JobHunt {
    private static final String URI = "bolt://localhost:7687/jobhunt";
    private static final String USER = "neo4j";
    private static final String PASSWORD = "YHNtgb123";
    private final Driver driver;

    public JobHunt(String uri, String user, String password) {
        this.driver = GraphDatabase.driver(uri, AuthTokens.basic(user, password));
        try {
            // Attempt to open a session to check the connection
            try (Session session = driver.session()) {
                session.run("RETURN 1").consume();
                System.out.println("Successfully connected to Neo4j database.");
            }
        } catch (Exception e) {
            // Handle any exceptions
            System.err.println("Failed to connect to Neo4j database: " + e.getMessage());
        }
    }

    public void close() {
        // Close the driver when finished
        if (driver != null) {
            driver.close();
            System.out.println("Connection to Neo4j database closed.");
        }
    }


    public void addPerson(String name, int yearsExperience, String workArea, boolean employed) {
        try (var session = driver.session()) {
            session.writeTransaction(tx -> {
                var query = "CREATE (p:Person {name: $name, yearsExperience: $yearsExperience, workArea: $workArea, employed: $employed})";
                tx.run(query, parameters("name", name, "yearsExperience", yearsExperience, "workArea", workArea, "employed", employed));
                return null;
            });
        }
        }


    public void addReference(String person1, String person2){

    }

    public void Qualified(String name, String work_area, int threshold ){

    }

    public void mightSupport(){

    }



    public static void main(String[] args) {
        JobHunt jobHunt = new JobHunt(URI, USER, PASSWORD);
        // Do your operations with the database here


        jobHunt.close();
    }
    }

