package com.example.shopperfurm.service;


import com.example.shopperfurm.dto.request.PasswordResetRequest;
import com.example.shopperfurm.dto.response.MessageResponse;

public interface AuthenticationService {

    MessageResponse sendPasswordResetCode(String email);

    String getEmailByPasswordResetCode(String code);

    MessageResponse resetPassword(PasswordResetRequest request);
}
