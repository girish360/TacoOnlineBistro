using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TacoOnlineBistro.Models
{
    public class OrderItemModel
    {
        #region Properties
        public Guid OrderItemId { get; set; }
        public Guid OrderId { get; set; }
        public Guid ProductId { get; set; }
        public decimal UnitPrice { get; set; }
        public decimal Quantity { get; set; }
        #endregion Properties
    }
}