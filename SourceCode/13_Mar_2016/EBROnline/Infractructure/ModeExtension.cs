using EBROnline.Model.DTO;
using EBROnline.ViewModel;
using System;
using System.Collections.Generic;

namespace EBROnline.Infractructure
{
    public static class ModeExtension
    {
        public static TDto TryToDto<TDto>(this MSTDto @base) where TDto : MSTDto
        {
            try
            {
                Type type = typeof(TDto);
                var dto = (TDto)Activator.CreateInstance(type);
                dto.Id = @base.Id;
                dto.Name = @base.Name;
                dto.Description = @base.Description;
                dto.IsDeleted = @base.IsDeleted;
                dto.LastUpdated = @base.LastUpdated;
                dto.LastUpdatedBy = @base.LastUpdatedBy;

                return dto;
            }
            catch
            {
                return null;
            }
        }

        public static MSTViewModel ToShortViewModel(this MSTDto @base, int id = 0)
        {
            return new MSTViewModel
            {
                Id = id,
                Name = @base.Name,
                Description = @base.Description,
            };
        }

        public static MSTViewModel TryToShortViewModel(this MSTDto @base, int id = 0)
        {
            return @base == null ? null :
              ToShortViewModel(@base, id);
        }

        public static MSTDto ToBase(this MSTViewModel model, int id = 0)
        {
            return id > 0 ? model.ToBaseWithId(id) : model.ToBaseSimple();
        }

        public static MSTDto WithUser(this MSTDto @base, string currentName)
        {
            @base.LastUpdatedBy = currentName;
            @base.LastUpdated = System.DateTime.Now;

            return @base;
        }

        public static MSTDto TryAddLog(this MSTDto @base, string currentName)
        {
            return @base == null ? null : WithUser(@base, currentName);
        }

        public static TTo ToEntity<TTo, TFrom>(this TFrom @base) where TTo : class where TFrom : MSTDto
        {
            var to = default(TTo);
            ConvertToWay<TFrom, TTo>.ConvertTo(@base, out to);

            return to;
        }

        public static TTo TryToEntity<TTo, TFrom>(this TFrom @base) where TTo : class where TFrom : MSTDto
        {
            if (@base == null)
                return null;

            try
            {
                var to = default(TTo);
                ConvertToWay<TFrom, TTo>.ConvertTo(@base, out to);

                return to;
            }
            catch
            {
                return null;
            }
        }

        public static TTo ToData<TTo, TFrom>(this TFrom @base) where TTo : MSTDto where TFrom : class
        {
            var to = default(TTo);
            ConvertToWay<TFrom, TTo>.ConvertTo(@base, out to);

            return to;
        }

        public static TTo TryToData<TTo, TFrom>(this TFrom @base) where TTo : MSTDto where TFrom : class
        {
            if (@base == null)
                return null;

            try
            {
                var to = default(TTo);
                ConvertToWay<TFrom, TTo>.ConvertTo(@base, out to);

                return to;
            }
            catch
            {
                return null;
            }
        }

        public static IEnumerable<TTo> ToDataTransferObjects<TTo, TFrom>(this IEnumerable<TFrom> entities) where TTo : MSTDto where TFrom : class
        {
            foreach (var item in entities)
            {
                yield return item.ToData<TTo, TFrom>();
            }
        }

        public static IEnumerable<TTo> TryToDataTransferObjects<TTo, TFrom>(this IEnumerable<TFrom> entities) where TTo : MSTDto where TFrom : class
        {
            if (entities == null)
                return null;

            return ToDataTransferObjects<TTo, TFrom>(entities);
        }

        private static MSTDto ToBaseSimple(this MSTViewModel model)
        {
            return new MSTDto
            {
                Name = model.Name,
                Description = model.Description,
            };
        }

        private static MSTDto ToBaseWithId(this MSTViewModel model, int id)
        {
            return new MSTDto
            {
                Id = id,
                Name = model.Name,
                Description = model.Description,
            };
        }
    }
}