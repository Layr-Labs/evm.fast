import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw173_0 : List (BitVec 8) := [179#8, 102#8, 198#8, 0#8, 147#8, 98#8, 0#8, 0#8, 99#8, 252#8, 210#8, 0#8, 147#8, 134#8, 246#8, 255#8, 179#8, 130#8, 166#8, 0#8, 35#8, 128#8, 178#8, 0#8, 147#8, 213#8, 133#8, 0#8, 111#8, 240#8, 159#8, 254#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 31#8, 254#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece173_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw173_0).val
theorem piece173_0_eq : piece173_0 = raw173_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw173_0
end InitECandidate.Proofs.BackendStages.BytePieces
