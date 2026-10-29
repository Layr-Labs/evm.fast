import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw767_0 : List (BitVec 8) := [51#8, 99#8, 165#8, 0#8, 3#8, 53#8, 3#8, 6#8, 131#8, 53#8, 131#8, 6#8, 3#8, 54#8, 3#8, 7#8, 131#8, 54#8, 131#8, 7#8, 131#8, 50#8, 3#8, 8#8, 3#8, 51#8, 131#8, 8#8, 111#8, 0#8, 207#8, 164#8]
def piece767_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw767_0).val
theorem piece767_0_eq : piece767_0 = raw767_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw767_0
end InitECandidate.Proofs.BackendStages.BytePieces
