//***************************************************************************
// * file:        ConstSpeedMobility.cc
// *
// * author:      Steffen Sroka
// *
// * copyright:   (C) 2004 Telecommunication Networks Group (TKN) at
// *              Technische Universitaet Berlin, Germany.
// *
// *              This program is free software; you can redistribute it
// *              and/or modify it under the terms of the GNU General Public
// *              License as published by the Free Software Foundation; either
// *              version 2 of the License, or (at your option) any later
// *              version.
// *              For further information see file COPYING
// *              in the top level directory
// ***************************************************************************
// * part of:     framework implementation developed by tkn
// **************************************************************************/


package policemen.mobility;

import org.mixim.base.modules.BaseMobility;

//
// Controls all movement related things of a host
//
// ConstSpeedMobility does not use one of the standard mobility approaches.
// The user can define a velocity for each Host and an update interval. If
// the velocity is greater than zero (i.e. the Host is not stationary) the
// ConstSpeedMobility module calculates a random target position for the Host.
// Depending to the update interval and the velocity it calculates the number of
// steps to reach the destination and the step-size. Every update interval
// ConstSpeedMobility calculates the new position on its way to the target
// position and updates the display. Once the target position is reached
// ConstSpeedMobility calculates a new target position.
//
// @see ConnectionManager
// @author Steffen Sroka, Marc Loebbers, Daniel Willkomm
//
simple AttackerMobility extends BaseMobility
{
    parameters:
        @class(AttackerMobility);
        bool debug = default(false); // debug switch
        double speed @unit(mps) = default(0 mps); // speed of the host (in m/s)
        double updateInterval @unit(s) = default(1 s); // time interval to update the hosts position (seconds)
        double outskirtsWidth @unit(m) = default(10m);
}
