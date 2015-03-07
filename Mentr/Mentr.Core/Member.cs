﻿namespace Mentr.Core
{
    public class Member
    {
        public int ID { get; private set; }

        public string Name { get; private set; }

        public string Surname { get; private set; }

        public string Email { get; private set; }

        public bool IsMentor { get; private set; }

        public bool IsMentee { get; private set; }
    }
}
