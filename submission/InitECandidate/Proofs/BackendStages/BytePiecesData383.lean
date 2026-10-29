import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw383_0 : List (BitVec 8) := [19#8, 102#8, 0#8, 0#8, 147#8, 102#8, 0#8, 0#8, 99#8, 242#8, 182#8, 2#8, 179#8, 130#8, 166#8, 0#8, 131#8, 194#8, 2#8, 0#8, 19#8, 99#8, 0#8, 0#8, 99#8, 132#8, 98#8, 0#8, 111#8, 0#8, 128#8, 0#8, 19#8, 6#8, 22#8, 0#8, 147#8, 134#8, 22#8, 0#8, 111#8, 240#8, 31#8, 254#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 159#8, 253#8, 51#8, 133#8, 197#8, 64#8, 19#8, 21#8, 37#8, 0#8, 51#8, 5#8, 197#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece383_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw383_0).val
theorem piece383_0_eq : piece383_0 = raw383_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw383_0
end InitECandidate.Proofs.BackendStages.BytePieces
