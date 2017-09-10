using AdHocPOC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace AdHocPOC.Controllers
{
    public class TransactionsSearchController : ApiController
    {

        AdHocPOCEntities ctx;

       public TransactionsSearchController()
        //public PeopleSearchController()
        {
            ctx = new AdHocPOCEntities();
        }


        /// <summary>
        /// The Method Perform
        /// Transactions serach based upon the Field and its value
        /// </summary>
        /// <param name="field"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        [Route("Transactions/{field}/{value}")]
        public List<Transaction> GetTransactions(string field, string value)
        {
            List<Transaction> Res = new List<Transaction>();
            if (value.Length != 0)
            {

                Res = (from t in ctx.Transactions.ToList()
                       where GetPropertyValueForObject(t, field).ToString().StartsWith(value)
                       select t).ToList();
            }

            return Res;
        }


        /// <summary>
        /// The Method Perform
        /// Transactions serach based upon the Field and its value
        /// </summary>
        /// <param name="field"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        
        [Route("Transactions")]
        public List<Transaction> GetTransaction()
        {
            List<Transaction> Res = new List<Transaction>();


            Res = (from t in ctx.Transactions.ToList() select t).ToList();

            return Res;
        }

        /// <summary>
        /// Method to Get Distinct values for properties
        /// Te value property is passed through the field 
        /// </summary>
        /// <param name="field"></param>
        /// <returns></returns>
        [Route("Transactions/{field}")]
        public List<string> GetPropertyValues(string field)
        {
            List<string> propertyValues = new List<string>();

            var res = (from t in ctx.Transactions.ToList()
                       select GetPropertyValueForObject(t, field)).ToList().Distinct();

            foreach (var item in res)
            {
                propertyValues.Add(item.ToString());
            }

            return propertyValues;
        }

        /*
        [Route("Transactions/{JsonData}")]
        public List<Transaction> GetTransactionsJsonData(string JsonData)
        {
            List<Transaction> Res = new List<Transaction>();
            if (JsonData.Length != 0)
            {

                Res = (from t in ctx.Transactions.ToList()
                       where GetPropertyValueForObject(t, field).ToString().StartsWith(value)
                       select t).ToList();
            }

            return Res;
        }*/



        /// <summary>
        /// Helper Method to Perform serach on any Property and its any value
        /// </summary>
        /// <param name="src"></param>
        /// <param name="propName"></param>
        /// <returns></returns>
        static object GetPropertyValueForObject(object src, string pName)
        {
            var val = src.GetType().GetProperty(pName).GetValue(src, null);
            return val;
        }


    }
}
