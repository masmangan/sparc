﻿using System;
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
           // return Json(aulas, JsonRequestBehavior.AllowGet);
            return View(aulas);
        }

        //
        // GET: /Aula/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Aula/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Aula/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Aula/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Aula/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Aula/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Aula/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
