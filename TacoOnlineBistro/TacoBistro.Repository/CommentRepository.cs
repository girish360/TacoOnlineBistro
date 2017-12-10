using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TacoBistro.Models;
using System.Data.SqlClient;
using TacoBistro.Repository.Core;

namespace TacoBistro.Repository
{
    public class CommentRepository : BaseRepository<Comment>
    {
        #region Methods
        public List<Comment> ReadAll()
        {
            return ReadAll("dbo.Comments_ReadAll");
        }

        protected override Comment GetModelFromReader(SqlDataReader reader)
        {
            Comment comment = new Comment();
            comment.CommentId = reader.GetGuid(reader.GetOrdinal("CommentId"));
            comment.UserId = reader.GetGuid(reader.GetOrdinal("UserId"));
            comment.Message = reader.GetString(reader.GetOrdinal("Message"));
            
            return comment;
        }


        public void Insert(Comment comment)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Comments_Create";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@CommentId", comment.CommentId));
                        command.Parameters.Add(new SqlParameter("@UserId", comment.UserId));
                        command.Parameters.Add(new SqlParameter("@Message", comment.Message));
                        

                        connection.Open();
                        command.ExecuteNonQuery();
                    }

                }
                catch (SqlException sqlEx)
                {
                    Console.WriteLine("There was an SQL error: {0}", sqlEx.ToString());
                }
                catch (Exception ex)
                {
                    Console.WriteLine("There was an error: {0}", ex.ToString());
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public void Update(Comment comment)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Comments_UpdateById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@CommentId", comment.CommentId));
                        command.Parameters.Add(new SqlParameter("@UserId", comment.UserId));
                        command.Parameters.Add(new SqlParameter("@Message", comment.Message));


                        connection.Open();
                        command.ExecuteNonQuery();
                    }

                }
                catch (SqlException sqlEx)
                {
                    Console.WriteLine("There was an SQL error: {0}", sqlEx.ToString());
                }
                catch (Exception ex)
                {
                    Console.WriteLine("There was an error: {0}", ex.ToString());
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public void Delete(Comment comment)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Comments_DeleteById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@CommentId", comment.CommentId));
                        


                        connection.Open();
                        command.ExecuteNonQuery();
                    }

                }
                catch (SqlException sqlEx)
                {
                    Console.WriteLine("There was an SQL error: {0}", sqlEx.ToString());
                }
                catch (Exception ex)
                {
                    Console.WriteLine("There was an error: {0}", ex.ToString());
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        #endregion
    }
}
