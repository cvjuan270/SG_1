namespace SG_1.Migrations
{
    using Microsoft.AspNet.Identity.EntityFramework;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using IdentitySample.Models;
    using Microsoft.AspNet.Identity;

    internal sealed class Configuration : DbMigrationsConfiguration<IdentitySample.Models.ApplicationDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            MigrationsDirectory = @"Migrations";
        }

        protected override void Seed(IdentitySample.Models.ApplicationDbContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data.

            if (!context.Roles.Any(r => r.Name =="Admin"))
            {
                //instanciamos RoleStore
                var store = new RoleStore<ApplicationRole>(context);
                var manager = new RoleManager<ApplicationRole>(store);
                var role = new ApplicationRole { Name = "Admin" };
                manager.Create(role); 
            }

            var pasword1 = new PasswordHasher();
            if (!context.Users.Any(u => u.UserName == "cvjuan270@gmail.com"))
            {
                var store = new UserStore<ApplicationUser>(context);
                var manager = new UserManager<ApplicationUser>(store);
                var user = new ApplicationUser { UserName = "cvjuan270@gmail.com", Email = "cvjuan270@gmail.com", PasswordHash = pasword1.HashPassword("Manager@123456") };
                manager.Create(user);
                manager.AddToRole(user.Id, "Admin");
            }
        }
    }
}
