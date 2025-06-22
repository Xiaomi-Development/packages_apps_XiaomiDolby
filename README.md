# Xiaomi Dolby
Tested on the following devices:
- Xiaomi mi 10 (UMI)
- Xiaomi mi 10 Pro (CMI)

Add this in **device.mk**: $(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)
   ```bash
   $(call inherit-product, packages/apps/XiaomiDolby/device.mk) 
   ```

Add this to your audio_effects.xml:
   ```bash
    <library name="v4a_re" path="libv4a_re.so"/>
    <!--DOLBY DAP-->
    <library name="dap" path="libswdap.so"/>
    <!--DOLBY END-->
    <!--DOLBY GAME-->
    <library name="gamedap" path="libswgamedap.so"/>
    <!--DOLBY END-->
    <!--DOLBY VQE-->
    <library name="vqe" path="libswvqe.so"/>
    <!--DOLBY END-->

    <effect name="v4a_standard_re" library="v4a_re" uuid="90380da3-8536-4744-a6a3-5731970e640f"/>Add commentMore actions
    <!--DOLBY DAP-->
    <effect name="dap" library="dap" uuid="9d4921da-8225-4f29-aefa-39537a04bcaa"/>
    <!--DOLBY END-->
    <!--DOLBY GAME-->
    <effect name="gamedap" library="gamedap" uuid="3783c334-d3a0-4d13-874f-0032e5fb80e2"/>
    <!--DOLBY END-->
    <!--DOLBY VQE-->
    <effect name="vqe" library="vqe" uuid="64a0f614-7fa4-48b8-b081-d59dc954616f"/>
    <!--DOLBY END-->
   ```

