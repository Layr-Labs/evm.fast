import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw299_0 : List (BitVec 8) := [147#8, 5#8, 133#8, 0#8, 19#8, 102#8, 0#8, 0#8, 35#8, 176#8, 197#8, 0#8, 147#8, 5#8, 5#8, 1#8, 19#8, 102#8, 0#8, 0#8, 35#8, 176#8, 197#8, 0#8, 19#8, 5#8, 133#8, 1#8, 147#8, 101#8, 0#8, 0#8, 35#8, 48#8, 181#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece299_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw299_0).val
theorem piece299_0_eq : piece299_0 = raw299_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw299_0
end InitECandidate.Proofs.BackendStages.BytePieces
