package com.codegym;

import java.util.Date;

public class order {
    private String user;
    private String brandId;
    private String orderTime;
    private Boolean guest;
    private String confirmTime;

    public order() {
    }

    public order(String user, String brandId, String orderTime, Boolean guest, String confirmTime) {
        this.user = user;
        this.brandId = brandId;
        this.orderTime = orderTime;
        this.guest = guest;
        this.confirmTime = confirmTime;
    }



    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public Boolean getGuest() {
        return guest;
    }

    public void setGuest(Boolean guest) {
        this.guest = guest;
    }

    public String getConfirmTime() {
        return confirmTime;
    }

    public void setConfirmTime(String confirmTime) {
        this.confirmTime = confirmTime;
    }
}

