click = <<-eos
<button @click="onClick()">click</button>
eos

insert_into_file "#{PARTS_PATH}/#{name}.vue",
click, after: "<p>{{ message }}</p>\n"

insert_into_file "#{PARTS_PATH}/#{name}.vue",
"      alert('click');\n", after: "console.log(\"clicked\")\n"