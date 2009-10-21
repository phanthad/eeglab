function [H] = translate(T);

% TRANSLATE returns the homogenous coordinate transformation matrix
% corresponding to a translation along the x, y and z-axis
%
% Use as
%   [H] = translate(T)
% where
%   T   [tx, ty, tz] translation along each of the axes
%   H   corresponding homogenous transformation matrix

% Copyright (C) 2000-2005, Robert Oostenveld
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

% $Log: not supported by cvs2svn $
% Revision 1.4  2005/08/15 08:15:33  roboos
% reimplemented the rotate function, which contained an error (the error is in the AIR technical reference)
% changed all functions to be dependent on the rotate, translate and scale function
% all functions now behave consistenly, which also means that they are not compleetly backward compatible w.r.t. the order of the rotations
%
% Revision 1.3  2004/05/19 09:57:07  roberto
% added GPL copyright statement, added CVS log item
%

H = [
  1 0 0 T(1)
  0 1 0 T(2)
  0 0 1 T(3)
  0 0 0 1
  ];
