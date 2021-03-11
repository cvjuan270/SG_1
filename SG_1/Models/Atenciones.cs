namespace SG_1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Atenciones
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Atenciones()
        {
            Admision = new HashSet<Admision>();
            Auditoria = new HashSet<Auditoria>();
            Interconsulta = new HashSet<Interconsulta>();
            Medicina = new HashSet<Medicina>();
        }

        public int Id { get; set; }

        [StringLength(20)]
        public string Local0 { get; set; }

        [StringLength(20)]
        public string TipExa { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FecAte { get; set; }

        [StringLength(100)]
        public string NomApe { get; set; }

        [StringLength(20)]
        public string DocIde { get; set; }

        [StringLength(100)]
        public string Empres { get; set; }

        [StringLength(100)]
        public string SubCon { get; set; }

        [StringLength(100)]
        public string Proyec { get; set; }

        [StringLength(100)]
        public string Perfil { get; set; }

        [StringLength(100)]
        public string Area { get; set; }

        [StringLength(100)]
        public string PueTra { get; set; }

        [StringLength(50)]
        public string PeReAd { get; set; }

        public TimeSpan? Hora { get; set; }

        [StringLength(250)]
        public string Medico { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Admision> Admision { get; set; }

        public virtual Medicos Medicos { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Auditoria> Auditoria { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Interconsulta> Interconsulta { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Medicina> Medicina { get; set; }
    }
}
