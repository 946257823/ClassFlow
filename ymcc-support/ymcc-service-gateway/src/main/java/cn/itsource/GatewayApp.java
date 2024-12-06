package cn.itsource;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.gateway.route.RouteDefinition;
import org.springframework.cloud.gateway.route.RouteDefinitionLocator;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@EnableDiscoveryClient
public class GatewayApp {
    public static void main(String[] args) {
        SpringApplication.run(GatewayApp.class,args);
    }

    @Bean
    public CommandLineRunner commandLineRunner(RouteDefinitionLocator locator) {
        return args -> {
            System.out.println("Loaded Routes:");
            locator.getRouteDefinitions().toIterable().forEach(route -> {
                System.out.println("Route ID: " + route.getId());
                System.out.println("Route URI: " + route.getUri());
            });
        };
    }


}
