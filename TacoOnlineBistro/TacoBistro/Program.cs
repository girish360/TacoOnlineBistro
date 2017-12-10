using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TacoBistro.Repository;
using TacoBistro.Models;
using TacoBistro.Repository.Core;

namespace TacoBistro
{
    class Program
    {
        static void Main(string[] args)
        {
            //Testing UserRepository
          

            using (RepositoryContext repositoryContext = new RepositoryContext())
            {
                //InsertUser(repositoryContext);
                ShowProducts(repositoryContext);
                ShowUsers(repositoryContext);    
                ShowOrders(repositoryContext);
                ShowOrderItems(repositoryContext);
                ShowCategory(repositoryContext);
                ShowComments(repositoryContext);
            }

            Console.ReadKey();
        }

        

       
        private static void ShowUsers(RepositoryContext repositoryContext)
        {
            List<User> users = repositoryContext.UserRepository.ReadAll();
            Console.WriteLine("Users:");

            foreach (User user in users)
            {
                Console.WriteLine("{0} {1} {2}", user.UserName, user.FirstName, user.LastName);
            }
        }
        
        private static void ShowProducts(RepositoryContext repositoryContext)
        {
            List<Product> products = repositoryContext.ProductRepository.ReadAll();
            Console.WriteLine("Products:");

            foreach (Product product in products)
            {
                Console.WriteLine("{0} {1}", product.ProductName, product.Price);
            }
        }


        private static void ShowOrders(RepositoryContext repositoryContext)
        {
            List<Order> orders = repositoryContext.OrderRepository.ReadAll();
            Console.WriteLine("Orders:");

            foreach (Order order in orders)
            {
                Console.WriteLine("{0} {1}", order.UserId, order.TotalAmount);
            }
        }

        private static void ShowOrderItems(RepositoryContext repositoryContext)
        {
            List<OrderItem> orderItems = repositoryContext.OrderItemRepository.ReadAll();
            Console.WriteLine("Order Items:");

            foreach (OrderItem orderItem in orderItems)
            {
                Console.WriteLine("{0} {1}", orderItem.OrderItemId, orderItem.UnitPrice);
            }
        }

        private static void ShowCategory(RepositoryContext repositoryContext)
        {
            List<Category> Categories = repositoryContext.CategoryRepository.ReadAll();
            Console.WriteLine("Categories:");

            foreach (Category category in Categories)
            {
                Console.WriteLine("{0} {1}", category.CategoryId, category.CategoryName);
            }
        }

        private static void ShowComments(RepositoryContext repositoryContext)
        {
            List<Comment> Comments = repositoryContext.CommentRepository.ReadAll();
            Console.WriteLine("Comments:");

            foreach (Comment comment in Comments)
            {
                Console.WriteLine("{0} {1}", comment.CommentId, comment.Message);
            }
        }



        /*
        private static void InsertUser(RepositoryContext repositoryContext)
        {
            List<User> users = new List<User>();
            User user6 = new User();
            user6.UserId = Guid.NewGuid();
            user6.UserName = "Ramo";
            user6.PassWord = "epsilon";
            user6.FirstName = "Ramona";
            user6.LastName = "Olenic";
            user6.Email = "Ramona.Olenic@yahoo.com";
            user6.Phone = "0742675124";
            users.Add(user6);
            //repositoryContext.UserRepository.Insert();
            users = repositoryContext.UserRepository.Insert();

            foreach (User u in users)
            {
                Console.WriteLine("{0} {1} {2}", u.UserName, u.FirstName, u.LastName);
            }
            repositoryContext.UserRepository.Insert("dbo.Users_Create");
            
        }
        */
    }
}
