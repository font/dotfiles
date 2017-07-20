" Add format option 'aw' to add trailing white space, indicating that paragraph
" continues on next line. This is to be used with mutt's 'text_flowed'
" option.
setlocal formatoptions+=aw

" Disable trailing whitespace highlighting
":highlight clear ExtraWhitespace
