# Informe final

## Compilar

Para `VSCode` se puede utilizar la extensión [latex-workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) e instalar las dependencias indicadas en la misma.

Para compilar local se puede utilizar instalar [MiKTeX](https://miktex.org/download) y correr el script `compile.sh`

## Actualizar desde Overleaf

Descargar el `.zip` en la carpeta raíz de este repositorio sin modificar el nombre del archivo. Ejecutar `./update.sh` para que descomprima, commitee y pushee los cambios.

## Release

Verificar que no se tienen commits ni push pendientes.

Ejecutar `./release.sh <version>` con la versión que se quiere releaser. El formato utilizado es `x.x.x`.
