using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TacoOnlineBistro.Models
{
    public class ProductImageModel
    {
        #region Properties
        public Guid ImageId { get; set; }
        public Guid ProductId { get; set; }
        #endregion Properties
    }
}