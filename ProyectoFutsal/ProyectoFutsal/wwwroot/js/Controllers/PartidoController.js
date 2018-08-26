var partidoController = new PartidoController();

function PartidoController() {
    //PROPIEDADES
    var self = this;
    self.FormIsValid = false;

    //VISTA
    self.view = {
        form: {
            Id: $("#Id"),
            IdTorneo: $("#IdTorneo"),
            Ronda: $("#Ronda"),
            Fase: $("#Fase"),
            Llave: $("#Llave"),
            FechaNumero: $("#FechaNumero"),
            IdEquipoLocal: $("#IdEquipoLocal"),
            IdEquipoVisitante: $("#IdEquipoVisitante"),
            Jugado: $("#Jugado"),
            FechaJugado: $("#FechaJugado"),
            GolesLocal: $("#GolesLocal"),
            GolesVisitante: $("#GolesVisitante")
        },
        formElement: $("#partidoFormId")
    }

    //EVENTOS
    self.events = {
        ready: function () {
            self.view.formElement.submit(function (e) {
                e.preventDefault(e);
                self.events.validation();
            });
        },

        //Valida y envia el formulario
        validation: function () {
            self.methods.validateForm();
            self.methods.sendForm();
        }
    }

    //METODOS
    self.methods = {

        // Valida los datos.
        validateForm: function () {
            self.FormIsValid = true;
            for (var i in self.view.form) {
                if (!self.view.form[i].val()) {
                    self.FormIsValid = false;
                    break;
                }
            }
        },

        // Envia el formulario.
        sendForm: function () {
            if (self.FormIsValid) {
                self.view.formElement.submit();
            }
            else {
                alert("Formulario Erroneo");
            }
        },

        // Envia el formulario AJAX.
        metodoTres: function () {
            var path = window.location.origin;
            var data = JSON.stringify(object);

            $.ajax({
                type: "POST",
                url: path + "/Controller/Action",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({ jsonData: data, property: variable }),
                success: function (result) {
                    if (result) {
                        alert('Success! Data has ben changed.');
                    } else {
                        alert("Error! something went wrong.");
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log("Status: " + textStatus + "\nError: " + errorThrown);
                }
            });
        }
    }
}