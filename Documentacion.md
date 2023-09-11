# Documentacion OVMS

- **Vehicle/OVMS.V3**

  - **components**
    - **can/src**

      - can.cpp
      - canlog.cpp
      - canlog.h
    - ovms_cellular/src
    - **ovms_server_v3/src**

      - ovms_server_v3.cpp
        - **OvmsServerV3::OvmsServerV3(const char* *name*)**
          Funcion que se encarga de hacer el setup inicial del servidor, algunos eventos importantes son:

          - **MyEvents.RegisterEvent(TAG,"network.up", std::bind(&OvmsServerV3::NetUp, this, _1, _2));
            NetUp**
            Llama a la funcion Connect, la cual hace el setup de variable y las conecciones pertinetes para que inicie el servidor.
          - ****MyEvents.RegisterEvent(TAG,"network.down", std::bind(&OvmsServerV3::NetDown, this, _1, _2));
            NetDown****
            Llama a la funcion Disconect, la cual desconecta el servidor.

          ---


          - **MyEvents.RegisterEvent(TAG,"network.reconfigured", std::bind(&OvmsServerV3::NetReconfigured, this, _1, _2));
            NetReconfigured**
            Desconecta el servidor (llama a Disconect())y lo vuelve a conectar en 10 segundos.
          - **MyEvents.RegisterEvent(TAG,"network.mgr.init", std::bind(&OvmsServerV3::NetmanInit, this, _1, _2));
            NetmanInit**
            Expulsa la coneccion y se vuelve a conectar
          - **MyEvents.RegisterEvent(TAG,"network.mgr.stop", std::bind(&OvmsServerV3::NetmanStop, this, _1, _2));
            NetmanStop**
            La red está caída, así que desconecte la conexión de red
          - **MyEvents.RegisterEvent(TAG,"ticker.1", std::bind(&OvmsServerV3::Ticker1, this, _1, _2));
            Ticker1**
          - **MyEvents.RegisterEvent(TAG,"ticker.60", std::bind(&OvmsServerV3::Ticker60, this, _1, _2));
            Ticker60**
            Cada 60 tickers Cuenta los clientes
          - **MyEvents.RegisterEvent(TAG,"system.modem.received.ussd", std::bind(&OvmsServerV3::EventListener, this, _1, _2));

          MyEvents.RegisterEvent(TAG,"config.changed", std::bind(&OvmsServerV3::EventListener, this, _1, _2));

          MyEvents.RegisterEvent(TAG,"config.mounted", std::bind(&OvmsServerV3::EventListener, this, _1, _2));

          EventListener (la mismsa para los ultimos 3 listener)**
          Si el evento es config.changed o config.mounted, llama a ConfigChanged(), el cual actualiza los parametros de

          - streaming
          - updatetime_connected
          - updatetime_idle
          - updatetime_awake
          - updatetime_on
          - updatetime_charging
          - updatetime_sendall
      - ovms_server_v3.h
        1. **Includes**: The header file includes several other header files (**`<string>`**, **`"ovms_server.h"`**, **`"ovms_netmanager.h"`**, etc.), which likely provide necessary classes, types, and functions used within this class.
        2. **Constants and Macros**:
           - **`MQTT_CONN_NTOPICS`**: A macro defining the number of MQTT connection topics as 2.
        3. **Enumeration - `State`**:
           - Defines an enumeration type **`State`** that represents different states of the server. States include **`Undefined`**, **`WaitNetwork`**, **`ConnectWait`**, **`Connecting`**, **`Authenticating`**, **`Connected`**, **`Disconnected`**, and **`WaitReconnect`**.
    - **vehicle**

      - vehicle.cpp

        - **OvmsVehicleFactory::OvmsVehicleFactory():**
          Instancia los comandos con RegisterCommand en el formato:
          {nombre, titulo, OVMS_command, uso, minimo, maximo, seguro}
        - **DuktapeObjectRegistration**
          Registra funciones de duktape en el formato:
          {funcion, nargs, nombre}
        - **OvmsVehicle* OvmsVehicleFactory::NewVehicle(const char* *VehicleType*)**
          Crea un nuevo vehiculo dado el tipo de vehiculo.
        - **void OvmsVehicleFactory::ClearVehicle()**
          Limpia todos los datos del vehiculo y lo elimina.
        - **void OvmsVehicleFactory::SetVehicle(const char* *type*)**
          Setea un vehiculo dado su type, si este ya existe lo elimina y lo vuelve a crear.
        - **void OvmsVehicle::VehicleTicker1(std::string *event*, void* *data*)**
          funcion encargada de llamar a las funcione dado los diferentes ticker, se pueden agregar funciones o funcionalidades para que se llamen con los diferentes ticker.
        - El resto del archivo son setup de diferentes funciones con DUKTAPE.
          Entre los que estan

        ```
        virtual vehicle_command_t CommandSetChargeMode(vehicle_mode_t mode);
        virtual vehicle_command_t CommandSetChargeCurrent(uint16_t limit);
        virtual vehicle_command_t CommandStartCharge();
        virtual vehicle_command_t CommandStopCharge();
        virtual vehicle_command_t CommandSetChargeTimer(bool timeron, uint16_t timerstart);
        virtual vehicle_command_t CommandCooldown(bool cooldownon);
        virtual vehicle_command_t CommandWakeup();
        virtual vehicle_command_t CommandClimateControl(bool enable);
        virtual vehicle_command_t CommandLock(const char* pin);
        virtual vehicle_command_t CommandUnlock(const char* pin);
        virtual vehicle_command_t CommandActivateValet(const char* pin);
        virtual vehicle_command_t CommandDeactivateValet(const char* pin);
        virtual vehicle_command_t CommandHomelink(int button, int durationms=1000);
        ```
    - **vehicle_kianirsg2/src**

      - **vehicle_kianiroevsg2.cpp**
        - **static const OvmsVehicle::poll_pid_t vehicle_kianiroevsg2_polls[]:**
          define los pid y frecuencia para hacer pull a los diferentes ICUs.
          {1. tranmission CAN ID, 2. response CAN ID, 3.UDS poll type, 4.PID, 5.  polltime (frequency), 6. pollbus, 7.protocol}
        - **OvmsVehicleKiaNiroEvSg2::OvmsVehicleKiaNiroEvSg2():**
          seput inicial de kia niro
        - **bool OvmsVehicleKiaNiroEvSg2::ConfigChanged(const char **x*, const char **y*):**
          setea valor variable reset_by_config = true,
        - **void OvmsVehicleKiaNiroEvSg2::VerifyConfigs(bool *verify*):**
          revisa que la configuracion este correcta. En el caso de que algun parametro esta incorrecto lo arregla. Termina de verificar si quedo todo correcto, en caso contrario hace un reboot.
        - **void OvmsVehicleKiaNiroEvSg2::HandleCarOn() :**
          genera que el esp_log_write mande que auto esta ON.
          Llama POLLSTATE_RUNNING el cual llama PollSetState(0), el cual setea frecuencia de mensaje.
        - **void OvmsVehicleKiaNiroEvSg2::HandleCarOff() :**
          genera que el esp_log_write mande que auto esta OFF.
          Llama POLLSTATE_OFF el cual llama PollSetState(1), el cual setea frecuencia de mensaje.
        - **void OvmsVehicleKiaNiroEvSg2::HandleCarCharging() :**
          genera que el esp_log_write mande que auto esta CHARGING.
          Llama POLLSTATE_CHARGING el cual llama PollSetState(2), el cual setea frecuencia de mensaje.
        - **void OvmsVehicleKiaNiroEvSg2::Ticker1(uint32_t *ticker*):**
          cada segundo verifica diferente values, por ejemplo si las puertas estan abiertas o cerrdas, voltaje y corriente, etc.
        - **void OvmsVehicleKiaNiroEvSg2::VerifyDoorLock():**
          verifica que la puerta este abierta/cerrada, en el caso de que no esta en la opcion que deberia, intenta abrir/cerrar de nuevo hasta 3 veces.
  - main
    - **ovms_boot.cpp**
      - **Seteo de char**
        Primero se setea los char para Exception description, Register Names, Boot reasons y Resert Reasons en
      - **#if ESP_IDF_VERSION_MAJOR < 4**
        procesa RTC_RESET_CAUSE_REG para determinar elmotivo de reinicio y devuelve un valor sp_reset_reason_t que representa la razón identificada
      - **void boot_status(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)**
        Proporciona un resumen detallado del estado de arranque del sistema, incluyendo información acerca del último arranque, razones de reinicio, detalles de fallos. Ademas imprime informacion sobre el sistema antes del crash, entre estos el core donde fue llamado el abort(), si fue stackoverflow, si quedan tasks sin correr y en que core. Version y el hardware.
      - **void boot_clear(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)**
        reinicia y borra ciertos datos de estado de arranque. Establece en cero todos los campos en la estructura boot_data y calcula un nuevo valor de checksum para dicha estructura
      - **#if ESP_IDF_VERSION_MAJOR >= 4**

        Definicion del panic handler
      - **Boot::Boot()**
        Inicializa y gestiona varios aspectos de arranque para el ESP32. Maneja diferentes razones de reinicio, gestiona los datos de arranque, establece indicadores, instala manejadores de errores y registra comandos para consultar y restablecer el estado del sistema de arranque. El código proporciona una forma de rastrear y manejar diferentes escenarios de arranque y ofrece comandos útiles para interactuar con el sistema de arranque.
      - **void Boot::SetStable()**
        Se llama cuando se concidera el sistema estable. Esrtablece table_reached a verdadero, reinicia el contador de fallos iniciales y recalcula el valor CRC para la estructura de datos de arranque
      - **void Boot::SetSoftReset()**
        Se llama cuando el usuario pide un reset
      - **void Boot::SetFirmwareUpdate()**
        Se llama para hacer un update de Firmware, hace un reset
      - **const char* Boot::GetBootReasonName()**
        transforma la variable m_bootreason a un texto entendible, en el caso que no este en el rango valido, entrega que Uknown reason
      - **const char* Boot::GetResetReasonName()**
        transforma la variable m_resetreason a un texto entendible, en el caso que no este en el rango valido, entrega que Uknown reason
      - **static void boot_shutdown_done(const char* event, void* data)**
        Maneja el proceso de apagado del sistema. Desmonta configuraciones o recursos, determina si el sistema debe entrar en modo de hibernacion profunda o reiniciarse y luego lleva a cabo las acciones para cada caso. Tiene toda la logica para la secuencia de apagado y los modos de energia del sistema.
      - **static void boot_shuttingdown_done(const char* event, void* data)**
        setea MyBoot.m_shutdown_timer = 2; si MyBoot.m_shutdown_pending == 0.
      - **void Boot::Restart(bool hard)**
        Se encarga de manejar las operaciones de reinicio y apagado. parte llamando a SetSoftReset, si se pide reset brusco lo reinicia inmediatamente. Si es controlado, configura indicadores, temporizadores y devoluciones de llamada de eventos para gestionar el proceso de apagado.
      - **void Boot::DeepSleep(unsigned int seconds /*=60*/)**
        prepara el sistema para la hibernacion profunda al establecer los segundos en los que va a estar en hibernacion. Despues de preparar el sistema, la funcion inicia un reinicio del sistema.
      - **void Boot::DeepSleep(time_t waketime)**
        prepara el sistema para la hibernacion profunda al establecer el tiempo de despertado. Despues de preparar el sistema, la funcion inicia un reinicio del sistema.
      - **void Boot::ShutdownPending(const char* tag)**
        Marca una operación de apagado como pendiente, incrementar el contador correspondiente y registrar un mensaje de advertencia para indicar el apagado pendiente junto con el recuento total de operaciones de apagado pendientes.
      - **void Boot::ShutdownReady(const char* tag)**
        Marca una operación de apagado como lista, actualizar el contador de operaciones de apagado pendientes y posiblemente reiniciar un temporizador de apagado cuando se hayan completado todos los apagados pendientes
      - **void Boot::Ticker1(std::string event, void* data)**
        Controla el temporizador de apagado o reinicio, registrando mensajes informativos y emitiendo eventos según el estado del temporizador y otros valores relacionados. También muestra detalles sobre el tiempo restante y la cantidad de apagados pendientes en intervalos específicos.
      - **EL resto de las funciones corresponden a acciones especificas del esp32**
    - ovms_config.cpp
      - **void store_mount(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)**
        monta el almacenamiento
      - **void store_unmount(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)**
        desmonta el almacenamiento
      - **int config_validate(OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv, bool complete)**
        valida la configuracion de diferentes parametros entregados en argv
      - **void config_list(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)**
        muestra la información de configuración en función de los argumentos proporcionados. Puede mostrar detalles de todos los parámetros o detalles específicos de un parámetro en particular, incluyendo sus instancias y sus propiedades legibles/protectoras y escribibles/lectura-solo.
      - **void config_set(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)**
        establece los valores en una configuración, despues de revisar que es montado, existan parametros y es escribible
      - ****void config_rm(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)****
        elimina una parametro/instancia. revisa que sea factible eliminar y luego la elimina.
      - **#ifdef CONFIG_OVMS_SC_ZIP**

        - **void config_backup(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)**
          devuelve la contraseña respaldada, si esta no es entregada en argv[1].
          guarda los datos en MyConfig.Backup(argv[0], password, writer, verbosity);
        - **void config_restore(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)**
          funciona casi igual que config_backoup. guarda los datos en MyConfig.Restore(argv[0], password, writer, verbosity);
      - **OvmsConfig::OvmsConfig()**
        setea los valores iniciales para la configuracion y comandos del sistema
      - **esp_err_t OvmsConfig::mount()**
        monta y configura la memoria_fat. carga y actualiza unos parametros
      - **esp_err_t OvmsConfig::unmount()**
        desmonta el almacenamiento
      - **void OvmsConfig::upgrade()**
        realiza una serie de migraciones y actualizaciones en la configuración después de que se haya montado y cargado.
      - **void OvmsConfig::RegisterParam(std::string name, std::string title, bool writable, bool readable)**
        registra un parametro
      - **void OvmsConfig::DeregisterParam(std::string name)**
        elimina un parametro
      - **void OvmsConfig::SetParamValue [Binary, Int, Float, Bool]**

        Todas funcionan igual, setean el parametro dado el tipo que se pide Binary, Int, Float, Bool.

        - **void OvmsConfig::SetParamValue(std::string param, std::string instance, std::string value)**
        - **void OvmsConfig::SetParamValueBinary(std::string param, std::string instance, std::string value, BinaryEncoding_t encoding /*=Encoding_HEX*/)**
        - **void OvmsConfig::SetParamValueInt(std::string param, std::string instance, int value)**
        - **void OvmsConfig::SetParamValueFloat(std::string param, std::string instance, float value)**
        - **void OvmsConfig::SetParamValueBool(std::string param, std::string instance, bool value)**
      - **void OvmsConfig::DeleteInstance(std::string param, std::string instance)**
        elimina la instancia
      - **std::string OvmsConfig::GetParamValue[Binary, Int, Float, Bool]**

        Todas funcionan igual, retorna el parametro dado el tipo que se pide Binary, Int, Float, Bool.

        - **std::string OvmsConfig::GetParamValue(std::string param, std::string instance, std::string defvalue)**
        - **std::string OvmsConfig::GetParamValueBinary(std::string param, std::string instance, std::string defvalue, BinaryEncoding_t encoding /*=Encoding_HEX*/)**
        - **int OvmsConfig::GetParamValueInt(std::string param, std::string instance, int defvalue)**
        - **float OvmsConfig::GetParamValueFloat(std::string param, std::string instance, float defvalue)**
        - **bool OvmsConfig::GetParamValueBool(std::string param, std::string instance, bool defvalue)**
      - **bool OvmsConfig::IsDefined(std::string param, std::string instance)**
        comprueba que un instancia especifica de un parametro esta definida.
      - **OvmsConfigParam* OvmsConfig::CachedParam(std::string param)**
        buscar y obtener un puntero a una instancia de **`OvmsConfigParam`** a partir de su nombre.
      - **bool OvmsConfig::ProtectedPath(std::string path)**
        determina si un path esta protegida
      - **ConfigParamMap OvmsConfig::GetParamMap(std::string param)**
        obtiene un mapa de parámetros de configuración asociado con un nombre de parámetro dado. Este método parece estar diseñado para simplificar el proceso de obtención de mapas de configuración y trabajar con parámetros de configuración
      - **void OvmsConfig::SetParamMap(std::string param, ConfigParamMap& map)**
        setea un mapa de parametros.
      - **#ifdef CONFIG_OVMS_SC_ZIP**

        - **bool OvmsConfig::Backup(std::string path, std::string password, OvmsWriter* writer /*=NULL*/, int verbosity /*=1024*/)**
          realiza una copia de seguridad de la configuración en un archivo ZIP en una ubicación específica. La función se encarga de crear el archivo ZIP, agregar los archivos y directorios necesarios, y manejar los mensajes de progreso y errores.
        - **static bool install_dir(std::string src, std::string dst)**
          es una forma segura de instalar un directorio, manejando copias de seguridad y restauraciones en caso de fallo durante el proceso de instalación.
        - **bool OvmsConfig::Restore(std::string path, std::string password, OvmsWriter* writer /*=NULL*/, int verbosity /*=1024*/)**
          restaura la configuración desde un archivo ZIP previamente creado por la función de respaldo. Esta función maneja el proceso de restauración de manera segura y completa, asegurándose de que se restaure adecuadamente la configuración y se reinicie el sistema si es necesario.
      - **void OvmsConfig::SupportSummary(OvmsWriter* writer)**
        imprime un resumen legible de la configuración actual en función de la visibilidad y el valor de los parámetros
      - **OvmsConfigParam::OvmsConfigParam(std::string name, std::string title, bool writable, bool readable)**
        setea los parametros
      - **void OvmsConfigParam::LoadConfig()**
        carga los parametros desde un archivo en el sitema de archivos.Si se encuentran metadatos relevantes, como la visibilidad y el título del parámetro, también se procesan.
      - **void OvmsConfigParam::SetValue(std::string instance, std::string value)**
        establece el valor de una instancia de un parametro
      - **void OvmsConfigParam::DeleteParam()**
        elimina el valor de una instancia de un parametro
    - **ovms_command.cpp**
      - **OvmsWriter::OvmsWriter()**
        inicializa el objeto de escritura mediante la verificación de la configuración de la contraseña, configurando indicadores para seguridad y monitoreo, e inicializando punteros para inserción y datos de usuario. Prepara el objeto para un uso posterior en la escritura de datos
      - **void OvmsWriter::RegisterInsertCallback(InsertCallback *cb*, void* *ctx*)**
        establece una función de devolución de llamada de inserción y su contexto de usuario asociado para una instancia de OvmsWriter
      - **OvmsCommand* OvmsCommandMap::FindUniquePrefix(const char* *key*)**
        Busca un prefijo único dentro de un mapa de comandos. Devuelve un puntero al objeto OvmsCommand asociado con el prefijo único o NULL si el prefijo no es único o si no se encontraron coincidencias.
      - **OvmsCommand* OvmsCommandMap::FindCommand(const char* *key*)**
        Busca un comando específico dentro de un mapa de comandos. Devuelve un puntero al objeto OvmsCommand asociado con la clave proporcionada si el comando se encuentra, o NULL si el comando no está presente en el mapa.
      - **char ** OvmsCommandMap::GetCompletion(OvmsWriter* *writer*, const char* *token*)**
        Genera una lista de posibles completaciones de comandos basada en el token de entrada proporcionado por el usuario. Devuelve una matriz de cadenas que representan las sugerencias de completación para la entrada de la línea de comandos.
      - **OvmsCommand::OvmsCommand()**
        inicializa OvmsCommand
      - **OvmsCommand::OvmsCommand(const char* name, const char* title,OvmsCommandExecuteCallback_t execute,const char *usage, int min, int max, bool secure,OvmsCommandValidateCallback_t validate)**
        Encapsula información sobre un comando que puede ser ejecutado en una interfaz de línea de comandos. Incluye detalles sobre el nombre del comando, título, comportamiento de ejecución, plantilla de uso, restricciones de argumentos, configuración de seguridad y devolución de llamada de validación.
      - **void OvmsCommand::PutUsage(OvmsWriter* *writer*)**
        construye una cadena de uso para un comando recorriendo los comandos principales y incorporando sus plantillas de uso. Luego, agrega la plantilla de uso del comando actual y muestra la información final de uso utilizando el OvmsWriter proporcionado como argumento.
      - **void OvmsCommand::ExpandUsage(const char* *templ*, OvmsWriter* *writer*, std::string& *result*)**
        rellena la cadena de resultados con una versión expandida de la plantilla de uso proporcionada, teniendo en cuenta el estado del comando y sus subcomandos
      - **OvmsCommand* OvmsCommand::RegisterCommand(const char* name, const char* title, OvmsCommandExecuteCallback_t execute, const char *usage, int min, int max, bool secure, OvmsCommandValidateCallback_t validate)**
        Revisa si el ya existe un comando con nombre ‘name’, en caso de que no exista se crea un nuevo comando con los parametros entregados
      - **bool OvmsCommand::UnregisterCommand(const char* *name*)**
        Literal el nombre. Si name es NULL, se debe UNREGISTER el comando actual. En otro caso se UNREGISTER el comando con nombre ‘name’
      - **char ** OvmsCommand::Complete(OvmsWriter* *writer*, int *argc*, const char * const * *argv*)**
        maneja la finalización de comandos en la jerarquía de comandos gestionada por la clase OvmsCommand. Sugiere posibles completados para nombres de comandos y argumentos basados en la entrada del usuario y la estructura de la jerarquía de comandos.
      - **void OvmsCommand::Execute(int *verbosity*, OvmsWriter* *writer*, int *argc*, const char * const * *argv*)**
        Ejecuta los diferentes comandos que recive, chequea que estos tengan el formato correcto o si son de ayuda. Tambien ejecuta subcomandos. El código también maneja casos de seguridad donde algunos comandos requieren un modo seguro para ejecutarse.
      - **void OvmsCommand::Display(OvmsWriter* *writer*, int *level*)**
        Se encarga de presentar información sobre los comandos y subcomandos en un formato tabular. Proporciona detalles como el nombre del comando, su título, plantilla de uso, límites de argumentos y varias banderas que indican sus capacidades, como si tiene subcomandos, si es seguro y si tiene funciones de ejecución o validación. Además, se maneja la indentación adecuada para mostrar la jerarquía de comandos y subcomandos.
      - **void help(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        Imprime el mensaje sobre help.
      - **void log_level(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        ajusta los niveles de registro de diferentes componentes o áreas del sistema. Se basa en el título del comando para determinar el nivel de registro deseado y configura el nivel de registro correspondiente para la etiqueta especificada. Luego, muestra un mensaje indicando el cambio realizado.
      - **void log_file(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        configura un archivo de registro para el sistema. Puede tomar una ruta de archivo como argumento o utilizar una ruta predefinida desde la configuración. Verifica si la ruta está protegida antes de intentar configurar el archivo de registro. Si todo es exitoso, muestra un mensaje de confirmación. Si ocurren errores durante el proceso, muestra mensajes de error correspondientes.
      - **void log_close(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        detiene el registro en un archivo previamente configurado para el sistema. Verifica si se ha configurado una ruta de archivo de registro y luego intenta cerrar el archivo. Muestra mensajes de confirmación o error según el resultado de la operación de cierre.
      - **void log_open(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        inicia el registro en un archivo previamente configurado para el sistema. Verifica si se ha configurado una ruta de archivo de registro y luego intenta abrir el archivo. Muestra mensajes de confirmación o error según el resultado de la operación de apertura.
      - **void log_expire(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        gestiona la expiración de archivos de registro en un sistema. Verifica si una tarea de expiración está en ejecución, determina el número de días a mantener para los archivos y llama a una función que realiza la tarea real de expiración de archivos de registro.
      - **void log_monitor(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        controla el estado de la monitorización de mensajes de registro en un sistema. Dependiendo del comando proporcionado (monitor o monitor_yes), habilita o deshabilita la monitorización y muestra un mensaje indicando el cambio de estado. Luego, ajusta el estado de monitorización en el objeto writer para reflejar el cambio.
      - **bool enableInsert(OvmsWriter* *writer*, void* *v*, char *ch*)**
        maneja la entrada de contraseñas y habilitar el modo seguro en un sistema. Verifica si la contraseña ingresada es correcta, maneja intentos fallidos y ofrece mensajes de retroalimentación en función de la entrada del usuario.
      - **void enable(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        habilita el modo seguro en un sistema mediante el ingreso de una contraseña
      - **void disable(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        Setea variable m_issecure = false;
      - **void cmd_sleep(int verbosity, OvmsWriter* writer, OvmsCommand* cmd, int argc, const char* const* argv)**
        suspende la ejecución del programa durante un tiempo determinado en milisegundos
      - **void cmd_echo(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        se comporta como el comando de terminal "echo", imprimiendo los argumentos que recibe.
      - **OvmsCommandApp::OvmsCommandApp()**
        inicializa y registra una serie de comandos y subcomandos en una aplicación de comandos (OvmsCommandApp). Los comandos son de áreas como el registro, la seguridad, utilidades de script y características opcionales.
      - **void OvmsCommandApp::ConfigureLogging()**
        establece la configuración relacionada con el registro de eventos y parámetros en una aplicación de comandos (OvmsCommandApp)
      - **OvmsCommand* OvmsCommandApp::RegisterCommand(const char* name, const char* title, OvmsCommandExecuteCallback_t execute,
        const char *usage, int min, int max, bool secure)**
        registra un comando dado los parametros entregados
      - **bool OvmsCommandApp::UnregisterCommand(const char* name)**

        elimina un comando dado el nombre entregado
      - **OvmsCommand* OvmsCommandApp::FindCommand(const char* name)**
        busca un comando dado el nombre entregado
      - **OvmsCommand* OvmsCommandApp::FindCommandFullName(const char* *name*)**
        busca un comando específico en la jerarquía de comandos de la aplicación. Toma un nombre completo de comando que puede incluir múltiples segmentos separados por espacios, y busca cada segmento en la jerarquía de comandos para encontrar el comando deseado.
      - **int OvmsCommandApp::Log(const char* *fmt*, va_list *args*)**
        proporciona una interfaz más amigable para registrar mensajes de registro en un sistema de registro.
      - **int OvmsCommandApp::LogPartial(const char* *fmt*, ...)**
        registra mensajes de registro en destinos de registro como consolas o archivos utilizando buffers de registro. La función gestiona la creación y reutilización de buffers de registro, así como la actualización de la cantidad de registros en los buffers. Luego, los registros se envían a los destinos de registro disponibles en la aplicación.
      - **int OvmsCommandApp::LogBuffer(LogBuffers* *lb*, const char* *fmt*, va_list *args*)**
        se utiliza para formatear y registrar el contenido de un búfer de registro en un objeto de buffers de registro (LogBuffers).El resultado del formato y el tamaño del búfer se devuelven como resultado de la función.
      - **int OvmsCommandApp::HexDump(const char* *tag*, const char* *prefix*, const char* *data*, size_t *length*, size_t *colsize* /*=16*/)**
        realizar un volcado hexadecimal de datos en un formato legible y registrar ese volcado en el registro de depuración utilizando la función ESP_LOGV. La función itera a través de los datos en partes según el tamaño de columna especificado (colsize), registra cada parte formateada y finalmente retorna la longitud total de los datos procesados.
      - **char ** OvmsCommandApp::Complete(OvmsWriter* *writer*, int *argc*, const char * const * *argv*)**
        entrega sugerencias de autocompletado para comandos y argumentos cuando un usuario escribe en la consola
      - **void OvmsCommandApp::Execute(int *verbosity*, OvmsWriter* *writer*, int *argc*, const char * const * *argv*)**
        implementa una tarea en segundo plano para manejar la escritura de registros en un archivo de registro. Realiza sincronización, control de tamaño, control de errores y otros procesos relacionados con la escritura y administración de registros.
      - **void OvmsCommandApp::LogTask()**
        implementa una tarea en segundo plano para manejar la escritura de registros en un archivo de registro. Realiza sincronización, control de tamaño, control de errores y otros procesos relacionados con la escritura y administración de registros.
      - **bool OvmsCommandApp::StartLogTask(FILE* *file*)**
        asegura que se inicie una tarea para gestionar la escritura de registros en un archivo. También se encarga de configurar correctamente los recursos necesarios, como la cola de tareas y la habilitación de la monitorización de registros.
      - **bool OvmsCommandApp::StopLogTask()**
        detiene la tarea de registro, asegurándose de desvincular la consola de registro, enviar un comando de salida a la tarea y esperar a que la tarea termine antes de finalizar.
      - **bool OvmsCommandApp::CloseLogfile()**
        detiene la tarea de registro, cerrar el archivo de registro y proporcionar información sobre el cierre del registro de archivos.
      - **bool OvmsCommandApp::OpenLogfile()**
        cierra cualquier archivo de registro existente, abrir un nuevo archivo de registro y prepararlo para escribir registros en él.
    - **ovms_consol.cpp**
      - **char ** Complete (microrl_t* *rl*, int *argc*, const char * const * *argv* )**
        Adaptador entre el mecanismo de autocompleto de libreria “microrl” y la logica de la instacia “MyCommandApp”
      - **OvmsConsole::OvmsConsole()**
        Inicializa valores para OvmsConsole

        ```
        m_ready = false;
          m_deferred = NULL;
          m_discarded = 0;
          m_state = AT_PROMPT;
          m_lost = m_acked = 0;
        ```
      - **OvmsConsole::~OvmsConsole()**
        llama funcion DeregisterConsole la cual llama a m_consoles.erase(*writer*);
      - **void OvmsConsole::Initialize(const char* *console*)**
        Inicializa la consola, configura el manejo de autocompletado, imprime un mensaje de bienvenida, registra la consola y la prepara para la interacción del usuario.
      - **char** OvmsConsole::SetCompletion(int *index*, const char* *token*)**
        Prepara y configura la matriz de autocompletado basada en el indice y un token que recibe. Garantiza terminacion adecuada y manejo de casos bordes como superar el maximo de tokens.
      - **void OvmsConsole::Log(LogBuffers* *message*)**
        Envia mensajes de registro a una cola para ser procesaso. ****Verifica si la consola está lista para manejar mensajes de registro y libera los búferes de mensajes si la consola no está lista o si la cola está llena. También realiza un seguimiento del contador de mensajes de registro perdidos con fines de monitorización.
      - **void OvmsConsole::Service()**
        Genera un bucle en cual llama la funcion Poll
      - **void OvmsConsole::Poll(portTickType *ticks*, QueueHandle_t *queue*)**
        Procesa los eventos de la cola los cuales pueden tener eventos de UART y eventos asincronicos de mensajes de registro. Maneja el procesamiento de eventos, mensajes de registro perdidos y mantiene indicador y estado de la consola.
      - **void OvmsConsole::finalise()**
        Realiza operaciones de limpieza final relacionadas con la cola de eventos diferidos y el manejo de mensaje. Procesa los eventos diferidos restantes, muestra información sobre los mensajes de registro descartados si corresponde y elimina la cola de eventos diferidos. Garantiza la limpieza adecuado de los recursos cuando la consola se esta cerrando/finalizando.
    - **ovms_events.cpp**
      - **bool EventMap::GetCompletion(OvmsWriter* *writer*, const char* *token*) const**
        se usa para generar sugerencias de finalización automática para nombres de eventos basados en un token parcial. Itera a través de los eventos en EventMap, compara sus nombres con el token dado y establece sugerencias de finalización automática en consecuencia. Las sugerencias se proporcionan a través del objeto OvmsWriter, que probablemente se utilice para interactuar con la consola o la interfaz de salida del programa.
      - **void event_trace(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        revisa si el comando es “on”, en el caso verdadero setea m_trace true, en otro caso false.
      - **void event_status(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        muestra el estado de los detectores de eventos y enviar eventos dentro del sistema OVMS. Proporciona información sobre el número de oyentes, el estado de la cola y, si corresponde, información sobre el evento de envío actual y sus detalles.
      - **void event_list(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        listar eventos y los llamadores asociados con cada evento dentro del sistema OVMS. La función genera una cadena formateada que contiene esta información y la imprime utilizando el objeto OvmsWriter proporcionado.
      - **int event_validate(OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*, bool *complete*)**
        validación de argumentos y auto-completación de nombres de eventos en el sistema OVMS. Verifica si los argumentos proporcionados cumplen condiciones específicas relacionadas con los eventos y sus completaciones, y devuelve una confirmación (argc) o una indicación de argumentos inválidos (-1).
      - **void event_raise(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        generar eventos dentro del sistema OVMS. Procesa los argumentos de la línea de comandos para determinar el nombre del evento y opcionalmente un retraso, luego activa el evento con o sin el retraso especificado.
      - ****OvmsEvents::OvmsEvents()****
        Inicializa la clase OvmsEvents, configurando el manejo de eventos, el seguimiento de eventos, el registro de comandos, la creación de tareas y el soporte de JavaScript si está habilitado.
      - **OvmsEvents::~OvmsEvents()**
        libera los recursos asociados con el manejo de eventos cuando se destruye la instancia de OvmsEvents.
      - **void OvmsEvents::EventTask()**
        Procesa continuamente los eventos de la cola de tareas, reiniciando el temporizador WATCHDOG según sea necesario, y maneja diferentes tipos de eventos. También incluye manejo de errores para lidiar con casos de tiempo de espera y flasheo OTA.
      - **void OvmsEvents::HandleQueueSignalEvent(event_queue_t* *msg*)**
        procesa eventos de señal en cola ejecutando devoluciones de llamada asociadas con el evento específico y el evento comodín "*", además de ejecutar un script de evento. Se encarga del registro, actualizaciones de marcas de tiempo y la gestión de memoria para el procesamiento de eventos.
      - **void OvmsEvents::RegisterEvent(std::string *caller*, std::string *event*, EventCallback *callback*)**
        agrega un evento con su devolución de llamada asociada al mapa de eventos. Se encarga de crear la entrada en el mapa de eventos, verificar errores y añadir la entrada de devolución de llamada a la lista de devoluciones de llamada asociadas con el evento.
      - **void OvmsEvents::DeregisterEvent(std::string *caller*)**
        Elimina y limpia las devoluciones de llamada de eventos asociadas con un llamador específico. Recorre el mapa de eventos y las listas de devoluciones de llamada asociadas, eliminando las devoluciones de llamada coincidentes y realizando la limpieza necesaria de los datos. Si una lista de devoluciones de llamada queda vacía después de eliminar sus devoluciones de llamada, la entrada de evento también se elimina del mapa de eventos.
      - **static void CheckQueueOverflow(const char* *from*, char* *event*)**
        Gestiona una condición de OverFLlw, especialmente en situaciones donde se pierden eventos importantes. Registra mensajes de error, toma acciones para estabilizar el sistema y potencialmente inicia una interrupción del sistema si es necesario.
      - **void OvmsEvents::SignalScheduledEvent(TimerHandle_t *timer*)
        M**aneja la ejecución de eventos programados basados en temporizadores. Recupera el mensaje de evento asociado con el temporizador, lo pasa a la cola de tareas de eventos, gestiona un posible OverFlow y actualiza el estado de actividad del temporizador.
      - **bool OvmsEvents::ScheduleEvent(event_queue_t* *msg*, uint32_t *delay_ms*)**
        Programa eventos con un retraso específico mediante temporizadores. Crea o reutiliza temporizadores, establece sus cargas útiles, actualiza sus períodos y los inicia. La función gestiona el estado de los temporizadores y sus mensajes de eventos asociados. Maneja todo esto con uso de threadmutex para no sobreescrivir
      - **void OvmsEvents::SignalEvent**

        En este caso tenemos un overload de la funcion, dependiendo la cantidad de parametros que entregamos es cual funcion sera llamada

        - **4 params (std::string event, void* data, event_signal_done_fn callback /*=NULL*/, uint32_t delay_ms /*=0*/)**
        - **3 params (std::string event, void* data, size_t length, uint32_t delay_ms /*=0*/)**

        En ambas funciones, el proceso implica la creación de una estructura de mensaje de evento, la asignación de memoria para datos relacionados con el evento y luego, o bien el envío del evento a la cola de tareas o su programación con un retraso. Estas funciones son fundamentales para el mecanismo de manejo de eventos en el sistema OVMS, permitiendo que los eventos se generen y procesen de manera asíncrona.

        La primera función se utiliza para eventos sin datos, mientras que la segunda función se utiliza para eventos con cargas útiles de datos asociados. La segunda función se encarga de la asignación de memoria y la limpieza automática de la carga útil de datos.
      - **#if ESP_IDF_VERSION_MAJOR >= 4 // IMPORTANTEEE !!!!**

        - **void OvmsEvents::ReceiveSystemEvent(void* *handler_args*, esp_event_base_t *base*, int32_t *id*, void* *event_data*)**
          actúa como un manejador de eventos centralizado para varios eventos a nivel de sistema, como eventos de Wi-Fi, eventos de IP y eventos de Ethernet. Utiliza los datos de eventos proporcionados y las estructuras de datos asociadas para activar las acciones apropiadas dentro de la instancia de OvmsEvents llamando al método SignalEvent con el nombre de evento relevante y los dato
      - **#else // utilizamos este porque tenemos 3.3 IMPORTANTE**

        - **esp_err_t OvmsEvents::ReceiveSystemEvent(void **ctx*, system_event_t **event*)**
          maneja eventos para los eventos del sistema ESP-IDF. Utiliza los datos de eventos proporcionados para señalar tanto un evento general del sistema como un evento específico del sistema utilizando los métodos proporcionados por la instancia de OvmsEvents. El manejo del evento específico del sistema se delega al método SignalSystemEvent.
        - **void OvmsEvents::SignalSystemEvent(system_event_t **event*)**
          actúa como intermediario entre el mecanismo de manejo de eventos del sistema ESP32 y el mecanismo de manejo de eventos personalizado proporcionado por la clase OvmsEvents. Traduce los eventos del sistema en eventos personalizados correspondientes utilizando el método SignalEvent. Esto permite que la aplicación reaccione a los eventos del sistema de una manera controlada y personalizada.
    - **ovms_metrics.cpp**
      - **static const OvmsUnitInfo unit_info[int(MetricUnitLast)+1]:**
        mapping de medidas en formato:
        {Unit Code, Label, Metric Unt, Imperial Unt,Unit Group
      - **void metrics_list(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        Recorre la command-line entregada. Para cada metric revisa si deberia estar como **`only_persist`** and **`show_only`**. Si la metric cumple con los criterios, es formatiado y se imprime su informacion importante.
      - **void metrics_persist(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        examina **pmetrics**, estructura equivalente a la siguiente estructura, pero guardado en RTC Slow memory

        ```cpp
        struct persistent_metrics
          {
          u_long                      magic;
          int                         version;
          unsigned int                serial;
          size_t                      size;
          int                         used;
          persistent_values           values[100];
          }
        ```
        dado los valores de **pmetrics** hace diferentes acciones.
      - **static int metrics_set_validate(OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*, bool *complete*)
        2 opciones
        case 1** Se encarga de revisar que las metricas sea valida
        case 3 Intenta encontrar una metrica unica basada en **`argv[0]`**si lo encuentra usa getUnits() y GetMetricGroup para sacar su unidad y grupo. Finalmente devuelve **OvmsMetricUnit_Validate(writer, argc, argv[2], complete, group);**
      - **bool pmetrics_check()**
        revisa que los parametros de pmetrics esten correctos, retorna false en caso de que alguno no este correcto.
      - **persistent_values *pmetrics_find(const char **name*)**
        busca entre una coleccion de persistent values y retorna el puntero a un especifico valor el cual sea igual a “name”. utiliza sistema de hash
      - **persistent_values *pmetrics_register(const char **name*)**
        situa **name** en la coleccion de persistent values
      - **void metrics_trace(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        revisa si el comando es “on”, en el caso verdadero setea m_trace true, en otro caso false.
      - **void metrics_units(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        recorre los argv, revisa si son opciones o metricas. En el caso que sean metricas y tienen setiado show_only, se busca su metric unit y metric label. Imprime el metric name y su label.
        En el caso que una metrica tiene show_only y no fue encontrado imprime error.
      - **#ifdef CONFIG_OVMS_SC_JAVASCRIPT_DUKTAPE**

        - static duk_ret_t DukOvmsMetricHasValue(duk_context **ctx*)
        - static duk_ret_t DukOvmsMetricValue(duk_context **ctx*)
        - static duk_ret_t DukOvmsMetricJSON(duk_context **ctx*)
        - static duk_ret_t DukOvmsMetricFloat(duk_context **ctx*)
        - static duk_ret_t DukOvmsMetricGetValues(duk_context **ctx*)
        - 
      - **OvmsMetrics::OvmsMetrics()**
        seteo inicial de los comandos para las metricas
      - **void OvmsMetrics::RegisterMetric(OvmsMetric* *metric*)**
        guarda las metricas en ovms con el orden correcto
      - **lista de funciones de ovms::metrics**

        Continua una gran cantidad de funciones autoexplicativas como las siguientes:
        El resto de funciones se encuentran en el archivo, no van a a ser mencionadas ni explicadas.

        - **void OvmsMetrics::DeregisterMetric(OvmsMetric* *metric*)}**
        - **std::string OvmsMetrics::GetUnitStr(const char* *metric*, const char **unit*)**
        - **bool OvmsMetrics::Set(const char* *metric*, const char* *value*, const char **unit*)**
        - **bool OvmsMetrics::SetInt(const char* *metric*, int *value*)**
        - **bool OvmsMetrics::SetBool(const char* *metric*, bool *value*)**
        - **bool OvmsMetrics::SetFloat(const char* *metric*, float *value*)**
        - **OvmsMetric* OvmsMetrics::Find(const char* *metric*)**
        - **OvmsMetric* OvmsMetrics::FindUniquePrefix(const char* *token*) const**
        - **bool OvmsMetrics::GetCompletion(OvmsWriter* *writer*, const char* *token*) const**
        - **int OvmsMetrics::Validate(OvmsWriter* *writer*, int *argc*, const char* *token*, bool *complete*) const**
        - **OvmsMetricInt* OvmsMetrics::InitInt(const char* *metric*, uint16_t *autostale*, int *value*, metric_unit_t *units*, bool *persist*)**
        - **OvmsMetricBool* OvmsMetrics::InitBool(const char* *metric*, uint16_t *autostale*, bool *value*, metric_unit_t *units*, bool *persist*)**
        - **OvmsMetricFloat* OvmsMetrics::InitFloat(const char* *metric*, uint16_t *autostale*, float *value*, metric_unit_t *units*, bool *persist*)**
        - **OvmsMetricString* OvmsMetrics::InitString(const char* *metric*, uint16_t *autostale*, const char* *value*, metric_unit_t *units*)**
        - **void OvmsMetrics::RegisterListener(std::string *caller*, std::string *name*, MetricCallback *callback*)**
        - **void OvmsMetrics::DeregisterListener(std::string *caller*)**
        - **void OvmsMetrics::NotifyModified(OvmsMetric* *metric*)**
        - **size_t OvmsMetrics::RegisterModifier()**
        - **void OvmsMetrics::InitialiseSlot(size_t *modifier*)**
        - **void OvmsMetrics::SetAllUnitSend(size_t *modifier*)**
        - 
    - **ovms_netmanager.cpp**
      - **void network_status(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        Se encarga de imprimir informacion del los detalles de la interfaz. Recorre la lista de “netif_list” y para cada una de ellas imprime el nombre, numero, UP, link_UP flags, IPv4 adress, netmask y gateway.
        Luego imprime los servidores DNS que han sido configurado.
        Finalmente imprime default network interface.
      - **void network_restart(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
        Llama a RestartNetwork(). La cual reinicia a esp32wifi y m_cellular_modem si estan definidos.
      - **#ifdef CONFIG_OVMS_DEV_NETMANAGER_PING // no nos sirve ahora**

        - En el caso de que este definido **CONFIG_OVMS_DEV_NETMANAGER_PING**

          Se llama diferentes funciones las cuales son nativas de esp32, del area ****ICMP Echo.**** Dentro de este if se inicializa un nuevo ping
          [https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/protocols/icmp_echo.html](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/protocols/icmp_echo.html)

          - **static void test_on_ping_success(esp_ping_handle_t *hdl*, void **args*)**
            Type of “ping” callback functions.Invoked by internal ping thread when received ICMP echo reply packet.
          - **static void test_on_ping_timeout(esp_ping_handle_t *hdl*, void **args*)**
            Type of “ping” callback functions.Invoked by internal ping thread when receive ICMP echo reply packet timeout.
          - **static void test_on_ping_end(esp_ping_handle_t *hdl*, void **args*)**
            Type of “ping” callback functions. Invoked by internal ping thread when a ping session is finished. Crea variable pingdone, la cual es entregada a xSemaphoreGive()
          - **void network_ping(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)
            Convierte argv[0] a IPv6**, si funciona, la asgina al objetivo de ping “target_addr”. Si falla, la obtiene sacando getaddrinfo.
            **Crea una configuracion de ping** con la estructura esp_ping_config_t, entregando “target addr” y cantidad de ping “count”.
            **Preparación de callbacks y manejo de la sesión de ping**: Se crea una estructura ping_callback_args_t que contiene el escritor y un semáforo (pingdone) que se utilizará para esperar la finalización de la sesión de ping. Luego, se crea una estructura esp_ping_callbacks_t que contiene punteros a funciones de devolución de llamada para diferentes eventos de ping, como éxito, tiempo de espera y finalización.
            **Iniciar la sesión de ping**: Se crea una nueva sesión de ping utilizando esp_ping_new_session()
            **Comenzar el ping**: Se inicia la sesión de ping utilizando esp_ping_start(ping).
      - **#ifdef CONFIG_OVMS_SC_GPL_MONGOOSE // no meterce**

        - En el caso que este definido **#ifdef CONFIG_OVMS_SC_GPL_MONGOOSE**
          - **void network_connections(int *verbosity*, OvmsWriter* *writer*, OvmsCommand* *cmd*, int *argc*, const char* const* *argv*)**
            La función comienza verificando si la tarea de Mongoose está en ejecución. Luego revisa si es en contexto de Mongoose o remoto.
      - **OvmsNetManager::OvmsNetManager()
        se establecen las siguientes variables:**

        ```
        m_connected_wifi = false;
          m_connected_modem = false;
          m_connected_any = false;
          m_wifi_sta = false;
          m_wifi_good = false;
          m_wifi_ap = false;
          m_network_any = false;
          m_cfg_wifi_sq_good = -87;
          m_cfg_wifi_sq_bad = -89;
        ```
      - **#ifdef CONFIG_OVMS_COMP_WIFI //comentar todos los eventos**

        - **void OvmsNetManager::WifiConnect()**
          Se llama al establecer coneccion a wifi. Si la coneccion esta habilitada y no se ha conectado antes cambia **m_connected_wifi** = true, realiza priorizaciones y activa eventos. Si tambien esta conectado un modem , señala evento de reconfiguracion, en otro caso, señala un evento de inicio de red. Tambien inicia una tarea de Mongoose si esta habilitada.
        - **void OvmsNetManager::WifiDisconnect()**
          Cambia el estado de **m_connected_wifi** = false, Si también está conectado algún otro tipo de red (**`m_connected_any`**), señala un evento de reconfiguración y programa una limpieza si está habilitada Mongoose.. Si no hay ninguna otra conexión, señala un evento de red caída y, si está habilitado Mongoose, detiene la tarea de Mongoose.
        - **void OvmsNetManager::WifiStaGotIP(std::string *event*, void* *data*)**
          setea **m_wifi_sta** = true, guarda el dns server. Repriorisa los wifi. Finalmente llama **WifiStaCheckSQ.**
        - **void OvmsNetManager::WifiStaLostIP(std::string *event*, void* *data*)**
          Se llama cuando se pierde coneccion. Repriorisa los wifi.
        - **void OvmsNetManager::WifiStaConnected(std::string *event*, void* *data*)**
          Se llama cuando se conecta a un wifi. Repriorisa los wifi.
        - **void OvmsNetManager::WifiStaStop(std::string *event*, void* *data*)**
          setea **m_wifi_sta =** false, llama a **WifiDisconnect(),** la cual maneja la desconeccion. Luego Repriorisa los wifi.
        - **void OvmsNetManager::WifiStaGood(std::string *event*, void* *data*)**
          si m_wifi_sta && !m_connected_wifi llama a **WifiConnect();**
        - **void OvmsNetManager::WifiStaBad(std::string *event*, void* *data*)**
          llama a **WifiDisconnect(),** la cual maneja la desconeccion. Luego Repriorisa los wifi. y llama a **MyPeripherals->m_esp32wifi->Reconnect(NULL);**.
        - **void OvmsNetManager::WifiStaCheckSQ(OvmsMetric* *metric*)**
          Verifica la calidad de la señal WiFi y señala eventos según la calidad.
        - **void OvmsNetManager::WifiStaSetSQ(bool *good*)**
          Establece la calidad de la señal WiFi y señala eventos según si la calidad es buena o mala, esto dado la variable .
        - **void OvmsNetManager::WifiUpAP(std::string *event*, void* *data*)**
          Setea **m_wifi_ap** = true, (access point). y llama a PrioritiseAndIndicate(), el cual llama **tcpip_callback_with_block** ([https://www.nongnu.org/lwip/2_1_x/group__lwip__os.html](https://www.nongnu.org/lwip/2_1_x/group__lwip__os.html))
        - **void OvmsNetManager::WifiDownAP(std::string *event*, void* *data*)**
          Setea **m_wifi_ap** = false, (access point). y llama a PrioritiseAndIndicate(), el cual llama **tcpip_callback_with_block** ([https://www.nongnu.org/lwip/2_1_x/group__lwip__os.html](https://www.nongnu.org/lwip/2_1_x/group__lwip__os.html)).
        - **void OvmsNetManager::WifiApStaDisconnect(std::string *event*, void* *data*):**
          Maneja el evento de desconexión de una estación desde un punto de acceso WiFi.
