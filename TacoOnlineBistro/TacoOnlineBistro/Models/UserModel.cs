using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TacoOnlineBistro.Models
{
    public class UserModel
    {
        #region Properties
        public Guid UserId { get; set; }
        public string UserName { get; set; }
        public string PassWord { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        #endregion Properties
    }
}