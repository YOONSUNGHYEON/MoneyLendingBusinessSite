package net.skhu.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    //@Column(name="loginId")
    String loginId;

    String password;
    String name;
    String userType;

    @JsonIgnore
    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
	List<Article> article;


}
