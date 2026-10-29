import InitECandidate.Proofs.BackendStages.BytesData0
import InitECandidate.Proofs.BackendStages.BytesData1
import InitECandidate.Proofs.BackendStages.BytesData2
import InitECandidate.Proofs.BackendStages.BytesData4
import InitECandidate.Proofs.BackendStages.BytesData5
import InitECandidate.Proofs.BackendStages.BytesData6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytesChunkDataStubs
def bytes : List (BitVec 8) := [ByteData.bytes0, ByteData.bytes1, ByteData.bytes2, ByteData.bytes4, ByteData.bytes5, ByteData.bytes6].flatten
end InitECandidate.Proofs.BackendStages.BytesChunkDataStubs
