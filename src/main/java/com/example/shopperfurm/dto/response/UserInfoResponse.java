package com.example.shopperfurm.dto.response;

import com.example.shopperfurm.domain.Order;
import com.example.shopperfurm.domain.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.data.domain.Page;

@Data
@AllArgsConstructor
public class UserInfoResponse {
    private User user;
    private Page<Order> orders;
}
