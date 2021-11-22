<%-- 
    Document   : cars
    Created on : Nov 3, 2021, 6:56:57 AM
    Author     : Anto
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" tagdir="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Cars">

    <h1>Cars</h1>

    <c:foreach var="car" items="${cars}" varStatus="status">
        
        <div class="row">
            <div class="col-md-4">
                ${car.licensePlate}
            </div>
             <div class="col-md-4">
                ${car.parkingSpot}
             </div>
              <div class="col-md-4">
                ${car.username}
            </div>
            </div>
    </c:foreach>
    
    <div class="container">
        <div class="row">
            <div class="col">
                Car 1
            </div>
            <div class="col">
                Spot 1 
            </div>
            <div class="col">
                User 1
            </div>
        </div>

        <div class="row">
            <div class="col">
                Car 2
            </div>
            <div class="col">
                Spot 2
            </div>
            <div class="col">
                User 2
            </div>
        </div>

        <div class="row">
            <div class="col">
                Car 3
            </div>
            <div class="col">
                Spot 3
            </div>
            <div class="col">
                User 3
            </div>
        </div>
    </div>
    <h5>Free Parking Spots: ${numberOfFreeParkingSpots} </h5>
</t:pageTemplate>

