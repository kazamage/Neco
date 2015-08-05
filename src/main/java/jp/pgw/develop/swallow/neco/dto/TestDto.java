package jp.pgw.develop.swallow.neco.dto;

import jp.pgw.develop.swallow.neco.annotation.Neco;

import java.io.Serializable;

@Neco
public class TestDto implements Serializable {
    private Long id;
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
