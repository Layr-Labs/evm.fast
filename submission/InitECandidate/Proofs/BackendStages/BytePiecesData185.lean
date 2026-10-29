import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw185_0 : List (BitVec 8) := [3#8, 54#8, 5#8, 0#8, 19#8, 19#8, 54#8, 0#8, 131#8, 50#8, 133#8, 2#8, 3#8, 54#8, 133#8, 3#8, 147#8, 102#8, 0#8, 0#8, 99#8, 0#8, 214#8, 6#8, 147#8, 22#8, 86#8, 0#8, 179#8, 134#8, 86#8, 0#8, 131#8, 182#8, 134#8, 1#8, 99#8, 148#8, 102#8, 0#8, 111#8, 0#8, 64#8, 5#8, 147#8, 211#8, 54#8, 0#8, 179#8, 131#8, 179#8, 0#8, 131#8, 195#8, 3#8, 0#8, 19#8, 100#8, 112#8, 0#8, 147#8, 246#8, 118#8, 0#8, 179#8, 6#8, 212#8, 64#8, 179#8, 214#8, 211#8, 0#8, 147#8, 246#8, 22#8, 0#8, 147#8, 99#8, 0#8, 0#8, 99#8, 138#8, 118#8, 0#8, 19#8, 22#8, 86#8, 0#8, 51#8, 6#8, 86#8, 0#8, 3#8, 54#8, 6#8, 1#8, 111#8, 0#8, 0#8, 1#8, 19#8, 22#8, 86#8, 0#8, 51#8, 6#8, 86#8, 0#8, 3#8, 54#8, 134#8, 0#8, 111#8, 240#8, 31#8, 250#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 159#8, 249#8, 51#8, 101#8, 198#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece185_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw185_0).val
theorem piece185_0_eq : piece185_0 = raw185_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw185_0
end InitECandidate.Proofs.BackendStages.BytePieces
