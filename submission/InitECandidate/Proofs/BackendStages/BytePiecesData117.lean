import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw117_0 : List (BitVec 8) := [179#8, 228#8, 16#8, 0#8, 147#8, 194#8, 242#8, 255#8, 147#8, 96#8, 16#8, 0#8, 179#8, 63#8, 16#8, 0#8, 51#8, 5#8, 85#8, 0#8, 179#8, 48#8, 85#8, 0#8, 51#8, 5#8, 245#8, 1#8, 179#8, 63#8, 245#8, 1#8, 179#8, 224#8, 240#8, 1#8, 147#8, 66#8, 243#8, 255#8, 179#8, 63#8, 16#8, 0#8, 179#8, 133#8, 85#8, 0#8, 179#8, 176#8, 85#8, 0#8, 179#8, 133#8, 245#8, 1#8, 179#8, 191#8, 245#8, 1#8, 179#8, 224#8, 240#8, 1#8, 147#8, 194#8, 243#8, 255#8, 179#8, 63#8, 16#8, 0#8, 51#8, 6#8, 86#8, 0#8, 179#8, 48#8, 86#8, 0#8, 51#8, 6#8, 246#8, 1#8, 179#8, 63#8, 246#8, 1#8, 179#8, 224#8, 240#8, 1#8, 147#8, 66#8, 244#8, 255#8, 179#8, 63#8, 16#8, 0#8, 179#8, 134#8, 86#8, 0#8, 179#8, 176#8, 86#8, 0#8, 179#8, 134#8, 246#8, 1#8, 179#8, 191#8, 246#8, 1#8, 179#8, 224#8, 240#8, 1#8, 103#8, 128#8, 4#8, 0#8]
def piece117_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw117_0).val
theorem piece117_0_eq : piece117_0 = raw117_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw117_0
end InitECandidate.Proofs.BackendStages.BytePieces
