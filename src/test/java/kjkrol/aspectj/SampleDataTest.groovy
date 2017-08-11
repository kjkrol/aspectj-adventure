package kjkrol.aspectj

import spock.lang.Specification
import spock.lang.Subject

class SampleDataTest extends Specification {

    @Subject
    SampleData sampleData = new SampleData()

    def "test if @ContentLike annotation works correct"() {
        given:
            sampleData.setName('Karol')
            sampleData.setAge(35)
        expected:
            sampleData.getName() == 'Karol'
            sampleData.getAge() == 35
    }
}
