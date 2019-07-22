/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Jack
 */
public class Album {
    

     private long id;
    private String name;
    private String category;
    private String description;
    private String availability;
    public Integer Price;
    private String imageURL;
    
    public Album(){
        this.id = 0;
        this.name = "Empty";
        this.category= "Empty";
        this.description = "Empty";
        this.availability = "Empty";
        this.Price = 0;
        this.imageURL = "Empty";  
    }

    public Album(long id, String name, String category, String description, String availability, Integer Price, String imageURL) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.description = description;
        this.availability = availability;
        this.Price = Price;
        this.imageURL = imageURL;
    }
    
    
    
    
    
    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the availability
     */
    public String getAvailability() {
        return availability;
    }

    /**
     * @param availability the availability to set
     */
    public void setAvailability(String availability) {
        this.availability = availability;
    }

    /**
     * @return the Price
     */
    public Integer getPrice() {
        return Price;
    }

    /**
     * @param Price the Price to set
     */
    public void setPrice(Integer Price) {
        this.Price = Price;
    }

    /**
     * @return the imageURL
     */
    public String getImageURL() {
        return imageURL;
    }

    /**
     * @param imageURL the imageURL to set
     */
    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }
    
   
    

  

    
}

