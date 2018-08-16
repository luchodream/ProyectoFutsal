using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Abstract
{
    public interface IPartido
    {
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        List<PartidoEntity> Get();

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        PartidoEntity GetById(int id);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="partido"></param>
        /// <returns></returns>
        bool Add(PartidoEntity partido);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="partido"></param>
        /// <returns></returns>
        bool Update(PartidoEntity partido);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="partido"></param>
        /// <returns></returns>
        bool Delete(PartidoEntity partido);
    }
}
