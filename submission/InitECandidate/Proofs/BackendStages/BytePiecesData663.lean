import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw663_0 : List (BitVec 8) := [19#8, 100#8, 0#8, 0#8, 147#8, 99#8, 0#8, 0#8, 19#8, 99#8, 0#8, 0#8, 147#8, 98#8, 16#8, 0#8, 111#8, 208#8, 159#8, 130#8]
def piece663_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw663_0).val
theorem piece663_0_eq : piece663_0 = raw663_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw663_0
end InitECandidate.Proofs.BackendStages.BytePieces
