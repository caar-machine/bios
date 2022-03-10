project('caar-bios')

as = ''

if meson.is_subproject()
  as = subproject('as').get_variable('assembler_executable')
else
  as = find_program('caar-as')
endif

input_files = [
'src/main.lisp'
]

outfile = 'bios.bin'


main_target = custom_target('caar-bios',
  output : outfile,
  input : input_files,
  command : [as, '@INPUT@', '-o', '@OUTPUT@', '-I', join_paths(meson.current_source_dir(), 'src')],
  build_by_default: true)
