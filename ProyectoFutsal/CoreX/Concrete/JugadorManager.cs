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
    public class JugadorManager : IJugador
    {
        private readonly DataFutsalContext _context;

        public JugadorManager(DataFutsalContext context)
        {
            _context = context;
        }

        public List<JugadorEntity> Get()
        {
            var result = new List<JugadorEntity>();

            try
            {
                var query = (from jg in _context.Jugador
                             select new JugadorEntity
                             {
                                 Id = jg.Id,
                                 Apellido = jg.Apellidos,
                                 Nombre = jg.Nombres,
                                 PieHabil = (jg.IdPieHabil.Equals(1) ? EnumerationProvider.PieHabil.Izquierdo : EnumerationProvider.PieHabil.Derecho),
                                 Dni = jg.Dni,
                                 FechaNacimiento = jg.FechaNacimiento,
                                 Direccion = jg.Direccion,
                                 Telefono = jg.Telefono,
                                 TelefonoEmergencia = jg.TelefonoEmergencia,
                                 FechaAfiliacion = jg.FechaAfiliacion
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

        public JugadorEntity GetById(int id)
        {
            var result = new JugadorEntity();

            try
            {
                var query = (from jg in _context.Jugador
                             where jg.Id.Equals(id)
                             select new JugadorEntity
                             {
                                 Id = jg.Id,
                                 Apellido = jg.Apellidos,
                                 Nombre = jg.Nombres,
                                 PieHabil = ((EnumerationProvider.PieHabil)jg.IdPieHabil),
                                 Dni = jg.Dni,
                                 FechaNacimiento = jg.FechaNacimiento,
                                 Direccion = jg.Direccion,
                                 Telefono = jg.Telefono,
                                 TelefonoEmergencia = jg.TelefonoEmergencia,
                                 FechaAfiliacion = jg.FechaAfiliacion
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
