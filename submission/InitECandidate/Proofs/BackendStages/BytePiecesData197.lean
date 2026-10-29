import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw197_0 : List (BitVec 8) := [179#8, 102#8, 165#8, 0#8, 179#8, 226#8, 16#8, 0#8, 179#8, 224#8, 181#8, 0#8, 3#8, 181#8, 134#8, 1#8, 99#8, 234#8, 160#8, 0#8, 19#8, 101#8, 0#8, 0#8, 147#8, 101#8, 0#8, 0#8, 19#8, 102#8, 0#8, 0#8, 103#8, 128#8, 2#8, 0#8, 147#8, 144#8, 48#8, 0#8, 3#8, 181#8, 6#8, 3#8, 179#8, 128#8, 160#8, 0#8, 3#8, 181#8, 0#8, 0#8, 131#8, 181#8, 134#8, 0#8, 179#8, 96#8, 165#8, 0#8, 51#8, 182#8, 176#8, 2#8, 179#8, 128#8, 176#8, 2#8, 131#8, 181#8, 6#8, 2#8, 179#8, 133#8, 176#8, 0#8, 147#8, 16#8, 85#8, 0#8, 3#8, 181#8, 134#8, 2#8, 179#8, 128#8, 160#8, 0#8, 3#8, 182#8, 128#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 2#8, 0#8]
def piece197_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw197_0).val
theorem piece197_0_eq : piece197_0 = raw197_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw197_0
end InitECandidate.Proofs.BackendStages.BytePieces
