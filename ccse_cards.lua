cards = {
    {question="When should you use snapshots?", answer="When the appliance is first installed OR prior to performing an upgrade"},
    {question="Snapshots create a binary file image of which disk partition?", answer="root"},
    {question="What is NOT included in a snapshot?", answer="Log partition (no fw logs preserved)"},
    {question="Are snapshots appliance or version specific?", answer="Appliance, but not version."},
    {question="When to use backups (not snapshots)?", answer="Regularly for DR, and before performing a hardware upgrade"},
    {question="What is NOT included in a backup?", answer="OS, drivers, hot fixes"},
    {question="Are backups appliance or version specific?", answer="Not appliance specific, but version and hot fix must match"},
    {question="What are the 4 database domains inside of the SMS?", answer="Global, User, System, Log"},
    {question="What is stored in the Gaia OS database?", answer="IP config, Users, etc..."},
    {question="What port does SmartConsole use?", answer="TCP 19009"},
    {question="What is the main difference between a CPUSE and Advanced Upgrade?", answer="Advanced exports the entire management database."},
    {question="A CPUSE upgrade automatically performs a _______ before the upgrade.", answer="snapshot"},
    {question="When must an upgrade target have the same IP address configuration?", answer="When the environment uses only IPv4 or IPv6"},
    {question="When upgrading SMS from 77.x to 80.x, what is the preferred method with the Least Risk of Downtime?", answer="Advanced Upgrade with Database Migration"},
    {question="When migrating settings, should you use the older or newer version of the migrate tool located at $FWDIR/bin/upgrade_tools?", answer="Use the newer version"},
    {question="Which script exports the management database and CP Config during a R80.40 to R81.10 migration?", answer="/opt/CPsuite-R80.40/fw1/scripts"},
    {question="Is an HA Failover between SMSs automatic or manual?", answer="manual"},
    {question="What is required for 2 SMSs to sync?", answer="Same version AND hotfixes, Secondary server must be licensed, identical install and upgrade paths."},
    {question="What does the Collision status mean for an SMS in HA?", answer="The two SMSs have different policies and/or databases, one must be overwritten."},
    {question="What 3 things can trigger a sync between 2 SMSs in HA?", answer="When the 2nd server is first defined, when a manual sync is performed, when changes are published (delta sync)"},
    {question="When connecting SmartConsole to an SMS, what is required of that SMS for the connection to have Read/Write permissions?", answer="The SMS must be the Active one (not standby in HA)"},
    {question="What must you do to get a Gateway to sync with a Secondary SMS?", answer="Add the Secondary SMS to the ‘fetch policy’ list on the gateway object.  Likewise, if you want to get logs from a Secondary SMS, you can edit the ‘Log Distribution’ lists on the gateway object."},
    {question="Do Log Servers perform policy management?", answer="No, they are only repositories for Security Gateway Logs"},
    {question="Which ClusterXL Upgrade Method is good for when you can allow the most network downtime?", answer="Minimal Effort Upgrade."},
    {question="Which ClusterXL Upgrade Method is good for when you cannot allow network downtime but dropped packets are allowed (Connections initiated through the old-version cluster member are dropped when it is upgraded)?", answer="Zero Downtime Upgrade"},
    {question="Which ClusterXL Upgrade Method is good for when absolutely no downtime or drops can be allowed?", answer="Multi-Version Cluster Upgrade (MVCU)"},
    {question="What are the exceptions to MVCU’s no-drop stipulation?", answer="Remote VPN connections, Static NAT if using VMAC, Identity Awareness, DLP connections, Threat Emulations"},
    {question="What is a Gaia Fast Deployment mechanism that allows fast and easy deployment of gateways and SMSs, resulting in a Clean installed server with desired version and Hotfixes?", answer="Blink Utility (~5-7 minutes for Security Gateway, ~10-16 for SMS"},
    {question="What are the 5 upgrade steps?", answer="1. Plan process (order up upgrade, right versions, etc…)\n2. Backups, including custom config files, OFF of the appliance being upgraded\n3. Upgrade STANDBY members of the cluster\n4. Force failover to one of the standby members\n5. Upgrade remaining"},
    {question="For an MVCU upgrade, how to do you bring upgraded servers online?", answer="set cluster member mvc on"},
    {question="For an MVCU upgrade, how to do you bring the active server down?", answer="clusterXL_admin down (preferred)\nOR: set cluster admin down"},
    {question="What Security Gateway Upgrade option allows SmartConsole to deploy JumboHF and Upgrade packages and allows up to 10 gateways to be installed simultaneously?", answer="Central Deployment in SmartConsole"},
    {question="What are the 4 requirements for Central Deployment in SmartConsole?", answer="Write permissions on SmartUpdate\nCPUSE agent must be current\nGateway must have a policy installed\nCannot be done individually on clusters"},
    {question="What are some limitations of Central Deployment in SmartConsole?", answer="Cannot be used on Standalone environment, Non-gateways, Members of Full-HA Clusters, Global-use gateways, or gateways in load-sharing mode"},
    {question="What Cluster mode update Prepares the Access Control Policy for the Cluster and Changes the version in the Cluster object?", answer="High Availability Mode Clusters"},
    {question="Which command displays a listing of Check Point processes?", answer="cpwd_admin list"},
    {question="Which command displays all running processes?", answer="ps aux (you can pipe to grep for a specific process)"},
    {question="What is a good alternative to cpconfig when you need to use the functionality for scripting?", answer="cp_conf"},
    {question="How do you set the cli environment for users (debug level, prompt, output formatting, echo-cmd, etc…)?", answer="set clienv"},
    {question="What two commands change the timeout for the CLI and the GAIA web GUI?", answer="set inactivity-timeout\nset web session-timeout"},
    {question="How to you change the expert password in a script without having the new password in the script?", answer="set expert-password-hash <hash>"},
    {question="What command do you use to check for a specific listening port number?", answer="netstat -tulnp | grep <port>"},
    {question="What command do you use to check for a connection on a specific port?", answer="netstat -nạp | grep :<port>"},
    {question="Which of the 3 CheckPoint Security Processes deals with SmartConsole and SmartView Monitor/Event?", answer="GUI Clients"},
    {question="Which of the 3 Checkpoint Security Processes is responsible for ALL management operations for the databases, consoles, log files, and distribution of policy to GW?", answer="SMS"},
    {question="Which of the 3 Checkpoint Security Processes is responsible for enforcing the Security Policies configured on the SMS?", answer="Security Gateways"},
    {question="What are the functions of these Important Ports: TCP 19009, 9009, 18190, 257, 18120, 18264 and 18265", answer="19009 - remote communications with SmartConsole\n9009 - local SIC communications\n18190 - Connects to CPMI for legacy ops (SmartDashboard)\n257 - Delivers Logs form Gateway to SMS\n18120 - SMS pushes SIC certs\n18264 & 18265 - retrieve the CRL for the ICA Management Tool"},
    {question="Which SMS-Specific Check Point Management Process provides the architecture fore the security environment and allows the GUI clients to communicate with the SMS over 19009?", answer="Cpm (Check Point Management Process)"},
    {question="Which Check Point Management Process is the key process on all CheckPoint products, required by SIC, policy install, and application monitor (ports 18191 & 18211)?", answer="CPD (Check Point Daemon) "},
    {question="Which Check Point Management Process allows other processes to forward logs to external Log servers on port 257?", answer="FWD (Firewall Daemon)"},
    {question="Which Check Point Management Process is the “child” process of the FWD and manages the SMS for protocol enforcement?", answer="FWSSD"},
    {question="Which Check Point Management Process invokes and monitors key/critical processes?", answer="CPWD (Check Point Watchdog Daemon) (cpwd_admin command)"},
    {question="Which SMS-Specific Check Point Management Process provides GUI communication/authentication, database manipulation and policy compilation?", answer="FWM (Firewall Management)"},
    {question="Which SMS-Specific Check Point Management Process requires a specific script to investigate the process status, beyond running cpwd_admin list, and what is the path to that script?", answer="CPM (Check Point Management); $FWDIR/scripts/cpm_status.sh"},
    {question="Which SMS-Specific Check Point Management Process is responsible for HA of SMSs?", answer="FWMHA"},
    {question="Which SMS-Specific Check Point Management Processes are used for indexing and parsing logs?", answer="SOLR/INDEXER/SMARTLOG_SERVER/lpd"},
    {question="Which SMS-Specific Check Point Management Processes are used for SmartEvent?", answer="RFL/SMARTVIEW"},
    {question="What 4 processes are Gateway Specific?", answer="FWK_FORKER/FWK_WD\nSXL_STATD\nCIHS\nRAD"},
    {question="What features allow you to run scripts via SmartConsole, accessed through the Gateways & Servers view?", answer="One Time Script and Scripts Repository"},
    {question="What scripting feature allows scripts/tasks to be run on specific triggers?", answer="Smart Tasks"},
    {question="When does a packet enter the Inspection Module?", answer="After it is determined to continue an existing connection (New connections do NOT enter the module)"},
    {question="In Column-Based matching, in what order are the columns matched to the packet?", answer="First by Destination Host, Second by Source Host, and finally by Port."},
    {question="In Column-Based matching, if multiple rules are matched, which one is used?", answer="The highest priority rule"},
    {question="How is the Management plane separated from the Data Plane (MDPS) on the network level?", answer="Devices have a management interface with a separate routing domain."},
    {question="How is the Management plane separated from the Data Plane (MDPS) on the computing level?", answer="A kernel instance core is assigned to process mgmt traffic only."},
    {question="How does the Kernel Mode communicate with the upper User Mode?", answer="KM sets flags/traps, the changes of which are detected by the User Mode process."},
    {question="How does the User Mode communicate with the Kernel Mode?", answer="UM calls a function in the KM using an Ioctl, then the KM provides the requested parameters      "},
    {question="When does a packet, IF it is new, generate a log entry to be sent to the FWD process?", answer="Directly after it is inspected by the Chain Module, after it arrives at the gateway NIC"},
    {question="What is the full log chain when a packet is processed by a gateway?", answer="FW-FWD >>>> FW-CPD >>>> SMS-CPD >>>> SMS-FWD >>>> SMS-CPD >>>> SMS-CPM"},
    {question="What are packet process handlers which determine which modules will inspect a packet?", answer="Chain Modules"},
    {question="How many chains are in the Chain Modules?", answer="Two; inbound and outbound"},
    {question="Location Position FMDA", answer="Let’s Put Flaming Macaroni Down Attire"},
    {question="How do you examine how traffic moves through the Chain Modules from the CLI?", answer="fw monitor"},
    {question="Which fw monitor flag can you use to specify the relative position using location?", answer="-pi <location>"},
    {question="How do you limit the number of packets captured with fw monitor?", answer="Fw monitor -ci <count> -co <count>      (where ci is inbound and co is outbound)"},
    {question="How many symbolic links are kept for each connection in the connections table?", answer="3 additional links, outbound C2S, inbound S2C, and outbound S2C"},
    {question="How do you view the connections table from CLI?", answer="fwaccel conns"},
    {question="What kind of object does not have an IP assigned at creation, but has IP ranges assigned on the Gateway?", answer="Dynamic Objects"},
    {question="What kind of object allow external service providers to publish lists which are used to update IPs and Domains?", answer="Updatable Objects"},
    {question="How often is an Updatable Object updated by default?", answer="Every Hour"},
    {question="Question", answer="Answer"}
}