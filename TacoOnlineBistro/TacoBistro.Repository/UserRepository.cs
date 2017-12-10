using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TacoBistro.Models;
using System.Data.SqlClient;
using TacoBistro.Repository.Core;
using System.Configuration;

namespace TacoBistro.Repository
{
    public class UserRepository : BaseRepository<User>
    {
        #region Methods
        public List<User> ReadAll()
        {

            
            return ReadAll("dbo.Users_ReadAll");
            

        }
        
        public List<User> Insert()
        {           
            return Insert("dbo.Users_Create");
        }
        
       
        protected override User GetModelFromReader(SqlDataReader reader)
        {
            User user = new User();
            user.UserId = reader.GetGuid(reader.GetOrdinal("UserId"));
            user.UserName = reader.GetString(reader.GetOrdinal("UserName"));
            user.PassWord = reader.GetString(reader.GetOrdinal("PassWord"));
            user.FirstName = reader.GetString(reader.GetOrdinal("FirstName"));
            user.LastName = reader.GetString(reader.GetOrdinal("LastName"));
            user.Email = reader.GetString(reader.GetOrdinal("Email"));
            user.Phone = reader.GetString(reader.GetOrdinal("Phone"));
            return user;
        }

        /*
        protected override User GetModelFromInsert(SqlCommand command)
        {
            
                User user = new User();
                command.Parameters.Add(new SqlParameter("@UserId", user.UserId));
                command.Parameters.Add(new SqlParameter("@UserName", user.UserName));
                command.Parameters.Add(new SqlParameter("@PassWord", user.PassWord));
                command.Parameters.Add(new SqlParameter("@FirstName", user.FirstName));
                command.Parameters.Add(new SqlParameter("@LastName", user.LastName));
                command.Parameters.Add(new SqlParameter("@Email", user.Email));
                command.Parameters.Add(new SqlParameter("@Phone", user.Phone));
                return user;
            
        }
        */



        #endregion
    }
}
