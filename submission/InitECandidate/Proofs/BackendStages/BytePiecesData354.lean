import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw354_0 : List (BitVec 8) := [3#8, 53#8, 5#8, 0#8, 147#8, 101#8, 0#8, 0#8, 99#8, 6#8, 181#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece354_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw354_0).val
theorem piece354_0_eq : piece354_0 = raw354_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw354_0
end InitECandidate.Proofs.BackendStages.BytePieces
