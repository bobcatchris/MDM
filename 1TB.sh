csrutil authenticated-root disable;
diskutil mount /Volumes/1TB;
 Mount -uv /Volumes/1TB;	
 cd /Volumes/1TB/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/1TB/System/Library/CoreServices --bootefi --create-snapshot;
Echo "MDM Removed"
