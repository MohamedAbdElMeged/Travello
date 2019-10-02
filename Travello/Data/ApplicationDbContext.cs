using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Travello.Models;

namespace Travello.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {

        }
        public DbSet<Hotel> Hotels { get; set; }
        public DbSet<City> City { get; set; }
        public DbSet<Room> Room { get; set; }
        public DbSet<Order> Order { get; set; }

    }
}
