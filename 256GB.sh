csrutil authenticated-root disable;
diskutil mount /Volumes/256GB;
 Mount -uv /Volumes/25GB;	
 cd /Volumes/256GB/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/256GB/System/Library/CoreServices --bootefi --create-snapshot;
Echo "MDM Removed"
