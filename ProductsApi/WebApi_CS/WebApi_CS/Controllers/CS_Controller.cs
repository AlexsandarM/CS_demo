using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApi_CS.Models;
using WebApi_CS.ViewModels;
using CS_DataAccess;
//using WebApi_CS.Validations;
//using WebApi_CS.Services;

namespace WebApi_CS.Controllers
{
    public class CS_Controller : ApiController
    {
       public IHttpActionResult GetAllProducts ()
        {
            IList<ProductViewModel> products = null;

            using (var ctx = new CS_Entities())
            {
                products = ctx.Products.Include("BrandName")
                    .Select(s => new ProductViewModel()
                    {
                        ProductID = s.product_id,
                        ProductName = s.product_name
                    }).ToList<ProductViewModel>();

            }

            if (products.Count == 0)
            {
                return NotFound();
            }

            return Ok(products);



        }
    }
}
