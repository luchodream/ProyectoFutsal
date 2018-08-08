using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Abstract
{
    public interface ITorneo
    {
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        List<TorneoEntity> Get();

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        TorneoEntity GetById(int id);
    }
}
