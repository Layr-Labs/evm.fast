import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw118_0 : List (BitVec 8) := [179#8, 226#8, 16#8, 0#8, 147#8, 99#8, 0#8, 0#8, 19#8, 67#8, 245#8, 255#8, 147#8, 96#8, 16#8, 0#8, 179#8, 63#8, 16#8, 0#8, 51#8, 133#8, 99#8, 0#8, 179#8, 48#8, 101#8, 0#8, 51#8, 5#8, 245#8, 1#8, 179#8, 63#8, 245#8, 1#8, 179#8, 224#8, 240#8, 1#8, 147#8, 99#8, 0#8, 0#8, 19#8, 195#8, 245#8, 255#8, 179#8, 63#8, 16#8, 0#8, 179#8, 133#8, 99#8, 0#8, 179#8, 176#8, 101#8, 0#8, 179#8, 133#8, 245#8, 1#8, 179#8, 191#8, 245#8, 1#8, 179#8, 224#8, 240#8, 1#8, 147#8, 99#8, 0#8, 0#8, 19#8, 67#8, 246#8, 255#8, 179#8, 63#8, 16#8, 0#8, 51#8, 134#8, 99#8, 0#8, 179#8, 48#8, 102#8, 0#8, 51#8, 6#8, 246#8, 1#8, 179#8, 63#8, 246#8, 1#8, 179#8, 224#8, 240#8, 1#8, 147#8, 99#8, 0#8, 0#8]
def piece118_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw118_0).val
theorem piece118_0_eq : piece118_0 = raw118_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw118_0
def raw118_1 : List (BitVec 8) := [19#8, 195#8, 246#8, 255#8, 179#8, 63#8, 16#8, 0#8, 179#8, 134#8, 99#8, 0#8, 179#8, 176#8, 102#8, 0#8, 179#8, 134#8, 246#8, 1#8, 179#8, 191#8, 246#8, 1#8, 179#8, 224#8, 240#8, 1#8, 103#8, 128#8, 2#8, 0#8]
def piece118_1 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw118_1).val
theorem piece118_1_eq : piece118_1 = raw118_1 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw118_1
end InitECandidate.Proofs.BackendStages.BytePieces
