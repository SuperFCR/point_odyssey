import bpy
import os

addon_paths = [
    "/tmp/addons/rokoko-studio-live-blender.zip",
    "/tmp/addons/smplx_blender_addon.zip",
    "/tmp/addons/Stop-motion-OBJ.zip"
]

for addon_path in addon_paths:
    print(f"Installing addon from {addon_path}")
    bpy.ops.preferences.addon_install(filepath=addon_path)
    addon_name = os.path.splitext(os.path.basename(addon_path))[0]
    bpy.ops.preferences.addon_enable(module=addon_name)

bpy.ops.wm.save_userpref()
print(bpy.context.preferences.addons.keys())