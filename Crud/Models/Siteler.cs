//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Crud.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Siteler
    {
        public int id { get; set; }
        public Nullable<int> KisiID { get; set; }
        public string Site { get; set; }
    
        public virtual Kisiler Kisiler { get; set; }
    }
}
