package br.com.tecnoone.app.service.core;

public interface PersistService <T> {
    void delete(T obj);
    void persist(T obj);
}
