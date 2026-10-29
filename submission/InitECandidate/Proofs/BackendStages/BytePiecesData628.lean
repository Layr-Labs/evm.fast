import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw628_0 : List (BitVec 8) := [179#8, 101#8, 165#8, 0#8, 19#8, 101#8, 0#8, 1#8, 99#8, 246#8, 165#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 2#8, 99#8, 248#8, 165#8, 0#8, 55#8, 133#8, 125#8, 165#8, 19#8, 69#8, 149#8, 153#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 3#8, 99#8, 248#8, 165#8, 0#8, 55#8, 21#8, 38#8, 145#8, 19#8, 69#8, 21#8, 186#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 4#8, 99#8, 240#8, 165#8, 2#8, 183#8, 79#8, 228#8, 112#8, 147#8, 207#8, 207#8, 205#8, 55#8, 5#8, 0#8, 0#8, 19#8, 69#8, 245#8, 255#8, 19#8, 21#8, 5#8, 2#8, 51#8, 69#8, 245#8, 1#8, 103#8, 128#8, 0#8, 0#8, 183#8, 15#8, 172#8, 86#8, 147#8, 207#8, 239#8, 212#8, 55#8, 5#8, 0#8, 0#8, 19#8, 69#8, 245#8, 255#8, 19#8, 21#8, 5#8, 2#8, 51#8, 69#8, 245#8, 1#8, 103#8, 128#8, 0#8, 0#8]
def piece628_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw628_0).val
theorem piece628_0_eq : piece628_0 = raw628_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw628_0
end InitECandidate.Proofs.BackendStages.BytePieces
