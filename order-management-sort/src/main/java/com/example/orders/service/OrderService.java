package com.example.orders.service;

import com.example.orders.model.Order;
import com.example.orders.repository.OrderRepository;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Set;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

@Service
public class OrderService {
    private final OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public List<Order> getOrdersByStatus(String status) {
        return orderRepository.findByStatus(status);
    }

    public List<Order> getOrdersByCustomerName(String name) {
        return orderRepository.findByCustomerNameContaining(name);
    }
    public List<Order> getAllOrdersSorted(String field, String direction) {
        Set<String> allowedFields = Set.of(
                "id", "orderCode", "customerName", "totalPrice", "status", "createdAt"
        );
        if (field == null || !allowedFields.contains(field)) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid sortBy field");
        }
        if (!"asc".equalsIgnoreCase(direction) && !"desc".equalsIgnoreCase(direction)) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "dir must be asc or desc");
        }

        Sort.Direction sortDirection = "desc".equalsIgnoreCase(direction)
                ? Sort.Direction.DESC : Sort.Direction.ASC;
        Sort sort = Sort.by(sortDirection, field);
        return orderRepository.findAll(sort);
    }
}
