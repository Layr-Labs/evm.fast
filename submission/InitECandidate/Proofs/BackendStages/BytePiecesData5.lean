import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw5_0 : List (BitVec 8) := [3#8, 187#8, 140#8, 252#8, 19#8, 27#8, 59#8, 0#8, 51#8, 236#8, 156#8, 1#8, 51#8, 12#8, 108#8, 1#8, 3#8, 59#8, 12#8, 1#8, 35#8, 180#8, 108#8, 253#8, 3#8, 59#8, 140#8, 0#8, 19#8, 12#8, 140#8, 1#8, 103#8, 0#8, 11#8, 0#8]
def piece5_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw5_0).val
theorem piece5_0_eq : piece5_0 = raw5_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw5_0
end InitECandidate.Proofs.BackendStages.BytePieces
