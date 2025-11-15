import os
import shutil
import json

def main():
    current_dir = os.getcwd()
    current_folder = os.path.basename(current_dir)

    # 1. Verificar que estemos en "items"
    if current_folder != "items":
        print("Este script debe ejecutarse dentro de la carpeta 'items'.")
        return

    parent_dir = os.path.dirname(current_dir)
    parent_folder = os.path.basename(parent_dir)  # Ahora se toma correctamente

    models_dir = os.path.join(parent_dir, "models")

    if not os.path.exists(models_dir):
        print("No se encontró la carpeta 'models' en el directorio padre.")
        return

    # 2. Copiar todos los archivos y carpetas de models a items
    for item in os.listdir(models_dir):
        src = os.path.join(models_dir, item)
        dst = os.path.join(current_dir, item)

        if os.path.isdir(src):
            shutil.copytree(src, dst, dirs_exist_ok=True)
        else:
            shutil.copy2(src, dst)

    # 3. Buscar todos los archivos .json en los nuevos archivos copiados
    rutas = {}

    for root, dirs, files in os.walk(current_dir):
        for file in files:
            if file.endswith(".json"):
                full_path = os.path.join(root, file)
                relative_path = os.path.relpath(full_path, current_dir)
                parts = relative_path.replace("\\", "/").split("/")

                if len(parts) == 1:
                    # Está directamente en items
                    ruta = f"{parent_folder}:{parts[0][:-5]}"  # quitar .json
                else:
                    folder_path = "/".join(parts[:-1]) + "/"
                    file_name = parts[-1][:-5]  # quitar .json
                    ruta = f"{parent_folder}:{folder_path}{file_name}"

                rutas[full_path] = ruta

    # 4. Reemplazar el contenido de cada .json
    for path, ruta in rutas.items():
        new_data = {
            "model": {
                "type": "minecraft:model",
                "model": ruta,
                "tints":
                    [
                        {
                        "type": "minecraft:dye",
                        "default": 16777215
                        }
                    ]
            }
        }
        with open(path, "w") as f:
            json.dump(new_data, f, indent=2)

    print("Proceso completado exitosamente.")

if __name__ == "__main__":
    main()
