package br.com.tecnoone.app.service.core;

import java.util.List;

public interface ReaderService<T> {
    
    List<T> findBy(T example);

    T find(T pk);
}
