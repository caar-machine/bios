project('bios')

as = find_program('caar-as')

input_files = [
'src/main.lisp'
]

outfile = 'bios.bin'

executable('bios',
  output : outfile,
  input : input_files,
  command : [as, '@INPUT@', '-o', '@OUTPUT@'])
