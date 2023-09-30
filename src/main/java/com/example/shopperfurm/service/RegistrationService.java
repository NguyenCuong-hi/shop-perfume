package com.example.shopperfurm.service;


import com.example.shopperfurm.dto.request.UserRequest;
import com.example.shopperfurm.dto.response.MessageResponse;

public interface RegistrationService {

    MessageResponse registration(String captchaResponse, UserRequest user);

    MessageResponse activateEmailCode(String code);
}
