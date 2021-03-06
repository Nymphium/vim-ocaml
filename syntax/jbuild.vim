set syntax=lisp
syn case match

" The syn-iskeyword setting lacks #,? from the iskeyword setting here.
" Clearing it avoids maintaining keyword characters in multiple places.
syn iskeyword clear

syn keyword lispDecl jbuild_version library executable executables rule ocamllex ocamlyacc menhir alias install

syn keyword lispKey name public_name synopsis modules libraries wrapped
syn keyword lispKey preprocess preprocessor_deps optional c_names cxx_names
syn keyword lispKey install_c_headers modes no_dynlink self_build_stubs_archive
syn keyword lispKey ppx_runtime_libraries virtual_deps js_of_ocaml link_flags
syn keyword lispKey javascript_files flags ocamlc_flags ocamlopt_flags pps
syn keyword lispKey library_flags c_flags c_library_flags kind package action
syn keyword lispKey deps targets locks fallback
syn keyword lispKey inline_tests

syn keyword lispAtom true false

syn keyword lispFunc cat chdir copy# diff? echo run setenv
syn keyword lispFunc ignore-stdout ignore-stderr ignore-outputs
syn keyword lispFunc with-stdout-to with-stderr-to with-outputs-to
syn keyword lispFunc write-file system bash

syn cluster lispBaseListCluster add=jbuildVar
syn match jbuildVar '\${[@<^]}' containedin=lispSymbol
syn match jbuildVar '\${\k\+\(:\k\+\)\?}' containedin=lispSymbol

hi def link jbuildVar Identifier
