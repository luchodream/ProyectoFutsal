using Core.Abstract;
using Core.Entities;
using Data.DataBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Concrete
{
    public class TorneoManager : ITorneo
    {
        private readonly DataFutsalContext _context;

        public TorneoManager(DataFutsalContext context)
        {
            _context = context;
        }

        public List<TorneoEntity> Get()
        {
            var result = new List<TorneoEntity>();

            try
            {
                var query = (from tn in _context.Torneo
                             select new TorneoEntity
                             {
                                 Id = tn.Id,
                                 Nombre = tn.Nombre,
                                 IdPrimeraRonda = tn.IdPrimeraRonda,
                                 IdSegundaRonda = tn.IdSegundaRonda,
                                 IdTerceraRonda = tn.IdTerceraRonda,
                                 TiempoDeJuego = tn.TiempoDeJuego,
                                 FechaCreacion = tn.FechaCreacion,
                                 Borrado = tn.Borrado
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

        public TorneoEntity GetById(int id)
        {
            var result = new TorneoEntity();

            try
            {
                var query = (from tn in _context.Torneo
                             where tn.Id.Equals(id)
                             select new TorneoEntity
                             {
                                 Id = tn.Id,
                                 Nombre = tn.Nombre,
                                 IdPrimeraRonda = tn.IdPrimeraRonda,
                                 IdSegundaRonda = tn.IdSegundaRonda,
                                 IdTerceraRonda = tn.IdTerceraRonda,
                                 TiempoDeJuego = tn.TiempoDeJuego,
                                 FechaCreacion = tn.FechaCreacion,
                                 Borrado = tn.Borrado
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
    }
}
