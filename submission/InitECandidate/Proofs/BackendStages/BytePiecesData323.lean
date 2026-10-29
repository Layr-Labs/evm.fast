import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw323_0 : List (BitVec 8) := [179#8, 101#8, 165#8, 0#8, 19#8, 101#8, 0#8, 0#8, 99#8, 150#8, 165#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 3#8, 181#8, 5#8, 0#8, 19#8, 102#8, 0#8, 0#8, 99#8, 22#8, 197#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 3#8, 181#8, 133#8, 0#8, 147#8, 101#8, 0#8, 0#8, 99#8, 6#8, 181#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece323_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw323_0).val
theorem piece323_0_eq : piece323_0 = raw323_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw323_0
end InitECandidate.Proofs.BackendStages.BytePieces
