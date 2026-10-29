import InitECandidate.Proofs.BackendStages.ZeroData0
import InitECandidate.Proofs.BackendStages.ZeroData1
import InitECandidate.Proofs.BackendStages.ZeroData2
import InitECandidate.Proofs.BackendStages.ZeroData4
import InitECandidate.Proofs.BackendStages.ZeroData5
import InitECandidate.Proofs.BackendStages.ZeroData6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.BackendStages.ZeroChunkDataStubs
def keys : List Nat := [ZeroData.keys0, ZeroData.keys1, ZeroData.keys2, ZeroData.keys4, ZeroData.keys5, ZeroData.keys6].flatten
end InitECandidate.Proofs.BackendStages.ZeroChunkDataStubs
