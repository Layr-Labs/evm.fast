import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw375_0 : List (BitVec 8) := [179#8, 230#8, 181#8, 0#8, 19#8, 102#8, 0#8, 0#8, 147#8, 101#8, 16#8, 0#8, 111#8, 240#8, 223#8, 217#8]
def piece375_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw375_0).val
theorem piece375_0_eq : piece375_0 = raw375_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw375_0
end InitECandidate.Proofs.BackendStages.BytePieces
