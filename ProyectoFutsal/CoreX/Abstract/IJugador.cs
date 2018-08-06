using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Abstract
{
    public interface IJugador
    {
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        List<JugadorEntity> Get();

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        JugadorEntity GetById(int id);
    }
}
