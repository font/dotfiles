" Add format option 'aw' to add trailing white space, indicating that paragraph
" continues on next line. This is to be used with mutt's 'text_flowed'
" option.
"setlocal formatoptions+=aw
" Remove the auto-formatting feature to avoid vim adding 2 spaces after a
" period at the end of a line. One can still format with gq.
setlocal formatoptions+=w

" NOTE:
" Bulleted unordered lists considered comments (e.g. use of '-') will auto
" indent to align with the words on the first line. This behavior is
" controlled by the comments value 'fb:-' as shown here:
" comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>
" This is problematic when sending mail with mutt using a bulleted unordered
" list (e.g. using a '-') on any line that line wraps, in combination with
" text_flowed=true in mutt and the formatoptions set above for continuing new
" lines by using a trailing whitespace. The result is an extra space between
" words at the joining line boundaries. Instead, use ordered/numbered lists,
" disable the comments 'fb:-' value to interpret the '-' as a comment, or
" delete the trailing whitespace from the lines that line wrap effectively
" enforcing a fixed formatting list which may look ugly on mobile devices or
" small screens.

:highlight clear SpellBad               " Clear spelling error highlight
:highlight SpellBad cterm=underline     " Set spelling error highilght

" Disable trailing whitespace highlighting
":highlight clear ExtraWhitespace
