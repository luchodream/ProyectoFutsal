using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Core.Abstract;
using Core.Infraestructure;
using Microsoft.AspNetCore.Mvc;
using ProyectoFutsal.Models;

namespace ProyectoFutsal.Controllers
{
    public class HomeController : Controller
    {
        private readonly IJugador _jugadorManager;

        public HomeController(IJugador jugador)
        {
            _jugadorManager = jugador;
        }

        public IActionResult Index()
        {
            var query = _jugadorManager.Get();

            var model = (from jg in query
                         select new JugadorViewModel
                         {
                             Apellido = jg.Apellido,
                             Nombre = jg.Nombre,
                             PieHabil = jg.PieHabil,
                             Dni = jg.Dni,
                             FechaNacimiento = jg.FechaNacimiento,
                             Direccion = jg.Direccion,
                             Telefono = jg.Telefono,
                             TelefonoEmergencia = jg.TelefonoEmergencia,
                             FechaAfiliacion = jg.FechaAfiliacion
                         });

            return View(model);
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
