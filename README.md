# ES File Explorer PRO 1.0.8 — compatibilidade Galaxy A72

Projeto de compatibilidade derivado do APK fornecido pelo usuário, com foco no Samsung Galaxy A72 (SM-A725M / Android 14).

## Estado desta publicação

Esta primeira publicação documenta as alterações aplicadas ao projeto decompilado. O código-fonte completo decompilado e o APK compilado ainda não estão anexados neste repositório.

## Alterações preparadas

- Remoção da pasta `lib/` do projeto decompilado para eliminar bibliotecas nativas empacotadas.
- `NativeAuth.putAuth(I)V` convertido em método vazio e inicializador estático alterado para não carregar `libmyaes.so`.
- Filtro de intenção `ACTION_VIEW` para áudio em URIs `content://`, com MIME `audio/*` e `application/ogg`, na `AudioPlayerProxyActivity`.
- `PopAudioPlayer.onBackPressed()` usa `moveTaskToBack(true)` para minimizar o aplicativo.

## Identificação

- Pacote: `com.estrongs.android.pop.pro`
- Versão: Pro 1.0.8 (versionCode 1009)
- Dispositivo-alvo de teste: Samsung Galaxy A72, Android 14

## Importante

O filtro de intenção apenas permite que o Android encaminhe esses arquivos ao app; ele não garante que todos os codecs, incluindo OPUS, sejam reproduzidos. A reprodução real e estabilidade após instalação precisam ser verificadas no dispositivo. O APK original foi preservado separadamente no PC e não foi substituído por este projeto.

## Arquivos locais usados

- Projeto decompilado: `ES-File-Explorer-PRO-1.0.8-PT-compat`
- APK modificado: `ES-File-Explorer-PRO-1.0.8-A72-ESTAVEL.apk`

## Aviso

Este repositório é para análise e compatibilidade pessoal. O app original e seus recursos pertencem aos respectivos titulares.