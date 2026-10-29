import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw137_0 : List (BitVec 8) := [147#8, 101#8, 0#8, 0#8, 19#8, 86#8, 5#8, 2#8, 147#8, 102#8, 0#8, 0#8, 99#8, 22#8, 214#8, 0#8, 51#8, 102#8, 165#8, 0#8, 111#8, 0#8, 128#8, 0#8, 147#8, 101#8, 0#8, 2#8, 19#8, 85#8, 6#8, 1#8, 147#8, 102#8, 0#8, 0#8, 99#8, 22#8, 213#8, 0#8, 51#8, 101#8, 198#8, 0#8, 111#8, 0#8, 128#8, 0#8, 147#8, 133#8, 5#8, 1#8, 19#8, 86#8, 133#8, 0#8, 147#8, 102#8, 0#8, 0#8, 99#8, 22#8, 214#8, 0#8, 51#8, 102#8, 165#8, 0#8, 111#8, 0#8, 128#8, 0#8, 147#8, 133#8, 133#8, 0#8, 19#8, 85#8, 70#8, 0#8, 147#8, 102#8, 0#8, 0#8, 99#8, 22#8, 213#8, 0#8, 51#8, 101#8, 198#8, 0#8, 111#8, 0#8, 128#8, 0#8, 147#8, 133#8, 69#8, 0#8, 19#8, 86#8, 37#8, 0#8, 147#8, 102#8, 0#8, 0#8, 99#8, 22#8, 214#8, 0#8, 51#8, 102#8, 165#8, 0#8, 111#8, 0#8, 128#8, 0#8, 147#8, 133#8, 37#8, 0#8, 19#8, 85#8, 22#8, 0#8, 147#8, 102#8, 0#8, 0#8, 99#8, 22#8, 213#8, 0#8, 51#8, 101#8, 198#8, 0#8, 111#8, 0#8, 128#8, 0#8, 147#8, 133#8, 21#8, 0#8, 51#8, 5#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece137_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw137_0).val
theorem piece137_0_eq : piece137_0 = raw137_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw137_0
end InitECandidate.Proofs.BackendStages.BytePieces
