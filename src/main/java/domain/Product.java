package domain;

import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

public class Product {
    private final String id;
    private String name;
    private Double price;

    public Product() {
        this.id = UUID.randomUUID().toString();
    }

    public Product(String name, Double price) {
        this();
        this.name = name;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}
