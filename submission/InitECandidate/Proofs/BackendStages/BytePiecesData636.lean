import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw636_0 : List (BitVec 8) := [147#8, 98#8, 0#8, 0#8, 51#8, 227#8, 214#8, 0#8, 99#8, 244#8, 98#8, 4#8, 147#8, 6#8, 243#8, 255#8, 179#8, 131#8, 86#8, 64#8, 147#8, 102#8, 0#8, 0#8, 19#8, 212#8, 35#8, 0#8, 99#8, 100#8, 180#8, 0#8, 111#8, 0#8, 0#8, 2#8, 147#8, 22#8, 52#8, 0#8, 179#8, 134#8, 166#8, 0#8, 3#8, 180#8, 6#8, 0#8, 147#8, 246#8, 51#8, 0#8, 147#8, 150#8, 54#8, 0#8, 179#8, 86#8, 212#8, 0#8, 147#8, 246#8, 246#8, 15#8, 179#8, 131#8, 194#8, 0#8, 35#8, 128#8, 211#8, 0#8, 147#8, 130#8, 18#8, 0#8, 111#8, 240#8, 223#8, 251#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 95#8, 251#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece636_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw636_0).val
theorem piece636_0_eq : piece636_0 = raw636_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw636_0
end InitECandidate.Proofs.BackendStages.BytePieces
