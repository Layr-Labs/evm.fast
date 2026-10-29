import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw717_0 : List (BitVec 8) := [147#8, 110#8, 0#8, 0#8, 19#8, 110#8, 0#8, 0#8, 147#8, 109#8, 0#8, 0#8, 147#8, 100#8, 0#8, 0#8, 19#8, 100#8, 0#8, 0#8, 147#8, 99#8, 16#8, 0#8, 111#8, 176#8, 31#8, 135#8]
def piece717_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw717_0).val
theorem piece717_0_eq : piece717_0 = raw717_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw717_0
end InitECandidate.Proofs.BackendStages.BytePieces
