" g15vim
" By YuGiOhJCJ <yugiohjcj@1s.fr>
" http://yugiohjcj.1s.fr/
" 20090608
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
" 
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.
"

function DrawOnG15()
   let my_buffname=bufname("%")
   let my_line=line(".")
   let my_col=col(".")
   let my_command='!~/.vim/plugin/draw-on-g15 [g15vim] "" "line: '.my_line.'" "col: '.my_col.'" "" "buffname: '.my_buffname.'" 2>/dev/null &'
   :silent :execute my_command
endfunction

:silent :!~/.vim/plugin/draw-on-g15 "[g15vim]" "" "By YuGiOhJCJ <yugiohjcj@1s.fr>" 2>/dev/null &
:autocmd cursorMoved * :call DrawOnG15()
:autocmd cursorMovedI * :call DrawOnG15()
