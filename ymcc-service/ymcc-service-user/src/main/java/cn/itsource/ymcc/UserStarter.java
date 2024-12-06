package cn.itsource.ymcc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class UserStarter {
    public static void main(String[] args) {
        SpringApplication.run(UserStarter.class,args);
    }
}
