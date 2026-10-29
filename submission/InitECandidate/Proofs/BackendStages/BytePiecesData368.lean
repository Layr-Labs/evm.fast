import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw368_0 : List (BitVec 8) := [19#8, 102#8, 0#8, 0#8, 147#8, 101#8, 0#8, 0#8, 111#8, 240#8, 207#8, 172#8]
def piece368_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw368_0).val
theorem piece368_0_eq : piece368_0 = raw368_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw368_0
end InitECandidate.Proofs.BackendStages.BytePieces
