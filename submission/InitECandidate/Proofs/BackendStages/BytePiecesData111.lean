import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw111_0 : List (BitVec 8) := [19#8, 69#8, 245#8, 255#8, 147#8, 197#8, 245#8, 255#8, 19#8, 70#8, 246#8, 255#8, 147#8, 198#8, 246#8, 255#8, 103#8, 128#8, 0#8, 0#8]
def piece111_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw111_0).val
theorem piece111_0_eq : piece111_0 = raw111_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw111_0
end InitECandidate.Proofs.BackendStages.BytePieces
