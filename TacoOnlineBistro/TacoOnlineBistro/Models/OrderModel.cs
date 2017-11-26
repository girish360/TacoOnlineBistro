using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TacoOnlineBistro.Models
{
    public class OrderModel
    {
        #region Properties
        public Guid OrderId { get; set; }
        public Guid UserId { get; set; }
        public DateTime OrderDate { get; set; }
        public decimal TotalAmount { get; set; }
        public string DeliveryAdress { get; set; }
        public string Comments { get; set; }
        public bool DeliveryStatus { get; set; }
        public DateTime DateOfOrder { get; set; }
        #endregion Properties
    }
}