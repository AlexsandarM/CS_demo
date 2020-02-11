using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web.Http;
using Microsoft.Owin.Security.OAuth;
using Newtonsoft.Json.Serialization;

namespace WebApi_CS
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services
            // Configure Web API to use only bearer token authentication.
            config.SuppressDefaultHostAuthentication();
            config.Filters.Add(new HostAuthenticationFilter(OAuthDefaults.AuthenticationType));

            _ = config.Routes.MapHttpRoute(
                name: "CS_Controller",
                routeTemplate: "api/CS_Controller/ProductID",
                defaults: new { controller= "CS_Controller", ProductID = RouteParameter.Optional },
                constraints: new { ProductID = "/d+" }
                );


            // Web API routes
            config.MapHttpAttributeRoutes();

            _ = config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
