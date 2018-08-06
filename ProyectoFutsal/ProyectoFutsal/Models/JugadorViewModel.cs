using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using static Core.Infraestructure.EnumerationProvider;

namespace ProyectoFutsal.Models
{
    public class JugadorViewModel
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
    }
}
