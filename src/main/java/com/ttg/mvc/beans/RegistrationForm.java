package com.ttg.mvc.beans;

import org.hibernate.validator.constraints.NotEmpty;

public class RegistrationForm {

    private int userId;
    @NotEmpty(message = "Username is required")
    private String username;
    @NotEmpty(message = "Password is required")
    private String password;
    @NotEmpty(message = "First name is required")
    private String firstName;
    @NotEmpty(message = "Last name is required")
    private String lastName;
    @NotEmpty(message = "Required")
    private String gender;
    @NotEmpty(message = "Date of Birth is required")
    private String dob;
    @NotEmpty(message = "Social Security is required")
    private String ssn;
    @NotEmpty(message = "Street Address is required")
    private String address1;
    @NotEmpty(message = "Apt/suite is required")
    private String address2;
    @NotEmpty(message = "City is required")
    private String city;
    @NotEmpty(message = "State is required")
    private String state;
    @NotEmpty(message = "Country is required")
    private String country;
    @NotEmpty(message = "Zip Code is required")
    private String zipcode;
    @NotEmpty(message = "Type is required")
    private String type;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getSsn() {
        return ssn;
    }

    public void setSsn(String ssn) {
        this.ssn = ssn;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "RegistrationForm{" + "username=" + username + ", password=" + password + ", firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender + ", dob=" + dob + ", ssn=" + ssn + ", address1=" + address1 + ", address2=" + address2 + ", city=" + city + ", state=" + state + ", country=" + country + ", zipcode=" + zipcode + ", type=" + type + '}';
    }

}
