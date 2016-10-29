using System;
using System.Reflection;

namespace EBROnline.Infractructure
{
    public class ConvertToWay<TFrom, TTo>
    {
        public static void ConvertTo(TFrom from, out TTo to)
        {
            Type type = typeof(TTo);
            to = (TTo)Activator.CreateInstance(type);

            var proInfoFirsts = typeof(TFrom).GetProperties();

            foreach (PropertyInfo info in proInfoFirsts)
            {
                if (info.PropertyType == typeof(Int32) ||
                    info.PropertyType == typeof(DateTime) ||
                    info.PropertyType == typeof(string)||
                    info.PropertyType == typeof(bool))
                {
                    string name = info.Name;
                    object obj = info.GetValue(from);
                    type.GetProperty(name).SetValue(to, obj);
                }
            }
        }
    }
}