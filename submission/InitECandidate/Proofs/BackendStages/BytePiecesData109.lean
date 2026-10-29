import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw109_0 : List (BitVec 8) := [179#8, 235#8, 82#8, 0#8, 179#8, 98#8, 165#8, 0#8, 51#8, 229#8, 123#8, 1#8, 179#8, 107#8, 99#8, 0#8, 51#8, 227#8, 181#8, 0#8, 179#8, 229#8, 123#8, 1#8, 179#8, 235#8, 115#8, 0#8, 179#8, 99#8, 198#8, 0#8, 51#8, 230#8, 123#8, 1#8, 179#8, 107#8, 132#8, 0#8, 51#8, 228#8, 214#8, 0#8, 179#8, 230#8, 123#8, 1#8, 111#8, 240#8, 31#8, 247#8]
def piece109_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw109_0).val
theorem piece109_0_eq : piece109_0 = raw109_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw109_0
end InitECandidate.Proofs.BackendStages.BytePieces
