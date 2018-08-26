/**
 * Metodo que permite verificar que
 * un ID devuelve un elemento
 * @param  {string}
 * @return  {boolean}
 */
$.fn.exists = function () {
    return this.length !== 0;
}
var templateController = new TemplateController();


function TemplateController() {

    //PROPIEDADES
    var self = this;

    self.Message = "";
    self.Result = "";

    //VISTA
    self.view = {
        maxi: document.getElementById("hola")
    }

    //EVENTOS
    self.events = {

        ready: function () {

        },

        //Valida y envia el formulario
        pregunta: function () {
            self.methods.metodoUno();
            self.methods.metodoDos();
        }
    }

    //METODOS
    self.methods = {

        // Valida los datos.
        metodoUno: function () {
            self.Result = confirm("Maisi es gay?");
            if (self.Result == true) {
                self.Message = "Si es re gay";
            } else {
                self.Message = "No.. es supergay!";
            }
        },

        // Envia el formulario.
        metodoDos: function () {
            alert(self.Message);
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