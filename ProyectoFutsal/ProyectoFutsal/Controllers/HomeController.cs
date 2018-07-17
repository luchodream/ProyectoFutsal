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
            var jug = _jugadorManager.GetByName("test");

            jug.PieHabil = EnumerationProvider.PieHabil.Derecho;

            var pie = jug.PieHabil.ToString();

            return View();
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
