[assembly: WebActivatorEx.PreApplicationStartMethod(typeof(EBROnline.App_Start.NinjectWebCommon), "Start")]
[assembly: WebActivatorEx.ApplicationShutdownMethodAttribute(typeof(EBROnline.App_Start.NinjectWebCommon), "Stop")]

namespace EBROnline.App_Start
{
    using System;
    using System.Web;

    using Microsoft.Web.Infrastructure.DynamicModuleHelper;

    using Ninject;
    using Ninject.Web.Common;

    using EBROnline.Model.Abstracts;
    using EBROnline.Model.Concretes;
    using EBROnline.Utilities;

    public static class NinjectWebCommon
    {
        private static readonly Bootstrapper bootstrapper = new Bootstrapper();

        /// <summary>
        /// Starts the application
        /// </summary>
        public static void Start()
        {
            DynamicModuleUtility.RegisterModule(typeof(OnePerRequestHttpModule));
            DynamicModuleUtility.RegisterModule(typeof(NinjectHttpModule));
            bootstrapper.Initialize(CreateKernel);
        }

        /// <summary>
        /// Stops the application.
        /// </summary>
        public static void Stop()
        {
            bootstrapper.ShutDown();
        }

        /// <summary>
        /// Creates the kernel that will manage your application.
        /// </summary>
        /// <returns>The created kernel.</returns>
        private static IKernel CreateKernel()
        {
            var kernel = new StandardKernel();
            try
            {
                kernel.Bind<Func<IKernel>>().ToMethod(ctx => () => new Bootstrapper().Kernel);
                kernel.Bind<IHttpModule>().To<HttpApplicationInitializationHttpModule>();

                RegisterServices(kernel);
                return kernel;
            }
            catch
            {
                kernel.Dispose();
                throw;
            }
        }

        /// <summary>
        /// Load your modules or register your services here!
        /// </summary>
        /// <param name="kernel">The kernel.</param>
        private static void RegisterServices(IKernel kernel)
        {
            kernel.Bind<ILogService>().To<LogService>();
            var logService = kernel.Get<ILogService>();

            kernel.Bind<IEBRMasterRepository>().To<EBRMasterRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IEBRSubMasterRepository>().To<EBRSubMasterRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTAssLocRepository>().To<MSTAssLocRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTBuildReasonRepository>().To<MSTBuildReasonRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTDieBankRepository>().To<MSTDieBankRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTEmailAddressRepository>().To<MSTEmailAddressRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTFabCodeRepository>().To<MSTFabCodeRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTFGLocationRepository>().To<MSTFGLocationRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTMarkingInstructionRepository>().To<MSTMarkingInstructionRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTMarkingSLRepository>().To<MSTMarkingSLRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTOwnerRepository>().To<MSTOwnerRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTPackageRepository>().To<MSTPackageRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTPackageTestTypeRepository>().To<MSTPackageTestTypeRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTPackageTypesRepository>().To<MSTPackageTypesRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTPriorityOfAssemblyBuildRepository>().To<MSTPriorityOfAssemblyBuildRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTProbeStatusRepository>().To<MSTProbeStatusRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTProcessLTSRepository>().To<MSTProcessLTSRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTPKProcessTypeRepository>().To<MSTPKProcessTypeRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTQualityLevelRepository>().To<MSTQualityLevelRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTRevenueLocationRepository>().To<MSTRevenueLocationRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTVendorCodeRepository>().To<MSTVendorCodeRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTVendorContactRepository>().To<MSTVendorContactRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTWaferSizeRepository>().To<MSTWaferSizeRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTWireMaterialRepository>().To<MSTWireMaterialRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<IMSTRequesterLocationRepository>().To<MSTRequesterLocationRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<ISYSRolesRepository>().To<SYSRolesRepository>().WithConstructorArgument<ILogService>(logService);
            kernel.Bind<ISYSUsersRepository>().To<SYSUsersRepository>().WithConstructorArgument<ILogService>(logService);

            kernel.Bind<ISNPFullMDRepository>().To<SNPFullMDRepository>().WithConstructorArgument<ILogService>(logService);
        }
    }
}
