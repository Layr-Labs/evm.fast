import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw172_0 : List (BitVec 8) := [147#8, 101#8, 0#8, 0#8, 19#8, 102#8, 0#8, 0#8, 99#8, 8#8, 197#8, 0#8, 19#8, 85#8, 133#8, 0#8, 147#8, 133#8, 21#8, 0#8, 111#8, 240#8, 31#8, 255#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 159#8, 254#8, 51#8, 229#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece172_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw172_0).val
theorem piece172_0_eq : piece172_0 = raw172_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw172_0
end InitECandidate.Proofs.BackendStages.BytePieces
