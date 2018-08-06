using Core.Abstract;
using System;
using System.Collections.Generic;
using System.Text;
using static Core.Infraestructure.EnumerationProvider;

namespace Core.Entities
{
    public class JugadorEntity
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public PieHabil PieHabil { get; set; }
        public long Dni { get; set; }
        public string FechaNacimiento { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string TelefonoEmergencia { get; set; }
        public string FechaAfiliacion { get; set; }

        public string NombreCompleto()
        {
            return $"{Nombre} {Apellido}.";
        }
    }
}
