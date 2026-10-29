import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw123_0 : List (BitVec 8) := [19#8, 99#8, 0#8, 0#8, 147#8, 98#8, 0#8, 2#8, 179#8, 99#8, 165#8, 0#8, 147#8, 102#8, 0#8, 0#8, 99#8, 222#8, 86#8, 2#8, 147#8, 130#8, 242#8, 255#8, 179#8, 230#8, 82#8, 0#8, 179#8, 214#8, 213#8, 0#8, 147#8, 246#8, 22#8, 0#8, 19#8, 21#8, 21#8, 0#8, 51#8, 229#8, 166#8, 0#8, 99#8, 116#8, 197#8, 0#8, 111#8, 0#8, 128#8, 1#8, 51#8, 5#8, 197#8, 64#8, 19#8, 100#8, 16#8, 0#8, 179#8, 230#8, 82#8, 0#8, 179#8, 22#8, 212#8, 0#8, 51#8, 227#8, 102#8, 0#8, 111#8, 240#8, 95#8, 252#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 223#8, 251#8, 179#8, 101#8, 165#8, 0#8, 51#8, 101#8, 99#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece123_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw123_0).val
theorem piece123_0_eq : piece123_0 = raw123_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw123_0
end InitECandidate.Proofs.BackendStages.BytePieces
