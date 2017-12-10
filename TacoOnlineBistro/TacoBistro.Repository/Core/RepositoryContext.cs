using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TacoBistro.Repository.Core
{
    public class RepositoryContext : IDisposable
    {
        #region Members
        private UserRepository _userRepository;
        private ProductRepository _productRepository;
        private OrderRepository _orderRepository;
        private OrderItemRepository _orderItemRepository;
        private CommentRepository _commentRepository;
        private CategoryRepository _categoryRepository;
        #endregion

        #region Properties
        public UserRepository UserRepository
        {
            get
            {
                if (_userRepository == null)
                    _userRepository = new UserRepository();
                return _userRepository;
            }
        }

        public ProductRepository ProductRepository
        {
            get
            {
                if (_productRepository == null)
                    _productRepository = new ProductRepository();
                return _productRepository;
            }
        }

        public OrderRepository OrderRepository
        {
            get
            {
                if (_orderRepository == null)
                    _orderRepository = new OrderRepository();
                return _orderRepository;
            }
        }

        public OrderItemRepository OrderItemRepository
        {
            get
            {
                if (_orderItemRepository == null)
                    _orderItemRepository = new OrderItemRepository();
                return _orderItemRepository;
            }
        }

        public CommentRepository CommentRepository
        {
            get
            {
                if (_commentRepository == null)
                    _commentRepository = new CommentRepository();
                return _commentRepository;
            }
        }

        public CategoryRepository CategoryRepository
        {
            get
            {
                if (_categoryRepository == null)
                    _categoryRepository = new CategoryRepository();
                return _categoryRepository;
            }
        }
        #endregion

        #region IDisposable Implementation
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        private void Dispose(bool dispose)
        {
            if (dispose)
            {
                if (_userRepository != null)
                {
                    //_connection.Dispose();
                    _userRepository = null;
                }
                if (_productRepository != null)
                {
                    //_connection.Dispose();
                    _productRepository = null;
                }

                if (_orderRepository != null)
                {
                    //_connection.Dispose();
                    _orderRepository = null;
                }

                if (_orderItemRepository != null)
                {
                    //_connection.Dispose();
                    _orderItemRepository = null;
                }

                if (_commentRepository != null)
                {
                    //_connection.Dispose();
                    _commentRepository = null;
                }

                if (_categoryRepository != null)
                {
                    //_connection.Dispose();
                    _categoryRepository = null;
                }
            }
        }
        ~RepositoryContext()
        {
            Dispose(false);
        }
        #endregion
    }
}
