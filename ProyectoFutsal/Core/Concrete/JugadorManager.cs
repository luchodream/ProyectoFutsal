using Core.Abstract;
using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Concrete
{
    public class JugadorManager : IJugador
    {
        public Jugador GetByName(string name)
        {
            return new Jugador();
        }
    }
}
