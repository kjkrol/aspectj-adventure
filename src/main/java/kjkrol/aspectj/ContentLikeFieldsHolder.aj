package kjkrol.aspectj;

public aspect ContentLikeFieldsHolder pertypewithin(@kjkrol.aspectj.ContentLike *) {

    private Integer age;

    after() : staticinitialization(*) {
        age = 0;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
