package examples;

import com.intuit.karate.junit5.Karate;

class PublicGetTest {

    @Karate.Test
    Karate testPublicGet() {
        return Karate.run("classpath:examples/public-get.feature");
    }
}