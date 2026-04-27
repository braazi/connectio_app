// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_BR locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt_BR';

  static String m0(appTitle) =>
      "Parabéns!\nSua conta ${appTitle} foi ativada.\nAgora você pode fazer login no seu espaço ${appTitle}.";

  static String m1(authority) =>
      "Tem certeza? Você está prestes a excluir sua conta ${authority}.";

  static String m2(count) =>
      "${Intl.plural(count, one: 'Alarme', other: 'Alarmes')}";

  static String m3(providerName) =>
      "Tem certeza de que deseja desativar ${providerName}?";

  static String m4(deviceName) =>
      "Não foi possível estabelecer sessão com o dispositivo ${deviceName}.\nPor favor, tente novamente";

  static String m5(link) => "Não é possível abrir a URL: ${link}";

  static String m6(wifiName) =>
      "Conecte-se a um Wi-Fi semelhante a ${wifiName}";

  static String m7(name) =>
      "A conexão com a rede Wi-Fi ${name} falhou.\nCertifique-se de que seu telefone esteja conectado à rede Wi-Fi do dispositivo e que o acesso à Rede Local esteja habilitado para este aplicativo nas configurações do seu dispositivo.";

  static String m8(count) =>
      "${Intl.plural(count, one: 'Painel', other: 'Painéis')}";

  static String m9(count) =>
      "${Intl.plural(count, one: 'Dispositivo', other: 'Dispositivos')}";

  static String m10(count) =>
      "Código de ${count}-${Intl.plural(count, one: 'dígito', other: 'dígitos')}";

  static String m11(contact) =>
      "Um código de segurança foi enviado para o seu endereço de e-mail em ${contact}.";

  static String m12(e) => "Ocorreu um erro: ${e}";

  static String m13(error) => "Erro ao enviar código: ${error}";

  static String m14(count) =>
      "${Intl.plural(count, one: 'Notificação', other: 'Notificações')}";

  static String m15(permissions) =>
      "Você não tem permissões suficientes para \"${permissions}\" para prosseguir.\nAbra as configurações do aplicativo, conceda as permissões e toque em \"Tentar Novamente\".";

  static String m16(permissions) =>
      "Você não tem permissões suficientes para \"${permissions}\" para prosseguir.\nPor favor, conceda as permissões necessárias e toque em \"Tentar Novamente\".";

  static String m17(deviceName) =>
      "Insira o PIN de ${deviceName} para confirmar a prova de posse";

  static String m18(time) =>
      "Reenviar código em ${Intl.plural(time, one: '1 segundo', other: '${time} segundos')}";

  static String m19(name) => "Rota não definida: ${name}";

  static String m20(count) =>
      "${Intl.plural(count, one: 'Buscar usuário', other: 'Buscar usuários')}";

  static String m21(contact) =>
      "Um código de segurança foi enviado para o seu telefone em ${contact}.";

  static String m22(name) =>
      "Não foi possível conectar ao Wi-Fi porque as redes não foram encontradas pelo dispositivo ${name}";

  static String m23(version) => "Atualizar para ${version}";

  static String m24(deviceName) =>
      "Para continuar a configuração do seu dispositivo ${deviceName}, forneça as credenciais da sua rede.";

  static String m25(network) => "Insira a senha para ${network}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "accept": MessageLookupByLibrary.simpleMessage("Aceitar"),
    "acceptPrivacyPolicyMessage": MessageLookupByLibrary.simpleMessage(
      "Você deve aceitar nossa Política de Privacidade",
    ),
    "acceptTermsOfUseMessage": MessageLookupByLibrary.simpleMessage(
      "Você deve aceitar nossos Termos de Uso",
    ),
    "accountActivated": MessageLookupByLibrary.simpleMessage(
      "Conta ativada com sucesso!",
    ),
    "accountActivatedText": m0,
    "accountDeletionDialogBody": m1,
    "acknowledge": MessageLookupByLibrary.simpleMessage("Reconhecer"),
    "acknowledged": MessageLookupByLibrary.simpleMessage("Reconhecido"),
    "actionData": MessageLookupByLibrary.simpleMessage("Dados da ação"),
    "actionStatusFailure": MessageLookupByLibrary.simpleMessage("Falha"),
    "actionStatusSuccess": MessageLookupByLibrary.simpleMessage("Sucesso"),
    "actionTypeActivated": MessageLookupByLibrary.simpleMessage("Ativado"),
    "actionTypeAdded": MessageLookupByLibrary.simpleMessage("Adicionado"),
    "actionTypeAddedComment": MessageLookupByLibrary.simpleMessage(
      "Comentário Adicionado",
    ),
    "actionTypeAddedToEntityGroup": MessageLookupByLibrary.simpleMessage(
      "Adicionado ao Grupo de Entidades",
    ),
    "actionTypeAlarmAck": MessageLookupByLibrary.simpleMessage("Reconhecido"),
    "actionTypeAlarmAssigned": MessageLookupByLibrary.simpleMessage(
      "Alarme Atribuído",
    ),
    "actionTypeAlarmClear": MessageLookupByLibrary.simpleMessage("Limpo"),
    "actionTypeAlarmDelete": MessageLookupByLibrary.simpleMessage(
      "Alarme Excluído",
    ),
    "actionTypeAlarmUnassigned": MessageLookupByLibrary.simpleMessage(
      "Alarme Desatribuído",
    ),
    "actionTypeAssignedFromTenant": MessageLookupByLibrary.simpleMessage(
      "Atribuído a partir do Tenant",
    ),
    "actionTypeAssignedToCustomer": MessageLookupByLibrary.simpleMessage(
      "Atribuído ao Cliente",
    ),
    "actionTypeAssignedToEdge": MessageLookupByLibrary.simpleMessage(
      "Atribuído ao Edge",
    ),
    "actionTypeAssignedToTenant": MessageLookupByLibrary.simpleMessage(
      "Atribuído ao Tenant",
    ),
    "actionTypeAttributesDeleted": MessageLookupByLibrary.simpleMessage(
      "Atributos Excluídos",
    ),
    "actionTypeAttributesRead": MessageLookupByLibrary.simpleMessage(
      "Atributos lidos",
    ),
    "actionTypeAttributesUpdated": MessageLookupByLibrary.simpleMessage(
      "Atributos Atualizados",
    ),
    "actionTypeChangeOwner": MessageLookupByLibrary.simpleMessage(
      "Proprietário Alterado",
    ),
    "actionTypeCredentialsRead": MessageLookupByLibrary.simpleMessage(
      "Credenciais lidas",
    ),
    "actionTypeCredentialsUpdated": MessageLookupByLibrary.simpleMessage(
      "Credenciais Atualizadas",
    ),
    "actionTypeDeleted": MessageLookupByLibrary.simpleMessage("Excluído"),
    "actionTypeDeletedComment": MessageLookupByLibrary.simpleMessage(
      "Comentário Excluído",
    ),
    "actionTypeLockout": MessageLookupByLibrary.simpleMessage("Bloqueio"),
    "actionTypeLogin": MessageLookupByLibrary.simpleMessage("Login"),
    "actionTypeLogout": MessageLookupByLibrary.simpleMessage("Logout"),
    "actionTypeMadePrivate": MessageLookupByLibrary.simpleMessage(
      "Tornado Privado",
    ),
    "actionTypeMadePublic": MessageLookupByLibrary.simpleMessage(
      "Tornado Público",
    ),
    "actionTypeProvisionFailure": MessageLookupByLibrary.simpleMessage(
      "Falha na configuração do dispositivo",
    ),
    "actionTypeProvisionSuccess": MessageLookupByLibrary.simpleMessage(
      "Dispositivo configurado",
    ),
    "actionTypeRelationAddOrUpdate": MessageLookupByLibrary.simpleMessage(
      "Relação atualizada",
    ),
    "actionTypeRelationDeleted": MessageLookupByLibrary.simpleMessage(
      "Relação excluída",
    ),
    "actionTypeRelationsDeleted": MessageLookupByLibrary.simpleMessage(
      "Todas as relações excluídas",
    ),
    "actionTypeRemovedFromEntityGroup": MessageLookupByLibrary.simpleMessage(
      "Removido do Grupo de Entidades",
    ),
    "actionTypeRestApiRuleEngineCall": MessageLookupByLibrary.simpleMessage(
      "Chamada de Engine de Regra de API REST",
    ),
    "actionTypeRpcCall": MessageLookupByLibrary.simpleMessage("Chamada RPC"),
    "actionTypeSmsSent": MessageLookupByLibrary.simpleMessage("SMS Enviado"),
    "actionTypeSuspended": MessageLookupByLibrary.simpleMessage("Suspenso"),
    "actionTypeTimeseriesDeleted": MessageLookupByLibrary.simpleMessage(
      "Telemetria excluída",
    ),
    "actionTypeTimeseriesUpdated": MessageLookupByLibrary.simpleMessage(
      "Telemetria atualizada",
    ),
    "actionTypeUnassignedFromCustomer": MessageLookupByLibrary.simpleMessage(
      "Desatribuído do Cliente",
    ),
    "actionTypeUnassignedFromEdge": MessageLookupByLibrary.simpleMessage(
      "Desatribuído do Edge",
    ),
    "actionTypeUpdated": MessageLookupByLibrary.simpleMessage("Atualizado"),
    "actionTypeUpdatedComment": MessageLookupByLibrary.simpleMessage(
      "Comentário Atualizado",
    ),
    "activatingAccount": MessageLookupByLibrary.simpleMessage(
      "Ativando conta...",
    ),
    "activatingAccountText": MessageLookupByLibrary.simpleMessage(
      "Sua conta está sendo ativada.\nPor favor, aguarde...",
    ),
    "active": MessageLookupByLibrary.simpleMessage("Ativo"),
    "activity": MessageLookupByLibrary.simpleMessage("Atividade"),
    "addCommentMessage": MessageLookupByLibrary.simpleMessage(
      "Adicionar um comentário...",
    ),
    "addVerificationMethod": MessageLookupByLibrary.simpleMessage(
      "Adicionar método de verificação",
    ),
    "address": MessageLookupByLibrary.simpleMessage("Endereço"),
    "address2": MessageLookupByLibrary.simpleMessage("Complemento"),
    "adminSettings": MessageLookupByLibrary.simpleMessage(
      "Configurações de admin",
    ),
    "aiModel": MessageLookupByLibrary.simpleMessage("Modelo de IA"),
    "alarmAcknowledgeText": MessageLookupByLibrary.simpleMessage(
      "Tem certeza de que deseja reconhecer o Alarme?",
    ),
    "alarmAcknowledgeTitle": MessageLookupByLibrary.simpleMessage(
      "Reconhecer Alarme",
    ),
    "alarmClearText": MessageLookupByLibrary.simpleMessage(
      "Tem certeza de que deseja limpar o Alarme?",
    ),
    "alarmClearTitle": MessageLookupByLibrary.simpleMessage("Limpar Alarme"),
    "alarmSeverityList": MessageLookupByLibrary.simpleMessage(
      "Lista de gravidade de alarme",
    ),
    "alarmStatusList": MessageLookupByLibrary.simpleMessage(
      "Lista de status de alarme",
    ),
    "alarmTypeList": MessageLookupByLibrary.simpleMessage(
      "Lista de tipos de alarme",
    ),
    "alarmTypes": MessageLookupByLibrary.simpleMessage("Tipos de alarme"),
    "alarms": m2,
    "all": MessageLookupByLibrary.simpleMessage("Tudo"),
    "allDevices": MessageLookupByLibrary.simpleMessage("Todos os dispositivos"),
    "allowAccess": MessageLookupByLibrary.simpleMessage("Permitir acesso"),
    "alreadyHaveAnAccount": MessageLookupByLibrary.simpleMessage(
      "Já tem uma conta?",
    ),
    "anEmptyRequestDataReceived": MessageLookupByLibrary.simpleMessage(
      "Dados de solicitação vazios recebidos.",
    ),
    "anyType": MessageLookupByLibrary.simpleMessage("Qualquer tipo"),
    "apiKey": MessageLookupByLibrary.simpleMessage("Chave de API"),
    "apiUsageState": MessageLookupByLibrary.simpleMessage(
      "Estado de Uso da API",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Connect IO"),
    "applyChanges": MessageLookupByLibrary.simpleMessage("Aplicar alterações"),
    "areYouSure": MessageLookupByLibrary.simpleMessage("Tem certeza?"),
    "areYouSureYouWantToDeactivate": m3,
    "areYouSureYouWantToExit": MessageLookupByLibrary.simpleMessage(
      "Tem certeza de que deseja sair?",
    ),
    "asset": MessageLookupByLibrary.simpleMessage("Ativo"),
    "assetName": MessageLookupByLibrary.simpleMessage("Nome do ativo"),
    "assetProfile": MessageLookupByLibrary.simpleMessage("Perfil do ativo"),
    "assets": MessageLookupByLibrary.simpleMessage("Ativos"),
    "assignedToCustomer": MessageLookupByLibrary.simpleMessage(
      "Atribuído ao cliente",
    ),
    "assignedToMe": MessageLookupByLibrary.simpleMessage("Atribuído a mim"),
    "assignee": MessageLookupByLibrary.simpleMessage("Responsável"),
    "auditLogDetails": MessageLookupByLibrary.simpleMessage(
      "Detalhes do log de auditoria",
    ),
    "auditLogs": MessageLookupByLibrary.simpleMessage("Logs de Auditoria"),
    "autoUnitSystem": MessageLookupByLibrary.simpleMessage("Automático"),
    "backupCodeAuthDescription": MessageLookupByLibrary.simpleMessage(
      "Por favor, insira um dos seus códigos de reserva.",
    ),
    "backupCodeAuthPlaceholder": MessageLookupByLibrary.simpleMessage(
      "Código de reserva",
    ),
    "backupCodeSetupSuccessDescription": MessageLookupByLibrary.simpleMessage(
      "Na próxima vez que você entrar, poderá usar códigos de reserva para passar pela autenticação de dois fatores",
    ),
    "bleHelpMessage": MessageLookupByLibrary.simpleMessage(
      "Para configurar seu novo dispositivo, certifique-se de que o Bluetooth do seu telefone esteja ligado e dentro do alcance do seu novo dispositivo",
    ),
    "blobEntity": MessageLookupByLibrary.simpleMessage("Entidade Blob"),
    "calculatedField": MessageLookupByLibrary.simpleMessage("Campo calculado"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
    "cannotEstablishSession": m4,
    "cantDeleteUserAccount": MessageLookupByLibrary.simpleMessage(
      "Não é possível excluir a conta de usuário",
    ),
    "cantLaunchUrlLink": m5,
    "changePassword": MessageLookupByLibrary.simpleMessage("Alterar Senha"),
    "chooseRegion": MessageLookupByLibrary.simpleMessage("Escolher região"),
    "city": MessageLookupByLibrary.simpleMessage("Cidade"),
    "claimingDevice": MessageLookupByLibrary.simpleMessage(
      "Reivindicando dispositivo",
    ),
    "claimingDeviceDone": MessageLookupByLibrary.simpleMessage(
      "Reivindicação de dispositivo concluída",
    ),
    "claimingMessageSuccess": MessageLookupByLibrary.simpleMessage(
      "Dispositivo reivindicado\ncom sucesso",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Limpar"),
    "cleared": MessageLookupByLibrary.simpleMessage("Limpo"),
    "close": MessageLookupByLibrary.simpleMessage("Fechar"),
    "codeVerificationFailed": MessageLookupByLibrary.simpleMessage(
      "Falha na verificação do código!",
    ),
    "confirmNotRobotMessage": MessageLookupByLibrary.simpleMessage(
      "Você deve confirmar que não é um robô",
    ),
    "confirmToCloseTheApp": MessageLookupByLibrary.simpleMessage(
      "Confirme para fechar o app",
    ),
    "confirmation": MessageLookupByLibrary.simpleMessage("Confirmação"),
    "confirmingWifiConnection": MessageLookupByLibrary.simpleMessage(
      "Confirmando conexão Wi-Fi",
    ),
    "connectToDevice": MessageLookupByLibrary.simpleMessage(
      "Conectar ao dispositivo",
    ),
    "connectToTheWifiYouUsuallyUse": MessageLookupByLibrary.simpleMessage(
      "Conecte-se ao Wi-Fi que você usa normalmente",
    ),
    "connectToWifiSimilarToWifiname": m6,
    "connectingToDevice": MessageLookupByLibrary.simpleMessage(
      "Conectando ao dispositivo",
    ),
    "connectionError": MessageLookupByLibrary.simpleMessage("Erro de conexão"),
    "connectionToTheWifiNetworkFailednpleaseEnsureThatYour": m7,
    "continueText": MessageLookupByLibrary.simpleMessage("Continuar"),
    "converter": MessageLookupByLibrary.simpleMessage("Conversor"),
    "copiedToClipboard": MessageLookupByLibrary.simpleMessage(
      "Copiado para a área de transferência",
    ),
    "copy": MessageLookupByLibrary.simpleMessage("Copiar"),
    "copy32digitsKeyToYourAuthenticationAppOrScanQrcode":
        MessageLookupByLibrary.simpleMessage(
          "Copie a chave de 32 dígitos para o seu app de autenticação ou escaneie o código QR abaixo",
        ),
    "country": MessageLookupByLibrary.simpleMessage("País"),
    "createAccount": MessageLookupByLibrary.simpleMessage("Criar Conta"),
    "createPassword": MessageLookupByLibrary.simpleMessage("Criar uma senha"),
    "critical": MessageLookupByLibrary.simpleMessage("Crítico"),
    "currentPassword": MessageLookupByLibrary.simpleMessage("Senha atual"),
    "currentPasswordRequireText": MessageLookupByLibrary.simpleMessage(
      "A senha atual é obrigatória.",
    ),
    "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
    "customers": MessageLookupByLibrary.simpleMessage("Clientes"),
    "dashboards": m8,
    "days": MessageLookupByLibrary.simpleMessage("dias"),
    "delete": MessageLookupByLibrary.simpleMessage("Excluir"),
    "deleteAccount": MessageLookupByLibrary.simpleMessage("Excluir conta"),
    "deleteComment": MessageLookupByLibrary.simpleMessage("Excluir comentário"),
    "details": MessageLookupByLibrary.simpleMessage("Detalhes"),
    "deviceList": MessageLookupByLibrary.simpleMessage("Lista de dispositivos"),
    "deviceNotAbleToFindWifiNearby": MessageLookupByLibrary.simpleMessage(
      "O dispositivo não consegue encontrar redes Wi-Fi próximas",
    ),
    "deviceNotFoundMessage": MessageLookupByLibrary.simpleMessage(
      "Dispositivos não encontrados.\nCertifique-se de que o Bluetooth do seu telefone esteja ligado e dentro do alcance do seu novo dispositivo.",
    ),
    "deviceProfile": MessageLookupByLibrary.simpleMessage(
      "Perfil do dispositivo",
    ),
    "deviceProvisioning": MessageLookupByLibrary.simpleMessage(
      "Provisionamento de dispositivo",
    ),
    "devices": m9,
    "digitsCode": m10,
    "discardChanges": MessageLookupByLibrary.simpleMessage(
      "Descartar alterações",
    ),
    "domain": MessageLookupByLibrary.simpleMessage("Domínio"),
    "done": MessageLookupByLibrary.simpleMessage("Concluído"),
    "duration": MessageLookupByLibrary.simpleMessage("Duração"),
    "edge": MessageLookupByLibrary.simpleMessage("Edge"),
    "edit": MessageLookupByLibrary.simpleMessage("Editar"),
    "edited": MessageLookupByLibrary.simpleMessage("Editado"),
    "email": MessageLookupByLibrary.simpleMessage("E-mail"),
    "emailAuthDescription": m11,
    "emailAuthPlaceholder": MessageLookupByLibrary.simpleMessage(
      "Código de e-mail",
    ),
    "emailInvalidText": MessageLookupByLibrary.simpleMessage(
      "Formato de e-mail inválido.",
    ),
    "emailRequireText": MessageLookupByLibrary.simpleMessage(
      "O e-mail é obrigatório.",
    ),
    "emailSetupSuccessDescription": MessageLookupByLibrary.simpleMessage(
      "Na próxima vez que você entrar, será solicitado que insira o código de segurança que será enviado para o seu endereço de e-mail",
    ),
    "emailVerification": MessageLookupByLibrary.simpleMessage(
      "Verificação de e-mail",
    ),
    "emailVerificationInstructionsText": MessageLookupByLibrary.simpleMessage(
      "Siga as instruções fornecidas no e-mail para concluir o procedimento de inscrição.\nNota: se você não vir o e-mail, verifique sua pasta de \'spam\' ou tente reenviar o e-mail clicando no botão \'Reenviar\'.",
    ),
    "emailVerificationSentText": MessageLookupByLibrary.simpleMessage(
      "Um e-mail com os detalhes de verificação foi enviado para o endereço de e-mail especificado",
    ),
    "emailVerified": MessageLookupByLibrary.simpleMessage("E-mail verificado"),
    "emailVersificationSuccessfullySentNotification":
        MessageLookupByLibrary.simpleMessage(
          "O link de verificação de e-mail foi enviado com sucesso!",
        ),
    "enter6digitsKeyFromYourAppHere": MessageLookupByLibrary.simpleMessage(
      "Insira o código de 6 dígitos do seu app aqui:",
    ),
    "enterAPhoneNumberToUseAsYourAuthenticator":
        MessageLookupByLibrary.simpleMessage(
          "Insira um número de telefone para usar como seu autenticador",
        ),
    "enterAnEmailToUseAsYourAuthenticator":
        MessageLookupByLibrary.simpleMessage(
          "Insira um e-mail para usar como seu autenticador.",
        ),
    "entityGroup": MessageLookupByLibrary.simpleMessage("Grupo de Entidades"),
    "entityType": MessageLookupByLibrary.simpleMessage("Tipo de Entidade"),
    "entityView": MessageLookupByLibrary.simpleMessage(
      "Visualização de entidade",
    ),
    "errorOccured": m12,
    "errorSendingCode": m13,
    "europe": MessageLookupByLibrary.simpleMessage("Europa"),
    "europeRegionShort": MessageLookupByLibrary.simpleMessage("Frankfurt"),
    "exitDeviceProvisioning": MessageLookupByLibrary.simpleMessage(
      "Sair do provisionamento de dispositivo",
    ),
    "failedToConnectToServer": MessageLookupByLibrary.simpleMessage(
      "Falha ao conectar ao servidor",
    ),
    "failedToLoadAlarmDetails": MessageLookupByLibrary.simpleMessage(
      "Falha ao carregar detalhes do alarme",
    ),
    "failedToLoadTheList": MessageLookupByLibrary.simpleMessage(
      "Falha ao carregar a lista",
    ),
    "failureDetails": MessageLookupByLibrary.simpleMessage("Detalhes da falha"),
    "fatalApplicationErrorOccurred": MessageLookupByLibrary.simpleMessage(
      "Ocorreu um erro fatal no aplicativo:",
    ),
    "fatalError": MessageLookupByLibrary.simpleMessage("Erro fatal"),
    "filters": MessageLookupByLibrary.simpleMessage("Filtros"),
    "firebaseIsNotConfiguredPleaseReferToTheOfficialFirebase":
        MessageLookupByLibrary.simpleMessage(
          "O Firebase não está configurado.\nConsulte a documentação oficial do Firebase para\norientações sobre como fazer isso.",
        ),
    "firstName": MessageLookupByLibrary.simpleMessage("Nome"),
    "firstNameRequireText": MessageLookupByLibrary.simpleMessage(
      "O nome é obrigatório.",
    ),
    "firstNameUpper": MessageLookupByLibrary.simpleMessage("Nome"),
    "goBack": MessageLookupByLibrary.simpleMessage("Voltar"),
    "groupPermission": MessageLookupByLibrary.simpleMessage(
      "Permissão de Grupo",
    ),
    "hideHomeDashboardToolbar": MessageLookupByLibrary.simpleMessage(
      "Ocultar barra de ferramentas do painel inicial",
    ),
    "home": MessageLookupByLibrary.simpleMessage("Início"),
    "homeDashboard": MessageLookupByLibrary.simpleMessage("Painel inicial"),
    "hours": MessageLookupByLibrary.simpleMessage("horas"),
    "hybridUnitSystem": MessageLookupByLibrary.simpleMessage("Híbrido"),
    "imNotARobot": MessageLookupByLibrary.simpleMessage("Não sou um robô"),
    "imperialUnitSystem": MessageLookupByLibrary.simpleMessage("Imperial"),
    "inactive": MessageLookupByLibrary.simpleMessage("Inativo"),
    "inactiveUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Usuário inativo já existe",
    ),
    "inactiveUserAlreadyExistsMessage": MessageLookupByLibrary.simpleMessage(
      "Já existe um usuário cadastrado com um endereço de e-mail não verificado.\nClique no botão \'Reenviar\' se desejar reenviar o e-mail de verificação.",
    ),
    "indeterminate": MessageLookupByLibrary.simpleMessage("Indeterminado"),
    "integration": MessageLookupByLibrary.simpleMessage("Integração"),
    "invalidPasswordLengthMessage": MessageLookupByLibrary.simpleMessage(
      "Sua senha deve ter pelo menos 6 caracteres",
    ),
    "isRequiredText": MessageLookupByLibrary.simpleMessage("é obrigatório."),
    "itLooksLikeYourPermissionsArentSufficientToCompleteThis":
        MessageLookupByLibrary.simpleMessage(
          "Parece que suas permissões não são suficientes para concluir esta operação",
        ),
    "job": MessageLookupByLibrary.simpleMessage("Trabalho"),
    "label": MessageLookupByLibrary.simpleMessage("Rótulo"),
    "language": MessageLookupByLibrary.simpleMessage("Idioma"),
    "lastName": MessageLookupByLibrary.simpleMessage("Sobrenome"),
    "lastNameRequireText": MessageLookupByLibrary.simpleMessage(
      "O sobrenome é obrigatório.",
    ),
    "lastNameUpper": MessageLookupByLibrary.simpleMessage("Sobrenome"),
    "listIsEmptyText": MessageLookupByLibrary.simpleMessage(
      "A lista está vazia no momento.",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Entrar"),
    "loginToApp": MessageLookupByLibrary.simpleMessage("Entrar no app"),
    "loginToYourAccount": MessageLookupByLibrary.simpleMessage(
      "Entre na sua conta",
    ),
    "loginWith": MessageLookupByLibrary.simpleMessage("Entrar com"),
    "logoDefaultValue": MessageLookupByLibrary.simpleMessage("Logo Connect IO"),
    "logout": MessageLookupByLibrary.simpleMessage("Sair"),
    "major": MessageLookupByLibrary.simpleMessage("Maior"),
    "markAllAsRead": MessageLookupByLibrary.simpleMessage(
      "Marcar todas como lidas",
    ),
    "markAsRead": MessageLookupByLibrary.simpleMessage("Marcar como lida"),
    "metricUnitSystem": MessageLookupByLibrary.simpleMessage("Métrico"),
    "mfaProviderBackupCode": MessageLookupByLibrary.simpleMessage(
      "Código de reserva",
    ),
    "mfaProviderEmail": MessageLookupByLibrary.simpleMessage("E-mail"),
    "mfaProviderSms": MessageLookupByLibrary.simpleMessage("SMS"),
    "mfaProviderTopt": MessageLookupByLibrary.simpleMessage(
      "Aplicativo autenticador",
    ),
    "minor": MessageLookupByLibrary.simpleMessage("Menor"),
    "minutes": MessageLookupByLibrary.simpleMessage("minutos"),
    "mobileApp": MessageLookupByLibrary.simpleMessage("App móvel"),
    "mobileAppBundle": MessageLookupByLibrary.simpleMessage(
      "Pacote de app móvel",
    ),
    "mobileDashboardShouldBeConfiguredInDeviceProfile":
        MessageLookupByLibrary.simpleMessage(
          "O painel móvel deve ser configurado no perfil do dispositivo!",
        ),
    "more": MessageLookupByLibrary.simpleMessage("Mais"),
    "newPassword": MessageLookupByLibrary.simpleMessage("Nova senha"),
    "newPassword2": MessageLookupByLibrary.simpleMessage(
      "Confirmar nova senha",
    ),
    "newPassword2RequireText": MessageLookupByLibrary.simpleMessage(
      "É necessário digitar a nova senha novamente.",
    ),
    "newPasswordRequireText": MessageLookupByLibrary.simpleMessage(
      "A nova senha é obrigatória.",
    ),
    "newUserText": MessageLookupByLibrary.simpleMessage("Novo Usuário?"),
    "next": MessageLookupByLibrary.simpleMessage("Próximo"),
    "no": MessageLookupByLibrary.simpleMessage("Não"),
    "no2faProvidersFound": MessageLookupByLibrary.simpleMessage(
      "Nenhum provedor de 2FA encontrado",
    ),
    "noAlarmsFound": MessageLookupByLibrary.simpleMessage(
      "Nenhum alarme encontrado",
    ),
    "noDashboardsFound": MessageLookupByLibrary.simpleMessage(
      "Nenhum painel encontrado",
    ),
    "noNotificationsFound": MessageLookupByLibrary.simpleMessage(
      "Nenhuma notificação encontrada",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage(
      "Nenhum resultado encontrado",
    ),
    "northAmerica": MessageLookupByLibrary.simpleMessage("América do Norte"),
    "northAmericaRegionShort": MessageLookupByLibrary.simpleMessage(
      "N. Virgínia",
    ),
    "notFound": MessageLookupByLibrary.simpleMessage("Não Encontrado"),
    "notImplemented": MessageLookupByLibrary.simpleMessage("Não implementado!"),
    "notificationRequest": MessageLookupByLibrary.simpleMessage(
      "Solicitação de notificação",
    ),
    "notificationRule": MessageLookupByLibrary.simpleMessage(
      "Regra de notificação",
    ),
    "notificationTarget": MessageLookupByLibrary.simpleMessage(
      "Alvo da notificação",
    ),
    "notificationTemplate": MessageLookupByLibrary.simpleMessage(
      "Modelo de notificação",
    ),
    "notifications": m14,
    "oauth2Client": MessageLookupByLibrary.simpleMessage("Cliente Oauth2"),
    "openAppSettings": MessageLookupByLibrary.simpleMessage(
      "Abrir configurações do app",
    ),
    "openAppSettingsToGrantPermissionMessage": m15,
    "openSettingsAndGrantAccessToCameraToContinue":
        MessageLookupByLibrary.simpleMessage(
          "Abra as configurações e conceda acesso à câmera para continuar",
        ),
    "openWifiSettings": MessageLookupByLibrary.simpleMessage(
      "Abrir configurações de Wi-Fi",
    ),
    "or": MessageLookupByLibrary.simpleMessage("OU"),
    "originator": MessageLookupByLibrary.simpleMessage("Originador"),
    "otaPackage": MessageLookupByLibrary.simpleMessage("Pacote OTA"),
    "password": MessageLookupByLibrary.simpleMessage("Senha"),
    "passwordErrorNotification": MessageLookupByLibrary.simpleMessage(
      "As senhas digitadas devem ser iguais!",
    ),
    "passwordForgotText": MessageLookupByLibrary.simpleMessage(
      "Esqueceu a senha?",
    ),
    "passwordRequireText": MessageLookupByLibrary.simpleMessage(
      "A senha é obrigatória.",
    ),
    "passwordReset": MessageLookupByLibrary.simpleMessage("Redefinir senha"),
    "passwordResetLinkSuccessfullySentNotification":
        MessageLookupByLibrary.simpleMessage(
          "O link para redefinição de senha foi enviado com sucesso!",
        ),
    "passwordResetText": MessageLookupByLibrary.simpleMessage(
      "Insira o e-mail associado à sua conta e enviaremos um e-mail com o link para redefinição de senha",
    ),
    "passwordSuccessNotification": MessageLookupByLibrary.simpleMessage(
      "Senha alterada com sucesso",
    ),
    "permissions": MessageLookupByLibrary.simpleMessage("Permissões"),
    "permissionsNotEnoughMessage": m16,
    "phone": MessageLookupByLibrary.simpleMessage("Telefone"),
    "phoneIsInvalid": MessageLookupByLibrary.simpleMessage(
      "O telefone é inválido",
    ),
    "phoneIsRequired": MessageLookupByLibrary.simpleMessage(
      "O telefone é obrigatório",
    ),
    "phoneNumberHelperText": MessageLookupByLibrary.simpleMessage(
      "Número de telefone no formato E.164, ex. +1201550123",
    ),
    "pleaseContactYourSystemAdministrator":
        MessageLookupByLibrary.simpleMessage(
          "Entre em contato com o administrador do sistema",
        ),
    "pleaseFollowTheNextStepsToConnectYourPhoneTo":
        MessageLookupByLibrary.simpleMessage(
          "Siga os próximos passos para conectar seu telefone ao dispositivo",
        ),
    "pleaseFollowTheNextStepsToReconnectnyourPhoneToYour":
        MessageLookupByLibrary.simpleMessage(
          "Siga os próximos passos para reconectar\nseu telefone ao seu Wi-Fi normal",
        ),
    "pleaseScanQrCodeOnYourDevice": MessageLookupByLibrary.simpleMessage(
      "Por favor, escaneie o código QR no seu dispositivo",
    ),
    "plusAlarmType": MessageLookupByLibrary.simpleMessage("+ Tipo de alarme"),
    "popTitle": m17,
    "postalCode": MessageLookupByLibrary.simpleMessage("CEP / Código Postal"),
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Política de Privacidade",
    ),
    "profile": MessageLookupByLibrary.simpleMessage("Perfil"),
    "profileSuccessNotification": MessageLookupByLibrary.simpleMessage(
      "Perfil atualizado com sucesso",
    ),
    "provisionedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Dispositivo configurado com sucesso",
    ),
    "pushNotificationsAreNotConfiguredpleaseContactYourSystemAdministrator":
        MessageLookupByLibrary.simpleMessage(
          "As notificações push não estão configuradas.\nEntre em contato com o administrador do sistema.",
        ),
    "queue": MessageLookupByLibrary.simpleMessage("Fila"),
    "queueStats": MessageLookupByLibrary.simpleMessage("Estatísticas da fila"),
    "ready": MessageLookupByLibrary.simpleMessage("Pronto"),
    "refresh": MessageLookupByLibrary.simpleMessage("Atualizar"),
    "repeatPassword": MessageLookupByLibrary.simpleMessage("Repita sua senha"),
    "requestPasswordReset": MessageLookupByLibrary.simpleMessage(
      "Solicitar redefinição de senha",
    ),
    "requestedEntityDoesNotExists": MessageLookupByLibrary.simpleMessage(
      "A entidade solicitada não existe.",
    ),
    "resend": MessageLookupByLibrary.simpleMessage("Reenviar"),
    "resendCode": MessageLookupByLibrary.simpleMessage("Reenviar código"),
    "resendCodeWait": m18,
    "reset": MessageLookupByLibrary.simpleMessage("Redefinir"),
    "retry": MessageLookupByLibrary.simpleMessage("Repetir"),
    "returnToDashboard": MessageLookupByLibrary.simpleMessage(
      "Voltar ao painel",
    ),
    "returnToTheAppAndTapReadyButton": MessageLookupByLibrary.simpleMessage(
      "Volte ao aplicativo e toque no botão Pronto",
    ),
    "role": MessageLookupByLibrary.simpleMessage("Função"),
    "routeNotDefined": m19,
    "rpc": MessageLookupByLibrary.simpleMessage("RPC"),
    "ruleChain": MessageLookupByLibrary.simpleMessage("Cadeia de regras"),
    "ruleNode": MessageLookupByLibrary.simpleMessage("Nó de regra"),
    "scanACode": MessageLookupByLibrary.simpleMessage("Escanear um código"),
    "scanQrCode": MessageLookupByLibrary.simpleMessage("Escanear código QR"),
    "schedulerEvent": MessageLookupByLibrary.simpleMessage(
      "Evento do Agendador",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Buscar"),
    "searchResults": MessageLookupByLibrary.simpleMessage(
      "Resultados da busca",
    ),
    "searchUsers": m20,
    "seconds": MessageLookupByLibrary.simpleMessage("segundos"),
    "security": MessageLookupByLibrary.simpleMessage("Segurança"),
    "selectCountry": MessageLookupByLibrary.simpleMessage("Selecionar país"),
    "selectRegion": MessageLookupByLibrary.simpleMessage("Selecionar região"),
    "selectUser": MessageLookupByLibrary.simpleMessage("Selecionar usuários"),
    "selectWayToVerify": MessageLookupByLibrary.simpleMessage(
      "Selecione uma forma de verificação",
    ),
    "selectWifiNetwork": MessageLookupByLibrary.simpleMessage(
      "Selecionar rede Wi-Fi",
    ),
    "sendCode": MessageLookupByLibrary.simpleMessage("Enviar código"),
    "sendingWifiCredentials": MessageLookupByLibrary.simpleMessage(
      "Enviando credenciais do Wi-Fi",
    ),
    "setUpAVerificationMethod": MessageLookupByLibrary.simpleMessage(
      "Configurar um método de verificação",
    ),
    "setUpAVerificationMethodToContinueWithYourLogin":
        MessageLookupByLibrary.simpleMessage(
          "Configure um método de verificação para continuar com seu login",
        ),
    "severity": MessageLookupByLibrary.simpleMessage("Gravidade"),
    "signIn": MessageLookupByLibrary.simpleMessage("Entrar"),
    "signUp": MessageLookupByLibrary.simpleMessage("Cadastrar-se"),
    "smsAuthDescription": m21,
    "smsAuthPlaceholder": MessageLookupByLibrary.simpleMessage("Código SMS"),
    "smsSetupSuccessDescription": MessageLookupByLibrary.simpleMessage(
      "Na próxima vez que você entrar, será solicitado que insira o código de segurança que será enviado para o número de telefone",
    ),
    "somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Algo Deu Errado",
    ),
    "somethingWentWrongRollback": MessageLookupByLibrary.simpleMessage(
      "Algo deu errado ... Revertendo",
    ),
    "startTime": MessageLookupByLibrary.simpleMessage("Hora de início"),
    "stateOrProvince": MessageLookupByLibrary.simpleMessage(
      "Estado / Província",
    ),
    "status": MessageLookupByLibrary.simpleMessage("Status"),
    "systemAdministrator": MessageLookupByLibrary.simpleMessage(
      "Administrador do Sistema",
    ),
    "tbResource": MessageLookupByLibrary.simpleMessage("Recurso"),
    "tenant": MessageLookupByLibrary.simpleMessage("Tenant"),
    "tenantAdministrator": MessageLookupByLibrary.simpleMessage(
      "Administrador do Tenant",
    ),
    "tenantProfile": MessageLookupByLibrary.simpleMessage("Perfil do tenant"),
    "termsOfUse": MessageLookupByLibrary.simpleMessage("Termos de Uso"),
    "thisActionCannotBeUndone": MessageLookupByLibrary.simpleMessage(
      "Esta ação não pode ser desfeita",
    ),
    "thisWillMakeYourAccountLessSecure": MessageLookupByLibrary.simpleMessage(
      "Isso tornará sua conta menos segura",
    ),
    "title": MessageLookupByLibrary.simpleMessage("Título"),
    "toggleCamera": MessageLookupByLibrary.simpleMessage("Alternar câmera"),
    "toggleFlash": MessageLookupByLibrary.simpleMessage("Alternar flash"),
    "toptAuthPlaceholder": MessageLookupByLibrary.simpleMessage("Código"),
    "totpAuthDescription": MessageLookupByLibrary.simpleMessage(
      "Por favor, insira o código de segurança do seu aplicativo autenticador.",
    ),
    "totpSetupSuccessDescription": MessageLookupByLibrary.simpleMessage(
      "Na próxima vez que você entrar, precisará fornecer um código de autenticação de dois fatores",
    ),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Tentar novamente"),
    "tryAnotherWay": MessageLookupByLibrary.simpleMessage(
      "Tentar de outra forma",
    ),
    "tryRefiningYourQuery": MessageLookupByLibrary.simpleMessage(
      "Por favor, tente refinar sua busca",
    ),
    "tryRefreshing": MessageLookupByLibrary.simpleMessage(
      "Por favor, tente atualizar",
    ),
    "twofactorAuthentication": MessageLookupByLibrary.simpleMessage(
      "Autenticação de dois fatores",
    ),
    "twofactorAuthenticationIsRequired": MessageLookupByLibrary.simpleMessage(
      "A autenticação de dois fatores é obrigatória",
    ),
    "twofactorAuthenticationProtectsYourAccountFromUnauthorizedAccessAllYou":
        MessageLookupByLibrary.simpleMessage(
          "A autenticação de dois fatores protege sua conta contra acessos não autorizados. Tudo o que você precisa fazer é inserir um código de segurança ao fazer login.",
        ),
    "type": MessageLookupByLibrary.simpleMessage("Tipo"),
    "unableConnectToDevice": MessageLookupByLibrary.simpleMessage(
      "Não foi possível conectar ao dispositivo",
    ),
    "unableConnectToWifiBecauseNetworksWasntFoundByDevice": m22,
    "unableToUseCamera": MessageLookupByLibrary.simpleMessage(
      "Não foi possível usar a câmera",
    ),
    "unacknowledged": MessageLookupByLibrary.simpleMessage("Não reconhecido"),
    "unassigned": MessageLookupByLibrary.simpleMessage("Não atribuído"),
    "unitSystem": MessageLookupByLibrary.simpleMessage("Sistema de unidades"),
    "unknownError": MessageLookupByLibrary.simpleMessage("Erro desconhecido."),
    "unread": MessageLookupByLibrary.simpleMessage("Não lido"),
    "unsavedChanges": MessageLookupByLibrary.simpleMessage(
      "Alterações não salvas",
    ),
    "update": MessageLookupByLibrary.simpleMessage("Atualizar"),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Atualização obrigatória",
    ),
    "updateTo": m23,
    "url": MessageLookupByLibrary.simpleMessage("URL"),
    "user": MessageLookupByLibrary.simpleMessage("Usuário"),
    "username": MessageLookupByLibrary.simpleMessage("nome de usuário"),
    "users": MessageLookupByLibrary.simpleMessage("Usuários"),
    "verificationCodeIncorrect": MessageLookupByLibrary.simpleMessage(
      "O código de verificação está incorreto",
    ),
    "verificationCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Formato de código de verificação inválido",
    ),
    "verificationCodeManyRequest": MessageLookupByLibrary.simpleMessage(
      "Muitas tentativas de verificar o código",
    ),
    "verificationRequired": MessageLookupByLibrary.simpleMessage(
      "Verificação necessária",
    ),
    "verifyYourIdentity": MessageLookupByLibrary.simpleMessage(
      "Verifique sua identidade",
    ),
    "viewAll": MessageLookupByLibrary.simpleMessage("Ver tudo"),
    "viewDashboard": MessageLookupByLibrary.simpleMessage("Visualizar Painel"),
    "warning": MessageLookupByLibrary.simpleMessage("Aviso"),
    "widgetType": MessageLookupByLibrary.simpleMessage("Tipo de widget"),
    "widgetsBundle": MessageLookupByLibrary.simpleMessage("Pacote de widgets"),
    "wifiHelpMessage": m24,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Senha do Wi-Fi"),
    "wifiPasswordMessage": m25,
    "yes": MessageLookupByLibrary.simpleMessage("Sim"),
    "yesDeactivate": MessageLookupByLibrary.simpleMessage("Sim, desativar"),
    "yesDiscard": MessageLookupByLibrary.simpleMessage("Sim, descartar"),
    "youDontHavePermissionsToPerformThisOperation":
        MessageLookupByLibrary.simpleMessage(
          "Você não tem permissões para realizar esta operação!",
        ),
    "youHaveUnsavedChangesAreYouSureYouWantTo":
        MessageLookupByLibrary.simpleMessage(
          "Você tem alterações não salvas. Tem certeza de que deseja sair desta página?",
        ),
  };
}
