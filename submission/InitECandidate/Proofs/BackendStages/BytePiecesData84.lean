import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw84_0 : List (BitVec 8) := [147#8, 85#8, 133#8, 0#8, 183#8, 15#8, 255#8, 0#8, 147#8, 143#8, 255#8, 15#8, 55#8, 6#8, 255#8, 0#8, 19#8, 6#8, 246#8, 15#8, 19#8, 22#8, 6#8, 2#8, 51#8, 102#8, 246#8, 1#8, 179#8, 245#8, 197#8, 0#8, 183#8, 15#8, 255#8, 0#8, 147#8, 143#8, 255#8, 15#8, 55#8, 6#8, 255#8, 0#8, 19#8, 6#8, 246#8, 15#8, 19#8, 22#8, 6#8, 2#8, 51#8, 102#8, 246#8, 1#8, 51#8, 117#8, 197#8, 0#8, 19#8, 21#8, 133#8, 0#8, 51#8, 229#8, 165#8, 0#8, 147#8, 85#8, 5#8, 1#8, 183#8, 15#8, 255#8, 255#8, 147#8, 207#8, 255#8, 255#8, 55#8, 6#8, 255#8, 255#8, 19#8, 70#8, 246#8, 255#8, 19#8, 22#8, 6#8, 2#8, 51#8, 102#8, 246#8, 1#8, 179#8, 245#8, 197#8, 0#8, 183#8, 15#8, 255#8, 255#8, 147#8, 207#8, 255#8, 255#8, 55#8, 6#8, 255#8, 255#8, 19#8, 70#8, 246#8, 255#8, 19#8, 22#8, 6#8, 2#8, 51#8, 102#8, 246#8, 1#8, 51#8, 117#8, 197#8, 0#8, 19#8, 21#8, 5#8, 1#8, 51#8, 229#8, 165#8, 0#8, 147#8, 85#8, 5#8, 2#8, 19#8, 21#8, 5#8, 2#8, 51#8, 229#8, 165#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece84_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw84_0).val
theorem piece84_0_eq : piece84_0 = raw84_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw84_0
end InitECandidate.Proofs.BackendStages.BytePieces
