using Core.Abstract;
using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Concrete
{
    public class JugadorManager : IJugador
    {
        public List<JugadorEntity> Get()
        {
            var result = new List<JugadorEntity>();

            try
            {

            }
            catch (Exception)
            {

                throw;
            }

            return result;
        }

        public JugadorEntity GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
