using System;
using System.Reflection;

namespace EBROnline.Infractructure
{
    public class ConvertToWay<TFirst, TLast>
    {
        public static void ConvertTo(TFirst first, out TLast last)
        {
            Type type = typeof(TLast);
            last = (TLast)Activator.CreateInstance(type);

            var proInfoFirsts = typeof(TFirst).GetProperties();

            foreach (PropertyInfo info in proInfoFirsts)
            {
                if (info.PropertyType == typeof(Int32) ||
                    info.PropertyType == typeof(DateTime) ||
                    info.PropertyType == typeof(string)||
                    info.PropertyType == typeof(bool))
                {
                    string name = info.Name;
                    object obj = info.GetValue(first);
                    type.GetProperty(name).SetValue(last, obj);
                }
            }
        }
    }
}