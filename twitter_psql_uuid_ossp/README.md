
```
create database digdag_support owner digdag;
```

```
database.type = postgresql
database.user = digdag
#database.password = passwd
database.host = 127.0.0.1
database.port = 5432
database.database = digdag_support
```

`digdag server -c postgresql.conf`

```
2017-06-14 20:18:46 +0900: Digdag v0.9.12
2017-06-14 20:18:47 +0900 [INFO] (main): secret encryption engine: disabled
Exception in thread "main" java.lang.Error: java.lang.reflect.InvocationTargetException
	at org.embulk.guice.LifeCycleModule$1$1.afterInjection(LifeCycleModule.java:81)
	at com.google.inject.internal.MembersInjectorImpl.notifyListeners(MembersInjectorImpl.java:119)
	at com.google.inject.internal.ConstructorInjector.provision(ConstructorInjector.java:115)
	at com.google.inject.internal.ConstructorInjector.construct(ConstructorInjector.java:85)
	at com.google.inject.internal.ConstructorBindingImpl$Factory.get(ConstructorBindingImpl.java:267)
	at com.google.inject.internal.SingleParameterInjector.inject(SingleParameterInjector.java:38)
	at com.google.inject.internal.SingleParameterInjector.getAll(SingleParameterInjector.java:62)
	at com.google.inject.internal.ConstructorInjector.provision(ConstructorInjector.java:104)
	at com.google.inject.internal.ConstructorInjector.construct(ConstructorInjector.java:85)
	at com.google.inject.internal.ConstructorBindingImpl$Factory.get(ConstructorBindingImpl.java:267)
	at com.google.inject.internal.BoundProviderFactory.get(BoundProviderFactory.java:61)
	at com.google.inject.internal.SingleParameterInjector.inject(SingleParameterInjector.java:38)
	at com.google.inject.internal.SingleParameterInjector.getAll(SingleParameterInjector.java:62)
	at com.google.inject.internal.ConstructorInjector.provision(ConstructorInjector.java:104)
	at com.google.inject.internal.ConstructorInjector.construct(ConstructorInjector.java:85)
	at com.google.inject.internal.ConstructorBindingImpl$Factory.get(ConstructorBindingImpl.java:267)
	at com.google.inject.internal.ProviderToInternalFactoryAdapter$1.call(ProviderToInternalFactoryAdapter.java:46)
	at com.google.inject.internal.InjectorImpl.callInContext(InjectorImpl.java:1103)
	at com.google.inject.internal.ProviderToInternalFactoryAdapter.get(ProviderToInternalFactoryAdapter.java:40)
	at com.google.inject.internal.SingletonScope$1.get(SingletonScope.java:145)
	at com.google.inject.internal.InternalFactoryToProviderAdapter.get(InternalFactoryToProviderAdapter.java:41)
	at com.google.inject.internal.InternalInjectorCreator$1.call(InternalInjectorCreator.java:205)
	at com.google.inject.internal.InternalInjectorCreator$1.call(InternalInjectorCreator.java:199)
	at com.google.inject.internal.InjectorImpl.callInContext(InjectorImpl.java:1092)
	at com.google.inject.internal.InternalInjectorCreator.loadEagerSingletons(InternalInjectorCreator.java:199)
	at com.google.inject.internal.InternalInjectorCreator.injectDynamically(InternalInjectorCreator.java:180)
	at com.google.inject.internal.InternalInjectorCreator.build(InternalInjectorCreator.java:110)
	at com.google.inject.Guice.createInjector(Guice.java:96)
	at org.embulk.guice.Bootstrap.start(Bootstrap.java:155)
	at org.embulk.guice.Bootstrap.build(Bootstrap.java:117)
	at org.embulk.guice.Bootstrap.initializeCloseable(Bootstrap.java:112)
	at io.digdag.guice.rs.server.undertow.UndertowBootstrap.initialize(UndertowBootstrap.java:70)
	at io.digdag.guice.rs.GuiceRsServletContainerInitializer.processBootstrap(GuiceRsServletContainerInitializer.java:61)
	at io.digdag.guice.rs.GuiceRsServletContainerInitializer.onStartup(GuiceRsServletContainerInitializer.java:36)
	at io.undertow.servlet.core.DeploymentManagerImpl$1.call(DeploymentManagerImpl.java:186)
	at io.undertow.servlet.core.DeploymentManagerImpl$1.call(DeploymentManagerImpl.java:171)
	at io.undertow.servlet.core.ServletRequestContextThreadSetupAction$1.call(ServletRequestContextThreadSetupAction.java:42)
	at io.undertow.servlet.core.ContextClassLoaderSetupAction$1.call(ContextClassLoaderSetupAction.java:43)
	at io.undertow.servlet.core.DeploymentManagerImpl.deploy(DeploymentManagerImpl.java:234)
	at io.digdag.guice.rs.server.undertow.UndertowServer.start(UndertowServer.java:179)
	at io.digdag.server.ServerBootstrap.start(ServerBootstrap.java:73)
	at io.digdag.cli.Server.startServer(Server.java:128)
	at io.digdag.cli.Server.main(Server.java:94)
	at io.digdag.cli.Main.cli(Main.java:187)
	at io.digdag.cli.Main.main(Main.java:82)
Caused by: java.lang.reflect.InvocationTargetException
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.embulk.guice.LifeCycleManager.startInstance(LifeCycleManager.java:203)
	at org.embulk.guice.LifeCycleManager.addInstance(LifeCycleManager.java:185)
	at org.embulk.guice.LifeCycleModule$1$1.afterInjection(LifeCycleModule.java:78)
	... 44 more
Caused by: org.skife.jdbi.v2.exceptions.UnableToExecuteStatementException: org.postgresql.util.PSQLException: ERROR: permission denied to create extension "uuid-ossp"
  ???: Must be superuser to create this extension. [statement:"CREATE EXTENSION IF NOT EXISTS "uuid-ossp"", located:"CREATE EXTENSION IF NOT EXISTS "uuid-ossp"", rewritten:"CREATE EXTENSION IF NOT EXISTS "uuid-ossp"", arguments:{ positional:{}, named:{}, finder:[]}]
	at org.skife.jdbi.v2.SQLStatement.internalExecute(SQLStatement.java:1338)
	at org.skife.jdbi.v2.Update.execute(Update.java:56)
	at org.skife.jdbi.v2.BasicHandle.update(BasicHandle.java:298)
	at io.digdag.core.database.migrate.Migration_20151204221156_CreateTables.migrate(Migration_20151204221156_CreateTables.java:17)
	at io.digdag.core.database.DatabaseMigrator.applyMigration(DatabaseMigrator.java:161)
	at io.digdag.core.database.DatabaseMigrator.lambda$migrate$2(DatabaseMigrator.java:137)
	at org.skife.jdbi.v2.tweak.transactions.LocalTransactionHandler.inTransaction(LocalTransactionHandler.java:183)
	at org.skife.jdbi.v2.BasicHandle.inTransaction(BasicHandle.java:331)
	at io.digdag.core.database.DatabaseMigrator.migrate(DatabaseMigrator.java:134)
	at io.digdag.core.database.DatabaseModule$AutoMigrator.migrate(DatabaseModule.java:53)
	... 51 more
Caused by: org.postgresql.util.PSQLException: ERROR: permission denied to create extension "uuid-ossp"
  ???: Must be superuser to create this extension.
	at org.postgresql.core.v3.QueryExecutorImpl.receiveErrorResponse(QueryExecutorImpl.java:2458)
	at org.postgresql.core.v3.QueryExecutorImpl.processResults(QueryExecutorImpl.java:2158)
	at org.postgresql.core.v3.QueryExecutorImpl.execute(QueryExecutorImpl.java:291)
	at org.postgresql.jdbc.PgStatement.executeInternal(PgStatement.java:432)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:358)
	at org.postgresql.jdbc.PgPreparedStatement.executeWithFlags(PgPreparedStatement.java:171)
	at org.postgresql.jdbc.PgPreparedStatement.execute(PgPreparedStatement.java:160)
	at com.zaxxer.hikari.pool.ProxyPreparedStatement.execute(ProxyPreparedStatement.java:44)
	at com.zaxxer.hikari.pool.HikariProxyPreparedStatement.execute(HikariProxyPreparedStatement.java)
	at org.skife.jdbi.v2.SQLStatement.internalExecute(SQLStatement.java:1327)
	... 60 more
```

```
\c digdag_support;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
```

digdag server -c postgresql.conf

```
2017-06-14 20:20:05 +0900: Digdag v0.9.12
2017-06-14 20:20:06 +0900 [INFO] (main): secret encryption engine: disabled
2017-06-14 20:20:06 +0900 [INFO] (main): XNIO version 3.3.6.Final
2017-06-14 20:20:06 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2017-06-14 20:20:06 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2017-06-14 20:20:06 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
```
