package crud.usuario

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class SesionController {

    SesionService sesionService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond sesionService.list(params), model:[sesionCount: sesionService.count()]
    }

    def show(Long id) {
        respond sesionService.get(id)
    }

    def create() {
        respond new Sesion(params)
    }

    def save(Sesion sesion) {
        if (sesion == null) {
            notFound()
            return
        }

        try {
            sesionService.save(sesion)
        } catch (ValidationException e) {
            respond sesion.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sesion.label', default: 'Sesion'), sesion.id])
                redirect sesion
            }
            '*' { respond sesion, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond sesionService.get(id)
    }

    def update(Sesion sesion) {
        if (sesion == null) {
            notFound()
            return
        }

        try {
            sesionService.save(sesion)
        } catch (ValidationException e) {
            respond sesion.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'sesion.label', default: 'Sesion'), sesion.id])
                redirect sesion
            }
            '*'{ respond sesion, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        sesionService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'sesion.label', default: 'Sesion'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sesion.label', default: 'Sesion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
