using Crud.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;

namespace Crud.Controllers
{
    public class HomeController : Controller
    {
        CrudEntities db = new CrudEntities();
        
       //GET: Home
       [HttpGet]
        public ActionResult Index(string Ara, int? sayfa)
        {
            if (Ara == null)
            {
                return View(db.Kisiler.ToList().ToPagedList(sayfa ?? 1,10));
            }
            else
            {
                return View(db.Kisiler.Where(s => s.Adi.StartsWith(Ara)).ToList().ToPagedList(sayfa ?? 1, 10));
            }
        }
        public ActionResult Kaydet()
        {
            
            List<Adresler> list = db.Adresler.ToList();
            ViewBag.AdresList = new SelectList(list, "Id", "Adres");

            return View();
        }
        [HttpPost]
        public ActionResult Kaydet(CrudViewModel model)
        {
            using (CrudEntities db = new CrudEntities())
            {
                Kisiler kisi = new Kisiler();
                kisi.Adi = model.Adi;
                kisi.Soyadi = model.Soyadi;
                kisi.Email = model.Email;
                kisi.Telefon = model.Telefon;
                kisi.AdresID = model.AdresID;
                db.Kisiler.Add(kisi);
                int sonkisiId = kisi.Id;

                Siteler site = new Siteler();
                site.Site = model.Site;
                site.KisiID = sonkisiId;
                db.Siteler.Add(site);
                db.SaveChanges();

                List<Adresler> list = db.Adresler.ToList();
                ViewBag.AdresList = new SelectList(list, "Id", "Adres");
                return RedirectToAction("Kaydet");
            }
            
            
        }
        public ActionResult Guncelle(int? id)
        {
            Kisiler kisi = db.Kisiler.Where(k => k.Id == id).SingleOrDefault();
            CrudViewModel model = new CrudViewModel()
            {
                Adi = kisi.Adi,
                Soyadi = kisi.Soyadi,
                Email = kisi.Email,
                Telefon = kisi.Telefon,
                AdresID=kisi.AdresID
            };
            List<Adresler> list = db.Adresler.ToList();
            ViewBag.AdresList = new SelectList(list, "Id", "Adres");
            return View(model);
        }
        [HttpPost]
        public ActionResult Guncelle(CrudViewModel model)
        {
            Kisiler kisi = db.Kisiler.Where(k => k.Id == model.Id).SingleOrDefault();
            kisi.Adi = model.Adi;
            kisi.Soyadi = model.Soyadi;
            kisi.Email = model.Email;
            kisi.Telefon = model.Telefon;
            kisi.AdresID = model.AdresID;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Sil(int? id)
        {
            Kisiler kisi = db.Kisiler.Where(k => k.Id == id).SingleOrDefault();
            db.Kisiler.Remove(kisi);
            Siteler site = db.Siteler.Where(s => s.KisiID == id).SingleOrDefault();
            db.Siteler.Remove(site);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
