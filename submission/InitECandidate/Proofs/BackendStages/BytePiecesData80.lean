import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw80_0 : List (BitVec 8) := [19#8, 102#8, 0#8, 0#8, 179#8, 102#8, 165#8, 0#8, 99#8, 114#8, 182#8, 2#8, 51#8, 5#8, 214#8, 0#8, 3#8, 69#8, 5#8, 0#8, 147#8, 98#8, 0#8, 0#8, 99#8, 6#8, 85#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 6#8, 22#8, 0#8, 111#8, 240#8, 31#8, 254#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 159#8, 253#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece80_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw80_0).val
theorem piece80_0_eq : piece80_0 = raw80_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw80_0
end InitECandidate.Proofs.BackendStages.BytePieces
