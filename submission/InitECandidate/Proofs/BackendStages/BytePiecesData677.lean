import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw677_0 : List (BitVec 8) := [179#8, 230#8, 181#8, 0#8, 179#8, 101#8, 198#8, 0#8, 19#8, 22#8, 85#8, 0#8, 51#8, 229#8, 214#8, 0#8, 111#8, 224#8, 6#8, 174#8]
def piece677_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw677_0).val
theorem piece677_0_eq : piece677_0 = raw677_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw677_0
end InitECandidate.Proofs.BackendStages.BytePieces
