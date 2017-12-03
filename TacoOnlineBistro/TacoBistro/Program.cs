using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TacoBistro.Repository;
using TacoBistro.Models;


namespace TacoBistro
{
    class Program
    {
        static void Main(string[] args)
        {
            //testing UserRepository

            //CREATE
            /*
            UserRepository userRepository = new UserRepository();
            
            User user6 = new User();
            user6.UserId = Guid.NewGuid();
            user6.UserName = "Ramo";
            user6.PassWord = "epsilon";
            user6.FirstName = "Ramona";
            user6.LastName = "Olenic";
            user6.Email = "Ramona.Olenic@yahoo.com";
            user6.Phone = "0742675124";
            
            userRepository.Insert(user6);
            
            //UPDATE

            User user6 = new User();
            user6.UserId = Guid.Parse("7C4FEF73-6EAC-4546-B5DE-BFC6936DA434");
            user6.UserName = "Ramo";
            user6.PassWord = "epsilon";
            user6.FirstName = "Ramona";
            user6.LastName = "Olenic";
            user6.Email = "Ramona.Olenic@yahoo.com";
            user6.Phone = "0777777777";

            userRepository.Update(user6);
            

            //Delete
            User user7 = new User();
            user7.UserId = Guid.Parse("7C4FEF73-6EAC-4546-B5DE-BFC6936DA434");
            userRepository.Delete(user7);
            */

            //ReadById -  Not working yet !!!
            /*
            User user8 = new User();
            user8.UserId = Guid.Parse("6A852880-8D89-4B02-901A-24996B4B7E17");
            userRepository.ReadById(user8);
            Console.WriteLine("{0}", user8.UserName);
            Console.ReadKey();
            */

            /*
            List<User> Users = userRepository.ReadAll();

            foreach (User user in Users)
            {
                Console.WriteLine("{0} {1} {2}", user.FirstName, user.LastName, user.Phone);
            }
            Console.ReadKey();
            */

            //testing OrderRepository
            /*
            OrderRepository orderRepository = new OrderRepository();
            List<Order> Orders = orderRepository.ReadAll();

            foreach (Order order in Orders)
            {
                Console.WriteLine("{0} {1}", order.TotalAmount, order.DeliveryAdress);
            }
            Console.ReadKey();
            */

            //testing ProductRepository
            /*
            ProductRepository productRepository = new ProductRepository();

            Product product26 = new Product();
            product26.ProductId = Guid.NewGuid();
            product26.CategoryId = Guid.Parse("E1B47C2C-CA4B-499C-9FEB-F660E1615F60");
            product26.ProductName = "Heineken(360ml)";
            product26.Description = "Heineken Beer";
            product26.Price = 8;


            productRepository.Insert(product26);

            List<Product> Products = productRepository.ReadAll();

            foreach (Product product in Products)
            {
                Console.WriteLine("{0} {1}", product.ProductName, product.Price);
            }
            Console.ReadKey();
            */

            //testing OrderItemRepository
            /*
            OrderItemRepository orderItemRepository = new OrderItemRepository();

            List<OrderItem> OrderItems = orderItemRepository.ReadAll();

            foreach (OrderItem orderItem in OrderItems)
            {
                Console.WriteLine("{0} {1} {2}", orderItem.ProductId, orderItem.UnitPrice, orderItem.Quantity);
            }
            Console.ReadKey();
            */

            //testing CommentRepository
            /*
            CommentRepository commentRepository = new CommentRepository();

            Comment comment4 = new Comment();
            comment4.CommentId = Guid.NewGuid();
            comment4.UserId = Guid.Parse("ED1851F7-C233-482A-B4E5-6B59B6CC884D");
            comment4.Message = "Hi This is just a test";



            commentRepository.Insert(comment4);

            List<Comment> Comments = commentRepository.ReadAll();

            foreach (Comment comment in Comments)
            {
                Console.WriteLine("{0} {1}", comment.UserId, comment.Message);
            }
            Console.ReadKey();
            */

            //testing CategoryRepository
            /*
            CategoryRepository categoryRepository = new CategoryRepository();

            List<Category> Categories = categoryRepository.ReadAll();

            foreach (Category category in Categories)
            {
                Console.WriteLine("{0} {1}", category.CategoryId, category.CategoryName);
            }
            Console.ReadKey();
            */

        }
    }
}
