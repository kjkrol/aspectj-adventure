package kjkrol.aspectj;

public aspect ContentLikeAspect {

    public static interface ContentFields {

        Integer getAge();

        void setAge(int age);
    }

    declare parents :(@kjkrol.aspectj.ContentLike *) implements ContentFields;

    public Integer ContentFields.getAge() {
        return ContentLikeFieldsHolder.aspectOf(this.getClass()).getAge();
    }

    public void ContentFields.setAge(int age) {
        ContentLikeFieldsHolder.aspectOf(this.getClass()).setAge(age);
    }

}
