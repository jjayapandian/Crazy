using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Crazy.Startup))]
namespace Crazy
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
