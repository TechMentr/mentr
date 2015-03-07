﻿namespace Mentr.Core
{
    public interface IMember
    {
        int ID { get; }

        string Name { get; }

        string Surname { get; }

        string Username { get; }

        string Email { get; }

        bool IsMentor { get; }

        bool IsMentee { get; }
    }
}
