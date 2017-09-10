using AdHocPOC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AdHocPOC.Controllers
{
    public class SearchController : Controller
    {
        public ActionResult Index()
        {
                        return View();
        }

        /*
        public ActionResult Details()
        {
            TransactionsContext transactionsContext = new TransactionsContext();
            //Transactions t = transactionsContext.Transactions.Single(tran => tran.ID == id);
            List<Transactions> t = transactionsContext.Transactions.ToList();
            return View(t);
        }*/

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        /*
        public JsonResult Search(string EmpName)
        {
            var emplist = PrepareEmpList();

            var searchedlist = from emp in emplist
                               where emp.Name.Contains(EmpName)
                               select emp;

            return Json(new { Items = searchedlist });
        }*/

      }
}