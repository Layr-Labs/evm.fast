import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw91_0 : List (BitVec 8) := [19#8, 102#8, 0#8, 0#8, 99#8, 122#8, 182#8, 2#8, 179#8, 6#8, 166#8, 0#8, 131#8, 198#8, 6#8, 0#8, 183#8, 15#8, 65#8, 160#8, 147#8, 143#8, 15#8, 0#8, 183#8, 2#8, 0#8, 0#8, 147#8, 194#8, 242#8, 255#8, 147#8, 146#8, 2#8, 2#8, 179#8, 194#8, 242#8, 1#8, 179#8, 2#8, 86#8, 0#8, 35#8, 128#8, 210#8, 0#8, 19#8, 6#8, 22#8, 0#8, 111#8, 240#8, 31#8, 253#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 159#8, 252#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece91_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw91_0).val
theorem piece91_0_eq : piece91_0 = raw91_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw91_0
end InitECandidate.Proofs.BackendStages.BytePieces
