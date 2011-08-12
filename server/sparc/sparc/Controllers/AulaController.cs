using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using sparc.Models;

namespace sparc.Controllers
{
    public class AulaController : Controller
    {
        private AulaRepository aulaRepository = new AulaRepository();
        //
        // GET: /Aula/
        
        public ActionResult Index()
        {
            var aulas = aulaRepository.getAllAulas();
            return View(aulas);
        }

        //
        // GET: /Aula/Droid

        public ActionResult Droid()
        {
            var aulas = aulaRepository.getAllAulas();
            return Json(aulas, JsonRequestBehavior.AllowGet);
        }

    }
}
