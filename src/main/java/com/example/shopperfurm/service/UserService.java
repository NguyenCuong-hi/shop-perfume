package com.example.shopperfurm.service;

import com.example.shopperfurm.domain.Order;
import com.example.shopperfurm.domain.User;
import com.example.shopperfurm.dto.request.ChangePasswordRequest;
import com.example.shopperfurm.dto.request.EditUserRequest;
import com.example.shopperfurm.dto.request.SearchRequest;
import com.example.shopperfurm.dto.response.MessageResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface UserService {

    User getAuthenticatedUser();

    Page<Order> searchUserOrders(SearchRequest request, Pageable pageable);

    MessageResponse editUserInfo(EditUserRequest request);

    MessageResponse changePassword(ChangePasswordRequest request);
}
