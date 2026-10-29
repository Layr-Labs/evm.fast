import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw286_0 : List (BitVec 8) := [35#8, 188#8, 172#8, 246#8, 19#8, 101#8, 80#8, 0#8, 111#8, 128#8, 12#8, 188#8]
def piece286_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw286_0).val
theorem piece286_0_eq : piece286_0 = raw286_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw286_0
end InitECandidate.Proofs.BackendStages.BytePieces
