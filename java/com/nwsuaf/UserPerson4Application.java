package com.nwsuaf;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan("com.nwsuaf.mapper")//与dao层的@Mapper二选一写上即可(主要作用是扫包)
public class UserPerson4Application {
    public static void main(String[] args) {
        SpringApplication.run(UserPerson4Application.class, args);
    }
}