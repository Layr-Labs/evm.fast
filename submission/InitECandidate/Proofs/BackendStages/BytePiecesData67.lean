import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw67_0 : List (BitVec 8) := [3#8, 181#8, 140#8, 254#8, 19#8, 21#8, 21#8, 0#8, 51#8, 5#8, 165#8, 1#8, 19#8, 6#8, 133#8, 255#8, 179#8, 101#8, 173#8, 1#8, 35#8, 48#8, 182#8, 0#8, 147#8, 5#8, 133#8, 254#8, 183#8, 239#8, 190#8, 176#8, 147#8, 143#8, 15#8, 0#8, 55#8, 6#8, 0#8, 0#8, 19#8, 70#8, 246#8, 255#8, 19#8, 22#8, 6#8, 2#8, 51#8, 70#8, 246#8, 1#8, 35#8, 176#8, 197#8, 0#8, 19#8, 5#8, 5#8, 254#8, 183#8, 15#8, 0#8, 176#8, 147#8, 143#8, 15#8, 0#8, 183#8, 5#8, 0#8, 0#8, 147#8, 197#8, 245#8, 255#8, 147#8, 149#8, 5#8, 2#8, 179#8, 197#8, 245#8, 1#8, 35#8, 48#8, 181#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece67_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw67_0).val
theorem piece67_0_eq : piece67_0 = raw67_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw67_0
end InitECandidate.Proofs.BackendStages.BytePieces
