using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HayEquipo.Startup))]
namespace HayEquipo
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
