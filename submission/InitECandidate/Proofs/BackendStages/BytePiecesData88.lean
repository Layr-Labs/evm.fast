import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw88_0 : List (BitVec 8) := [19#8, 214#8, 133#8, 1#8, 35#8, 0#8, 197#8, 0#8, 147#8, 6#8, 21#8, 0#8, 19#8, 214#8, 5#8, 1#8, 35#8, 128#8, 198#8, 0#8, 147#8, 6#8, 37#8, 0#8, 19#8, 214#8, 133#8, 0#8, 35#8, 128#8, 198#8, 0#8, 19#8, 5#8, 53#8, 0#8, 35#8, 0#8, 181#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece88_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw88_0).val
theorem piece88_0_eq : piece88_0 = raw88_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw88_0
end InitECandidate.Proofs.BackendStages.BytePieces
