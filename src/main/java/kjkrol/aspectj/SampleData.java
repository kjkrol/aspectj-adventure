package kjkrol.aspectj;

@ContentLike
public class SampleData {

    public void doSomething() {
    }

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "SampleData{" +
                "name='" + name + "\'," +
                " age='" + getAge() + "\'" +
                '}';
    }
}
