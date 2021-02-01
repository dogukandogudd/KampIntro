using System;
using System.Collections.Generic;
using System.Text;

namespace OOP2
{
    class Musteri
    {
        public int Id { get; set; }
        public string MusteriNo { get; set; }

        public static implicit operator Musteri(GercekMusteri v)
        {
            throw new NotImplementedException();
        }

        public static implicit operator Musteri(TuzelMusteri v)
        {
            throw new NotImplementedException();
        }
    }
}
