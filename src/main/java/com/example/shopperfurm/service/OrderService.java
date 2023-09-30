package com.example.shopperfurm.service;


import com.example.shopperfurm.domain.Order;
import com.example.shopperfurm.domain.Perfume;
import com.example.shopperfurm.domain.User;
import com.example.shopperfurm.dto.request.OrderRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface OrderService {

    Order getOrder(Long orderId);

    List<Perfume> getOrdering();

    Page<Order> getUserOrdersList(Pageable pageable);

    Long postOrder(User user, OrderRequest orderRequest);
}
