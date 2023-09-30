package com.example.shopperfurm.service;



import com.example.shopperfurm.domain.Perfume;

import java.util.List;

public interface CartService {

    List<Perfume> getPerfumesInCart();

    void addPerfumeToCart(Long perfumeId);

    void removePerfumeFromCart(Long perfumeId);
}
