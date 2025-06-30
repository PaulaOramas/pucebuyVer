package crud.usuario

import grails.gorm.services.Service

@Service(Sesion)
interface SesionService {

    Sesion get(Serializable id)

    List<Sesion> list(Map args)

    Long count()

    void delete(Serializable id)

    Sesion save(Sesion sesion)

}