import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw114_0 : List (BitVec 8) := [51#8, 197#8, 162#8, 0#8, 179#8, 69#8, 179#8, 0#8, 51#8, 198#8, 195#8, 0#8, 179#8, 70#8, 212#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece114_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw114_0).val
theorem piece114_0_eq : piece114_0 = raw114_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw114_0
end InitECandidate.Proofs.BackendStages.BytePieces
