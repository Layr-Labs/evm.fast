import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw209_0 : List (BitVec 8) := [19#8, 100#8, 240#8, 255#8, 147#8, 99#8, 240#8, 255#8, 19#8, 99#8, 240#8, 255#8, 183#8, 15#8, 0#8, 0#8, 147#8, 207#8, 223#8, 194#8, 183#8, 2#8, 0#8, 0#8, 147#8, 130#8, 18#8, 0#8, 147#8, 146#8, 2#8, 2#8, 179#8, 194#8, 242#8, 1#8, 111#8, 240#8, 159#8, 188#8]
def piece209_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw209_0).val
theorem piece209_0_eq : piece209_0 = raw209_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw209_0
end InitECandidate.Proofs.BackendStages.BytePieces
