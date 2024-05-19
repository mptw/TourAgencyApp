using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using TourAgencyApp.Data;
using System;
using System.Linq;
using Microsoft.EntityFrameworkCore.Metadata;
using System.Diagnostics.Metrics;
using Humanizer;
using System.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace TourAgencyApp.Models;

public static class SeedData
{

    public static async Task Initialize(IServiceProvider serviceProvider)
    {
        using (var context = new ApplicationDbContext(
            serviceProvider.GetRequiredService<
                DbContextOptions<ApplicationDbContext>>()))
        {
            /*
            foreach ( var u in context.UserRoles)
            {
                context.UserRoles.Remove(u);
            }
            foreach (var u in context.Users)
            {
                context.Users.Remove(u);
            }
            foreach (var u in context.Roles)
            {
                context.Roles.Remove(u);
            }
            context.SaveChanges();
            */
            if (!context.Users.Any() || !context.Roles.Any())
            {
                // var roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();
                // var result = await roleManager.CreateAsync(new IdentityRole("Admin"));
                //await context.SaveChangesAsync();
                var adminRole = new IdentityRole { Name = "Admin", NormalizedName = "Admin".ToUpper() };
                var memberRole = new IdentityRole { Name = "Member", NormalizedName = "Member".ToUpper() };
                var guestRole = new IdentityRole { Name = "Guest", NormalizedName = "Guest".ToUpper() };

                context.Roles.Add(adminRole);
                context.Roles.Add(memberRole);
                context.Roles.Add(guestRole);
                context.SaveChanges();

              /* var userManager = serviceProvider.GetService<UserManager<IdentityUser>>();
                IdentityUser adminUser = new IdentityUser()
                {
                    UserName = "Admin",
                    Email = "admin@gmail.com",
                    LockoutEnabled = false,
                    PhoneNumber = "1234567890",
                    EmailConfirmed = true
                    //NormalizedUserName = "Admin".ToUpper(),
                    //NormalizedEmail = "admin@gmail.com".ToUpper()
                };
                await userManager.CreateAsync(adminUser);
                await userManager.AddPasswordAsync(adminUser, "P@ssw0rd");
                //await userManager.AddToRoleAsync(adminUser, "Admin");
                await context.SaveChangesAsync();
                //PasswordHasher<IdentityUser> passwordHasher = new PasswordHasher<IdentityUser>();
                //IdentityUser adminUser = new IdentityUser()
                //{
                //    UserName = "Admin",
                //    Email = "admin@gmail.com",
                //    LockoutEnabled = false,
                //    PhoneNumber = "1234567890",
                //    EmailConfirmed = true,
                //    NormalizedUserName = "Admin".ToUpper(),
                //    NormalizedEmail = "admin@gmail.com".ToUpper()
                //};
                //adminUser.PasswordHash = passwordHasher.HashPassword(adminUser, "P@ssw0rd");

                //IdentityUser memberUser = new IdentityUser()
                //{
                //    UserName = "Member",
                //    Email = "member@gmail.com",
                //    LockoutEnabled = false,
                //    PhoneNumber = "1234567891",
                //    EmailConfirmed = true,
                //    NormalizedUserName = "Member".ToUpper(),
                //    NormalizedEmail = "member@gmail.com".ToUpper()
                //};
                //memberUser.PasswordHash = passwordHasher.HashPassword(adminUser, "P@ssw0rd");

                //context.Users.Add(adminUser);
                //context.Users.Add(memberUser);

                //context.SaveChanges();

                //var adminRoleID = context.Roles.Single(r => r.Name == adminRole.Name).Id;
                //var adminUserID = context.Users.Single(u => u.Email == adminUser.Email).Id;
                //IdentityUserRole<string> adminUserRole = new IdentityUserRole<string>() { RoleId = adminRoleID, UserId = adminUserID };
                //context.UserRoles.Add(adminUserRole);

                //var memberRoleID = context.Roles.Single(r => r.Name == memberRole.Name).Id;
                //var memberUserID = context.Users.Single(u => u.Email == memberUser.Email).Id;
                //IdentityUserRole<string> memberUserRole = new IdentityUserRole<string>() { RoleId = memberRoleID, UserId = memberUserID };
                //context.UserRoles.Add(memberUserRole);
              */
            }
            if (!context.Tour.Any())
            {
                context.Tour.AddRange(
                    new Tour
                    {
                        Title = "4 days in Italy",
                        StartDate = DateTime.Parse("2024-05-25"),
                        EndDate = DateTime.Parse("2024-05-29"),
                        Country = "Italy",
                        Description = "Discover the essence of Italy on a 4-day getaway, exploring Rome's ancient ruins and Vatican City, then jetting off to the Amalfi Coast, where you'll soak up the sun on picturesque beaches like Positano and Amalfi, and finally indulge in the romantic charm of Venice, with its winding canals and stunning St. Mark's Square.",
                        Price = 1400
                    },
                    new Tour
                    {
                        Title = "A week in Greece",
                        StartDate = DateTime.Parse("2024-05-19"),
                        EndDate = DateTime.Parse("2024-05-29"),
                        Country = "Greece",
                        Description = "Explore the best of Greece on a 7-day adventure, visiting Athens, the cradle of Western civilization, and its iconic Acropolis, then island-hop to Mykonos, with its vibrant nightlife and stunning beaches, and finally relax on the picturesque shores of Santorini, with its famous black sand beach and breathtaking sunsets.",
                        Price = 1700
                    },
                    new Tour
                    {
                        Title = "3 days in Germany",
                        StartDate = DateTime.Parse("2024-05-27"),
                        EndDate = DateTime.Parse("2024-05-30"),
                        Country = "Germany",
                        Description = "Experience the best of Germany on a 3-day adventure, visiting Berlin's vibrant city center and iconic landmarks like the Brandenburg Gate, then exploring the charming medieval town of Rothenburg ob der Tauber, and finally relaxing in the picturesque coastal town of Sylt, with its stunning beaches and rugged North Sea coastline.",
                        Price = 900
                    },
                    new Tour
                    {
                        Title = "6 days in Spain",
                        StartDate = DateTime.Parse("2024-05-21"),
                        EndDate = DateTime.Parse("2024-05-27"),
                        Country = "Italy",
                        Description = "Embark on a 6-day odyssey through Spain, discovering the rich history and culture of Madrid's Royal Palace and Prado Museum, then heading to the sun-kissed Costa Brava, where you'll unwind on the pristine beaches of Lloret de Mar and Tossa de Mar, and finally experience the vibrant energy of Barcelona, with its iconic Sagrada Familia and bustling La Rambla.",
                        Price = 2100
                    }
                 );
            }
            if (!context.Event.Any())
            {
                context.Event.AddRange(
                    new Event
                    {
                        Title = "Rila Lakes hike",
                        EventDate = DateTime.Parse("2024-05-26"),
                        Destination = "Rila Lakes, Rila mountain, Bulgaria",
                        Description = "Join a guided one - day hike to the breathtaking Rila Lakes, located in the Rila Mountains, where you'll trek through stunning alpine landscapes, traverse scenic mountain trails, and marvel at the crystal-clear waters of the seven shimmering lakes, including the majestic Popovo Lake, offering breathtaking views of the surrounding peaks and valleys.",
                        Price = 40
                    },
                    new Event
                    {
                        Title = "Trolltunga Hike",
                        EventDate = DateTime.Parse("2024-06-15"),
                        Destination = "Hardangervidda, Norway",
                        Description = "Embark on a challenging 10-hour hike to the iconic Trolltunga rock formation, offering breathtaking views of the Norwegian wilderness and the surrounding mountains.",
                        Price = 120
                    },
                    new Event
                    {
                        Title = "Santorini Sunset Cruise",
                        EventDate = DateTime.Parse("2024-08-03"),
                        Destination = "Santorini, Greece",
                        Description = "Relax on a luxurious catamaran cruise around the stunning caldera of Santorini, watching the breathtaking sunset over the Aegean Sea, and enjoying a refreshing cocktail and canapés.",
                        Price = 60
                    },
                    new Event
                    {
                        Title = "Iguazu Falls Hike",
                        EventDate = DateTime.Parse("2024-04-20"),
                        Destination = "Iguazu Falls, Argentina/Brazil",
                        Description = "Join a guided hike to the breathtaking Devil's Throat waterfall, exploring the lush tropical forests and getting up close to the roaring falls, with stunning views of the surrounding Argentine and Brazilian sides.",
                        Price = 80
                    }
                );
            }
            context.SaveChanges();
        }
    }
}