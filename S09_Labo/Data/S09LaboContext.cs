using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using S09_Labo.Models;

namespace S09_Labo.Data;

public partial class S09LaboContext : DbContext
{
    public S09LaboContext()
    {
    }

    public S09LaboContext(DbContextOptions<S09LaboContext> options)
        : base(options)
    {
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseSqlServer("Name=S09_Labo");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
