package policemen.node;

//
// This NED module defines a host using an IEEE 802.15.4 transceiver at 2.4GHz
// for wireless communications, that can be used to simulate wireless sensor
// networks. 
//
// For instance, you can use it to compare your own MAC protocol to
// the 802.15.4 non beacon enabled MAC protocol, or to evaluate IEEE 802.15.4
// wireless sensor networks. It is also a good starting point to define your
// own Host file.
//
// This model was independently validated on a wireless sensor network testbed.
// For more information, see 
// Accurate Timeliness Simulations for Real-Time Wireless Sensor Networks,
// J. Rousselot, J.-D. Decotignie, M. Aoun, P. van der Stok, R. Serna Oliver,
// G. Fohler. In Proceedings of the 2009 Third UKSim European Symposium on Computer 
// Modeling and Simulation. <a href="http://dx.doi.org/10.1109/EMS.2009.34">http://dx.doi.org/10.1109/EMS.2009.34</a>.
//
// @author J�r�me Rousselot
//
import org.mixim.modules.node.Host802154_2400MHz;
import policemen.nic.NicCC2420BMac;
import policemen.application.PolicemenApplLayer;
import policemen.mobility.AttackerMobility;
import policemen.sensors.ISensor;
import policemen.sensors.MotionSensor;
import policemen.mac.PolicemenBMacLayer;

module ScenarioNode extends Host802154_2400MHz
{
    parameters:
        int numNodes; // total number of hosts in the network
		numHosts = numNodes;
		
        applicationType 	= default("PolicemenApplLayer");
        transportType   	= default("Aggregation");
        nicType         	= default("NicCC2420BMac");
        arpType         	= default("org.mixim.modules.netw.ArpHost");
        string sensorType	= default("MotionSensor");

        batteryStats.detail = default(false);
        batteryStats.timeSeries = default(false);

        battery.nominal = default(1000 mAh);
        battery.capacity = default(battery.nominal);
        battery.voltage = default(3 V);
        battery.resolution = default(60 s);
        battery.publishDelta = default(1);
        battery.publishTime = default(battery.resolution);
        battery.numDevices = default(1);
        
        submodules:
        // sensor layer if defined
        sensor: <sensorType> like ISensor {
            parameters:
                @display("p=140,310;i=block/classifier2");
        }
}

