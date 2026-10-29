import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw101_0 : List (BitVec 8) := [51#8, 229#8, 198#8, 0#8, 51#8, 101#8, 181#8, 0#8, 147#8, 101#8, 0#8, 0#8, 99#8, 22#8, 181#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece101_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw101_0).val
theorem piece101_0_eq : piece101_0 = raw101_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw101_0
end InitECandidate.Proofs.BackendStages.BytePieces
