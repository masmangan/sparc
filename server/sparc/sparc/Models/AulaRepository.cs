using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace sparc.Models
{
    public class AulaRepository
    {
        private SARCFACIN2Entities db = new SARCFACIN2Entities();

        public IQueryable<sparc_Aulas> getAllAulas()
        {
            return db.sparc_Aulas;
        }
    }
}