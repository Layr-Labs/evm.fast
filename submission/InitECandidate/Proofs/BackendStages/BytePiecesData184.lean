import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw184_0 : List (BitVec 8) := [19#8, 99#8, 0#8, 0#8, 179#8, 98#8, 165#8, 0#8, 99#8, 124#8, 195#8, 6#8, 51#8, 5#8, 83#8, 0#8, 131#8, 70#8, 5#8, 0#8, 51#8, 5#8, 179#8, 0#8, 3#8, 69#8, 5#8, 0#8, 51#8, 68#8, 213#8, 0#8, 19#8, 101#8, 0#8, 0#8, 99#8, 20#8, 164#8, 0#8, 111#8, 0#8, 0#8, 5#8, 19#8, 101#8, 0#8, 0#8, 147#8, 102#8, 128#8, 0#8, 99#8, 94#8, 213#8, 2#8, 147#8, 102#8, 112#8, 0#8, 179#8, 134#8, 166#8, 64#8, 179#8, 86#8, 212#8, 0#8, 147#8, 246#8, 22#8, 0#8, 147#8, 109#8, 0#8, 0#8, 99#8, 136#8, 182#8, 1#8, 147#8, 22#8, 51#8, 0#8, 51#8, 5#8, 213#8, 0#8, 103#8, 128#8, 0#8, 0#8, 179#8, 99#8, 165#8, 0#8, 179#8, 100#8, 99#8, 0#8, 19#8, 133#8, 19#8, 0#8, 51#8, 227#8, 148#8, 0#8, 111#8, 240#8, 95#8, 252#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 223#8, 251#8, 19#8, 3#8, 19#8, 0#8, 111#8, 240#8, 223#8, 248#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 95#8, 248#8, 19#8, 21#8, 54#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece184_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw184_0).val
theorem piece184_0_eq : piece184_0 = raw184_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw184_0
end InitECandidate.Proofs.BackendStages.BytePieces
