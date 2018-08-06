using Core.Abstract;
using System;
using System.Collections.Generic;
using System.Text;
using static Core.Infraestructure.EnumerationProvider;

namespace Core.Entities
{
    public class JugadorEntity
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public PieHabil PieHabil { get; set; }

        public string NombreCompleto()
        {
            return $"{Nombre} {Apellido}.";
        }
    }
}
