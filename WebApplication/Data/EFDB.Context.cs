﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ConoisseurEntities : DbContext
    {
        public ConoisseurEntities()
            : base("name=ConoisseurEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<coupon_codes> coupon_codes { get; set; }
        public virtual DbSet<coupon_type> coupon_type { get; set; }
        public virtual DbSet<order> orders { get; set; }
        public virtual DbSet<order_product> order_product { get; set; }
        public virtual DbSet<product> products { get; set; }
        public virtual DbSet<product_category> product_category { get; set; }
        public virtual DbSet<user> users { get; set; }
    }
}