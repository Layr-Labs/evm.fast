import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw102_0 : List (BitVec 8) := [51#8, 230#8, 198#8, 0#8, 179#8, 101#8, 182#8, 0#8, 51#8, 229#8, 165#8, 0#8, 147#8, 101#8, 0#8, 0#8, 99#8, 22#8, 181#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece102_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw102_0).val
theorem piece102_0_eq : piece102_0 = raw102_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw102_0
end InitECandidate.Proofs.BackendStages.BytePieces
