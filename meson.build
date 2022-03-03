project('caar-bios')

as = find_program('caar-as')

input_files = [
'src/main.lisp'
]

outfile = 'bios.bin'


main_target = custom_target('caar-bios',
  output : outfile,
  input : input_files,
  command : [as, '@INPUT@', '-o', '@OUTPUT@'],
  build_by_default: true)
