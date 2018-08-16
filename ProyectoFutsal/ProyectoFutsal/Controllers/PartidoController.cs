using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Core.Abstract;
using ProyectoFutsal.Models;
using Core.Entities;

namespace ProyectoFutsal.Controllers
{
    public class PartidoController : Controller
    {
        private readonly IPartido _partidoManager;

        public PartidoController(IPartido partido)
        {
            _partidoManager = partido;
        }

        public IActionResult Index()
        {
            var query = _partidoManager.Get();

            var model = (from pt in query
                         select new PartidoViewModel
                         {
                             Id = pt.Id,
                             Fase = pt.Fase,
                             FechaJugado = Convert.ToDateTime(pt.FechaJugado),
                             FechaNumero = pt.FechaNumero,
                             GolesLocal = pt.GolesLocal,
                             GolesVisitante = pt.GolesVisitante,
                             IdEquipoLocal = pt.IdEquipoLocal,
                             IdEquipoVisitante = pt.IdEquipoVisitante,
                             IdTorneo = pt.IdTorneo,
                             Jugado = pt.Jugado,
                             Llave = pt.Llave,
                             Ronda = pt.Ronda
                         });

            return View(model);
        }

        public IActionResult Detail(int id)
        {
            var pt = _partidoManager.GetById(id);

            var model = new PartidoViewModel();

            if (pt != null)
            {
                model.Id = pt.Id;
                model.Fase = pt.Fase;
                model.FechaJugado = Convert.ToDateTime(pt.FechaJugado);
                model.FechaNumero = pt.FechaNumero;
                model.GolesLocal = pt.GolesLocal;
                model.GolesVisitante = pt.GolesVisitante;
                model.IdEquipoLocal = pt.IdEquipoLocal;
                model.IdEquipoVisitante = pt.IdEquipoVisitante;
                model.IdTorneo = pt.IdTorneo;
                model.Jugado = pt.Jugado;
                model.Llave = pt.Llave;
                model.Ronda = pt.Ronda;
            }

            return View(model);
        }

        [HttpPost]
        public IActionResult Add(PartidoViewModel pt)
        {
            if (ModelState.IsValid)
            {
                var partido = new PartidoEntity
                {
                    Id = pt.Id,
                    Fase = pt.Fase,
                    FechaJugado = Convert.ToDateTime(pt.FechaJugado),
                    FechaNumero = pt.FechaNumero,
                    GolesLocal = pt.GolesLocal,
                    GolesVisitante = pt.GolesVisitante,
                    IdEquipoLocal = pt.IdEquipoLocal,
                    IdEquipoVisitante = pt.IdEquipoVisitante,
                    IdTorneo = pt.IdTorneo,
                    Jugado = pt.Jugado,
                    Llave = pt.Llave,
                    Ronda = pt.Ronda
                };

                var result = _partidoManager.Add(partido);

                ViewBag.Message = result ? "OK" : "ERROR";
            }

            return View();
        }

        public IActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Modify(PartidoViewModel pt)
        {
            if (ModelState.IsValid)
            {
                var partido = new PartidoEntity
                {
                    Id = pt.Id,
                    Fase = pt.Fase,
                    FechaJugado = Convert.ToDateTime(pt.FechaJugado),
                    FechaNumero = pt.FechaNumero,
                    GolesLocal = pt.GolesLocal,
                    GolesVisitante = pt.GolesVisitante,
                    IdEquipoLocal = pt.IdEquipoLocal,
                    IdEquipoVisitante = pt.IdEquipoVisitante,
                    IdTorneo = pt.IdTorneo,
                    Jugado = pt.Jugado,
                    Llave = pt.Llave,
                    Ronda = pt.Ronda
                };

                var result = _partidoManager.Update(partido);

                ViewBag.Message = result ? "OK" : "ERROR";
            }
            return View();
        }

        public IActionResult Modify(int id)
        {
            var pt = _partidoManager.GetById(id);

            var model = new PartidoViewModel();

            if (pt != null)
            {
                model.Id = pt.Id;
                model.Fase = pt.Fase;
                model.FechaJugado = Convert.ToDateTime(pt.FechaJugado);
                model.FechaNumero = pt.FechaNumero;
                model.GolesLocal = pt.GolesLocal;
                model.GolesVisitante = pt.GolesVisitante;
                model.IdEquipoLocal = pt.IdEquipoLocal;
                model.IdEquipoVisitante = pt.IdEquipoVisitante;
                model.IdTorneo = pt.IdTorneo;
                model.Jugado = pt.Jugado;
                model.Llave = pt.Llave;
                model.Ronda = pt.Ronda;
            }

            return View(model);
        }

        [HttpPost]
        public IActionResult Delete(PartidoViewModel pt)
        {
            if (ModelState.IsValid)
            {
                var partido = new PartidoEntity
                {
                    Id = pt.Id,
                    Fase = pt.Fase,
                    FechaJugado = Convert.ToDateTime(pt.FechaJugado),
                    FechaNumero = pt.FechaNumero,
                    GolesLocal = pt.GolesLocal,
                    GolesVisitante = pt.GolesVisitante,
                    IdEquipoLocal = pt.IdEquipoLocal,
                    IdEquipoVisitante = pt.IdEquipoVisitante,
                    IdTorneo = pt.IdTorneo,
                    Jugado = pt.Jugado,
                    Llave = pt.Llave,
                    Ronda = pt.Ronda
                };

                var result = _partidoManager.Delete(partido);

                ViewBag.Message = result ? "OK" : "ERROR";
            }
            return RedirectToAction("Index");
        }

        public IActionResult Delete(int id)
        {
            var pt = _partidoManager.GetById(id);

            var model = new PartidoViewModel();

            if (pt != null)
            {
                model.Id = pt.Id;
                model.Fase = pt.Fase;
                model.FechaJugado = Convert.ToDateTime(pt.FechaJugado);
                model.FechaNumero = pt.FechaNumero;
                model.GolesLocal = pt.GolesLocal;
                model.GolesVisitante = pt.GolesVisitante;
                model.IdEquipoLocal = pt.IdEquipoLocal;
                model.IdEquipoVisitante = pt.IdEquipoVisitante;
                model.IdTorneo = pt.IdTorneo;
                model.Jugado = pt.Jugado;
                model.Llave = pt.Llave;
                model.Ronda = pt.Ronda;
            }

            return View(model);
        }

    }
}
