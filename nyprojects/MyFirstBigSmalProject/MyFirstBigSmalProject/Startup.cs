using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MyFirstBigSmalProject.Startup))]
namespace MyFirstBigSmalProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
