/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.park.parkinglot.ejb;

import com.park.parkinglot.common.CarDetails;
import com.park.parkinglot.entity.Car;
import com.sun.istack.internal.logging.Logger;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Anto
 */
@Stateless
public class CarBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    private static final Logger LOG= Logger.getLogger(CarBean.class.getName(),CarBean.class);
    
    @PersistenceContext
    private EntityManager em;
        private List<CarDetails> copyCarsToDetails(List<Car>cars)
    {
        List<CarDetails> detailsList=new ArrayList();
        for(Car car:cars)
        {
            CarDetails carDetails=new CarDetails(car.getId(), car.getLicensePlate(),car.getParkingSpot(), car.getUser().getUsername());
            detailsList.add(carDetails);
        }
        return detailsList;
    }

    public List<Car> getAllCars() {
    LOG.info("getAllCars");
        try {
            Query query=em.createQuery("SELECT c FROM Car c");
            List<Car> cars= (List<Car>) query.getResultList();
            return copyCarsToDetails(cars);
            
     /**   List<Car> cars = (List<Car>) em.createQuery("SELECT c FROM Car c").getResultList();
                    return cars;*/
                } catch (Exception ex) {
                        throw new EJBException(ex);
                                        }     
}
    }    

