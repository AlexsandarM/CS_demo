using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ProductsApi.Controllers
{
    public class ProductsController : ApiController
    {
        public ProductEntities Entities = new ProductEntities();

        public HttpResponseMessage Get()
        {
            try
            {
                return Request.CreateResponse(HttpStatusCode.Found, Entities.Products.ToList());
            }
            catch (Exception)
            {
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, "No Data found");
            }
        }

        public HttpResponseMessage Get(int id)
        {
            try
            {
                return Request.CreateResponse(HttpStatusCode.Found, Entities.Products.SingleOrDefault(p => p.Id == id));
            }
            catch (Exception)
            {
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, "No Data found");
            }
        }

        public HttpResponseMessage Post([FromBody] Product product)
        {
            try
            {
                Entities.Products.Add(product);
                Entities.SaveChanges();
                var response = Request.CreateResponse(HttpStatusCode.Created, product);
                response.Headers.Location = Request.RequestUri;

                return response;
            }
            catch (Exception)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, "Data not inserted");
            }
        }

        public HttpResponseMessage Delete(int id)
        {
            try
            {
                var product = Entities.Products.SingleOrDefault(p => p.Id == id);
                if (product == null)
                    return Request.CreateErrorResponse(HttpStatusCode.BadRequest, "Product not found to delete");
                Entities.Products.Remove(product);
                Entities.SaveChanges();

                return Request.CreateResponse(HttpStatusCode.OK, "Product Deleted Successfully");
            }
            catch (Exception)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, "Product not deleted");
            }
        }

        public HttpResponseMessage Put(int id, [FromBody] Product product)
        {
            try
            {
                var entity = Entities.Products.SingleOrDefault(p => p.Id == id);
                if (entity == null)
                    return Request.CreateErrorResponse(HttpStatusCode.BadRequest, "Product not found ");

                entity.Category = product.Category;
                entity.Name = product.Name;
                entity.Price = product.Price;
                Entities.SaveChanges();

                return Request.CreateResponse(HttpStatusCode.OK, "Product Updated Successfully");
            }
            catch (Exception ex)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ex);
            }
        }
    }
}
