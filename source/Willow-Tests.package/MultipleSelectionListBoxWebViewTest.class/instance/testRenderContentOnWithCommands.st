tests-rendering
testRenderContentOnWithCommands

	| listBox html |

	listBox := MultipleSelectionListBoxWebView applying: (ComponentClassificationCommand toStyleWith: 'rounded').
	html := self render: listBox.

	self assert: html equals: '<select name="1" class="rounded" multiple="multiple"></select><input name="2" type="hidden"/>'