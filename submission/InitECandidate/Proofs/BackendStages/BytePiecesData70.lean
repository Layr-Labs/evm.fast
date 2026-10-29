import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw70_0 : List (BitVec 8) := [131#8, 181#8, 140#8, 254#8, 147#8, 149#8, 21#8, 0#8, 179#8, 133#8, 165#8, 1#8, 147#8, 133#8, 133#8, 255#8, 35#8, 176#8, 165#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece70_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw70_0).val
theorem piece70_0_eq : piece70_0 = raw70_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw70_0
end InitECandidate.Proofs.BackendStages.BytePieces
