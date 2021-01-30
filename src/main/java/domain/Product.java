package domain;

import java.util.concurrent.atomic.AtomicInteger;

public class Product {
    private static final AtomicInteger count = new AtomicInteger(0);
    private final int id ;
    private String name;
    private Double price;

    public Product() {
        this.id = count.incrementAndGet();
    }

    public Product(String name, Double price) {
        this.id = count.incrementAndGet();
        this.name = name;
        this.price = price;
    }

    public int getId() {
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
