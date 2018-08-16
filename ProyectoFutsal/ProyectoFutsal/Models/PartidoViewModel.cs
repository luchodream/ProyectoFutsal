using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProyectoFutsal.Models
{
    public class PartidoViewModel
    {
        public int Id { get; set; }
        public int IdTorneo { get; set; }
        public int Ronda { get; set; }
        public int? Fase { get; set; }
        public int? Llave { get; set; }
        public int FechaNumero { get; set; }
        public int IdEquipoLocal { get; set; }
        public int IdEquipoVisitante { get; set; }
        public bool Jugado { get; set; }
        public DateTime FechaJugado { get; set; }
        public int? GolesLocal { get; set; }
        public int? GolesVisitante { get; set; }
    }
}
