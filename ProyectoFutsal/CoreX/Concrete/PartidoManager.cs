using Core.Abstract;
using Core.Entities;
using Data.DataBase;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Core.Infraestructure;

namespace Core.Concrete
{
    public class PartidoManager : IPartido
    {
        private readonly DataFutsalContext _context;

        public PartidoManager(DataFutsalContext context)
        {
            _context = context;
        }

        public List<PartidoEntity> Get()
        {
            var result = new List<PartidoEntity>();

            try
            {
                var query = (from pt in _context.Partido
                             select new PartidoEntity
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
                             }).ToList();

                if (query.Any())
                {
                    result.AddRange(query);
                }
            }
            catch (Exception ex)
            {
                var message = ex.Message;
            }

            return result;
        }

        public PartidoEntity GetById(int id)
        {
            var result = new PartidoEntity();

            try
            {
                var query = (from pt in _context.Partido
                             where pt.Id.Equals(id)
                             select new PartidoEntity
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
                             }).FirstOrDefault();

                if (query != null)
                {
                    result = query;
                }
            }
            catch (Exception ex)
            {
                var message = ex.Message;
            }

            return result;
        }


        public bool Add(PartidoEntity partido)
        {
            var result = false;

            try
            {
                if (partido != null)
                {
                    var pt = new Partido
                    {
                        Fase = partido.Fase,
                        FechaJugado = partido.FechaJugado.ToString(),
                        FechaNumero = partido.FechaNumero,
                        GolesLocal = partido.GolesLocal,
                        GolesVisitante = partido.GolesVisitante,
                        IdEquipoLocal = partido.IdEquipoLocal,
                        IdEquipoVisitante = partido.IdEquipoVisitante,
                        IdTorneo = partido.IdTorneo,
                        Jugado = partido.Jugado,
                        Llave = partido.Llave,
                        Ronda = partido.Ronda
                    };

                    _context.Partido.Add(pt);
                    _context.SaveChanges();

                    result = true;
                }
            }
            catch (Exception ex)
            {
                var msg = ex.Message;
            }

            return result;
        }


        public bool Update(PartidoEntity pt)
        {
            var result = false;

            try
            {
                if (pt != null)
                {
                    var partido = _context.Partido.Where(p => p.Id == pt.Id).FirstOrDefault();
                    partido.Fase = pt.Fase;
                    partido.FechaJugado = pt.FechaJugado.ToString();
                    partido.FechaNumero = pt.FechaNumero;
                    partido.GolesLocal = pt.GolesLocal;
                    partido.GolesVisitante = pt.GolesVisitante;
                    partido.IdEquipoLocal = pt.IdEquipoLocal;
                    partido.IdEquipoVisitante = pt.IdEquipoVisitante;
                    partido.IdTorneo = pt.IdTorneo;
                    partido.Jugado = pt.Jugado;
                    partido.Llave = pt.Llave;
                    partido.Ronda = pt.Ronda;

                    _context.Partido.Update(partido);
                    _context.SaveChanges();

                    result = true;
                }
            }
            catch (Exception ex)
            {
                var msg = ex.Message;
            }

            return result;
        }

        public bool Delete(PartidoEntity pt)
        {
            var result = false;

            try
            {
                if (pt != null)
                {
                    var partido = _context.Partido.Where(p => p.Id == pt.Id).FirstOrDefault();
                    partido.Fase = pt.Fase;
                    partido.FechaJugado = pt.FechaJugado.ToString();
                    partido.FechaNumero = pt.FechaNumero;
                    partido.GolesLocal = pt.GolesLocal;
                    partido.GolesVisitante = pt.GolesVisitante;
                    partido.IdEquipoLocal = pt.IdEquipoLocal;
                    partido.IdEquipoVisitante = pt.IdEquipoVisitante;
                    partido.IdTorneo = pt.IdTorneo;
                    partido.Jugado = pt.Jugado;
                    partido.Llave = pt.Llave;
                    partido.Ronda = pt.Ronda;

                    _context.Partido.Remove(partido);
                    _context.SaveChanges();

                    result = true;
                }
            }
            catch (Exception ex)
            {
                var msg = ex.Message;
            }

            return result;
        }

    }
}
