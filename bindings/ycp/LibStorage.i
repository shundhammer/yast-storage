//
// YCP interface definition for libstorage
//

%module LibStorage

%include "LiMaL.i"

%{
// workaround for bnc #593954
#undef seed

#include <storage/StorageInterface.h>
#include <storage/HumanString.h>
#include <storage/Graph.h>
%}

using namespace std;

%include "std_string.i"
%include "std_deque.i"
%include "std_list.i"

specialize_sequence(storage::ContainerInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::DiskInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::LvmVgInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::VolumeInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::PartitionInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::PartitionAddInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::LvmLvInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::MdInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::MdStateInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::MdPartCoInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::MdPartInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::MdPartCoStateInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::LoopInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::DmInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::NfsInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::DmPartCoInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::DmraidCoInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::DmmultipathCoInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::DmPartInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::DmraidInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::DmmultipathInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::BtrfsInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::PartitionSlotInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::CommitInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::ResizeInfo, TO_PACK, FROM_PACK, CHECK)
specialize_sequence(storage::ContentInfo, TO_PACK, FROM_PACK, CHECK)

specialize_sequence(storage::Environment, TO_PACK, FROM_PACK, CHECK)

%include </usr/include/storage/StorageInterface.h>
%include </usr/include/storage/HumanString.h>
%include </usr/include/storage/Graph.h>

