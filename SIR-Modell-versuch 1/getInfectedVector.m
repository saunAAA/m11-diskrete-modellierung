## Copyright (C) 2020 Christoph Pfaffmann
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} getInfectedVector (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Christoph Pfaffmann <christoph@Christophs-MBP.fritz.box>
## Created: 2020-05-02

function infected = getInfectedVector (n, t,b)
  ## n = Anzahl der Bürger
  ## t = Zeitraum in Tagen
  ## b = Basisreproduktionszahl
  infected = getInfectedVector2(n,t,b);
endfunction

function infected = getInfectedVector2(n,t,b)
  timespan1 = floor(t/2);
  timespan2 = t - timespan1;
  infected = zeros(1, t)
  
  for i=1:timespan1  
    infected(i+1)=infected(i)+1
  endfor
  for j=timespan1+1:t
    infected(j+1)=infected(j)-1
  endfor
endfunction
