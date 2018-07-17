using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Abstract
{
    public interface IJugador
    {
        /// <summary>
        /// Get player by name
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        Jugador GetByName(string name);
    }
}
