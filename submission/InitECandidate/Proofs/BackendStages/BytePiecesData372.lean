import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw372_0 : List (BitVec 8) := [179#8, 102#8, 198#8, 0#8, 51#8, 230#8, 181#8, 0#8, 147#8, 101#8, 32#8, 0#8, 111#8, 240#8, 223#8, 220#8]
def piece372_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw372_0).val
theorem piece372_0_eq : piece372_0 = raw372_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw372_0
end InitECandidate.Proofs.BackendStages.BytePieces
