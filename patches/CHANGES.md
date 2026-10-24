# Alterações de compatibilidade

## AndroidManifest.xml
Adicionar dentro de `com.estrongs.android.pop.app.AudioPlayerProxyActivity` um filtro:

```xml
<intent-filter android:label="@string/app_media_player">
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <data android:scheme="content" />
    <data android:mimeType="audio/*" />
    <data android:mimeType="application/ogg" />
</intent-filter>
```

## PopAudioPlayer.smali
Adicionar à classe `Lcom/estrongs/android/pop/app/PopAudioPlayer;`:

```smali
.method public onBackPressed()V
    .locals 1
    const/4 v0, 0x1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    move-result v0
    return-void
.end method
```

## Bibliotecas nativas
A pasta `lib/` foi removida do projeto decompilado. O inicializador de `NativeAuth` foi ajustado para não executar `System.loadLibrary("myaes")`, e `putAuth(I)V` virou método vazio. Isso não significa que todos os métodos nativos de outras classes foram alterados.