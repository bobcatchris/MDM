csrutil authenticated-root disable;
diskutil mount /Volumes/512GB;
 Mount -uv /Volumes/512GB;	
 cd /Volumes/512GB/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/512GB/System/Library/CoreServices --bootefi --create-snapshot;
Echo "MDM Removed"
