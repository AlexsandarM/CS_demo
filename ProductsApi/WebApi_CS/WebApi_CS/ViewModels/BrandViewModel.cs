using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApi_CS.ViewModels
{
    public class BrandViewModel
    {
        public int BrandID { get; set; }
        public string BrandName { get; set; }

        public ICollection<ProductViewModel> Products { get; set; }
    }
}