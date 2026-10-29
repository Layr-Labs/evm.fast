import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw245_0 : List (BitVec 8) := [35#8, 188#8, 172#8, 246#8, 19#8, 101#8, 32#8, 0#8, 111#8, 64#8, 13#8, 247#8]
def piece245_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw245_0).val
theorem piece245_0_eq : piece245_0 = raw245_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw245_0
end InitECandidate.Proofs.BackendStages.BytePieces
