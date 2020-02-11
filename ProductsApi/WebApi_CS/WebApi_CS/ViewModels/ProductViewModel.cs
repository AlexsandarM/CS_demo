﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApi_CS.ViewModels
{
    public class ProductViewModel
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }

        public BrandViewModel Brand { get; set; }
        public CategoryViewModel Category { get; set; }
    }

    
}