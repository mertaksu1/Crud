using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Crud.Models
{
    public class CrudViewModel
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Adınızı Giriniz!")]
        public string Adi { get; set; }
        [Required(ErrorMessage = "Soyadınızı Giriniz!")]
        public string Soyadi { get; set; }
        [Required(ErrorMessage = "Email Adresinizi Giriniz!")]
        [RegularExpression(@"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
                        @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
                        @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$",
                        ErrorMessage = "Email adresi geçersiz!")]
        public string Email { get; set; }
        [Required(ErrorMessage = "Telefon Numaranızı Giriniz!")]
        [Range(1000000000, 9999999999, ErrorMessage = "Telefon 10 karakterden oluşmaldır!")]
        public string Telefon { get; set; }
        [Required(ErrorMessage = "Seçim Yapınız!")]
        public Nullable<int> AdresID { get; set; }

        public virtual Adresler Adresler { get; set; }

        [Required(ErrorMessage = "Site Adresinizi Giriniz")]
        public string Site { get; set; }

    }
}