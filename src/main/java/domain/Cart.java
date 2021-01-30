package domain;

import java.util.ArrayList;

public class Cart {

    private ArrayList<Product> products;

    public Cart() {
        this.products = new ArrayList<Product>();
    }

    public void add(Product p){
        products.add(p);
    }

    public void remove(int id){
        products.removeIf(p-> p.getId() == id);
    }

    public ArrayList<Product> getProducts() {
        return products;
    }

    public void setProducts(ArrayList<Product> products) {
        this.products = products;
    }

    public Double total(){
       return this.products.stream()
               .map(p->p.getPrice())
                .reduce(0.0,Double::sum);
    }
}
