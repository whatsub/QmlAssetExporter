{{newFile|name>{{document.name|trim|pack|capcase|call>slice>0>-4}}_Style.qml}}
pragma Singleton
import QtQuick 2.4

QtObject {
{{assets}}
    readonly property rect rect{{assetName|cleanAssetName|capcase|split>-|join>_|}} : Qt.rect({{x}}, {{y}}, {{width}}, {{height}}){{/assets}}
{{assets}}{{versions}}
    readonly property string image{{assetName|cleanAssetName|capcase|split>-|join>_|}}{{varName}}{{stateName}} : "{{file}}"{{/versions}}{{/assets}}
{{texts}}
    readonly property rect rect{{name|capcase}} : Qt.rect({{x}}, {{y}}, {{width}}, {{height}}){{/texts}}
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