//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package policemen.sensors;

simple BaseSensor like ISensor
{
    parameters:
        @class(BaseSensor);
        bool debug = default(false); // debug switch
        bool stats = default(true);   // stats generation switch
        double range @unit(m) = default(10m);
        @display("i=block/classifier2");
}
