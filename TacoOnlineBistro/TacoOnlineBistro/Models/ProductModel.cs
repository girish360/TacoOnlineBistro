using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TacoOnlineBistro.Models
{
    public class ProductModel
    {
        #region Properties
        public Guid ProductId { get; set; }
        public Guid CategId { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        #endregion Properties
    }
}