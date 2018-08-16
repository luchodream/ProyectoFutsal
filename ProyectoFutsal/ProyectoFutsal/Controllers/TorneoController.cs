using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Core.Abstract;
using Microsoft.AspNetCore.Mvc;
using ProyectoFutsal.Models;

namespace ProyectoFutsal.Controllers
{
    public class TorneoController : Controller
    {
        private readonly ITorneo _torneoManager;

        public TorneoController(ITorneo torneo)
        {
            _torneoManager = torneo;
        }

        public IActionResult Index()
        {

            var query = (from tn in _torneoManager.Get()
                         select new TorneoViewModel
                         {
                             Id = tn.Id,
                             Nombre = tn.Nombre,
                             IdPrimeraRonda = tn.IdPrimeraRonda,
                             IdSegundaRonda = tn.IdSegundaRonda,
                             IdTerceraRonda = tn.IdTerceraRonda,
                             TiempoDeJuego = tn.TiempoDeJuego,
                             FechaCreacion = tn.FechaCreacion,
                             Borrado = tn.Borrado
                         });

            return View(query);
        }

        public IActionResult Detail(int id)
        {
            var tn = _torneoManager.GetById(id);
            var model = new TorneoViewModel();

            if (tn != null)
            {
                model.Id = tn.Id;
                model.Nombre = tn.Nombre;
                model.IdPrimeraRonda = tn.IdPrimeraRonda;
                model.IdSegundaRonda = tn.IdSegundaRonda;
                model.IdTerceraRonda = tn.IdTerceraRonda;
                model.TiempoDeJuego = tn.TiempoDeJuego;
                model.FechaCreacion = tn.FechaCreacion;
                model.Borrado = tn.Borrado;
            }

            return View(model);
        }


    }
}