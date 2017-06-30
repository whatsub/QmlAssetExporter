{{newFile|name>{{document.name|trim|pack|capcase|call>slice>0>-4}}_Style.qml}}
import QtQuick 2.4

QtObject {
{{assets}}
    readonly property var rect{{assetName|cleanAssetName|capcase|split>-|join>_|}} : { "x" : {{x}}, "y" : {{y}}, "width" : {{width}}, "height" : {{height}} }{{/assets}}
{{assets}}{{versions}}
    readonly property string image{{assetName|cleanAssetName|capcase|split>-|join>_|}}{{varName}}{{stateName}} : "{{file}}"{{/versions}}{{/assets}}
{{texts}}
    readonly property var rect{{name|capcase}} : { "x" : {{x}}, "y" : {{y}}, "width" : {{width}}, "height" : {{height}} }{{/texts}}
{{texts}}
    readonly property var text{{name|capcase}}: {
        "text" : "{{content}}",
        "fontFamily" : "{{font}}",
        "fontSize" : {{fontSize|round}},
        "letterSpacing" : {{letterSpacing}},
        "lineHeight" : {{if lineHeight|equals>auto}}{{fontSize}}{{else}}{{lineHeight}}{{/if}},
        "color" : "{{fontColorHex}}",
        "justification": Text.{{if justification|equals>Left align}}AlignLeft{{else}}{{if justification|equals>Right align}}AlignRight{{else}}{{if justification|equals>Center align}}AlignHCenter{{else}}AlignJustify{{/if}}{{/if}}{{/if}},
        "opacity" : {{if opacity|equals>100}}1.0{{else}}{{opacity}}/100{{/if}}
    }{{/texts}}
}
{{/newFile}}