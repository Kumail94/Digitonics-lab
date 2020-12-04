using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BrownGirlsCodeUpdated.Startup))]
namespace BrownGirlsCodeUpdated
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
