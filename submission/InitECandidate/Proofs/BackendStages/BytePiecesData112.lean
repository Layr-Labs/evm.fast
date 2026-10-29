import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw112_0 : List (BitVec 8) := [51#8, 245#8, 162#8, 0#8, 179#8, 117#8, 179#8, 0#8, 51#8, 246#8, 195#8, 0#8, 179#8, 118#8, 212#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece112_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw112_0).val
theorem piece112_0_eq : piece112_0 = raw112_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw112_0
end InitECandidate.Proofs.BackendStages.BytePieces
