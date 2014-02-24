package br.com.tecnoone.app.service.core;

import br.com.tecnoone.app.domain.entity.AppEntity;

public interface CrudService<T extends AppEntity> extends PersistService<T>, ReaderService<T>{

}
