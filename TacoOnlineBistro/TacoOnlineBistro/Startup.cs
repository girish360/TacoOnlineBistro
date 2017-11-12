using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TacoOnlineBistro.Startup))]
namespace TacoOnlineBistro
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
