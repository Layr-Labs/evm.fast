import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw474_0 : List (BitVec 8) := [3#8, 181#8, 140#8, 254#8, 19#8, 21#8, 21#8, 0#8, 51#8, 5#8, 165#8, 1#8, 3#8, 54#8, 5#8, 240#8, 131#8, 53#8, 6#8, 7#8, 147#8, 6#8, 6#8, 4#8, 131#8, 50#8, 6#8, 12#8, 3#8, 54#8, 6#8, 4#8, 51#8, 134#8, 194#8, 0#8, 35#8, 176#8, 198#8, 0#8, 3#8, 54#8, 5#8, 240#8, 19#8, 6#8, 134#8, 4#8, 131#8, 181#8, 5#8, 3#8, 35#8, 48#8, 182#8, 0#8, 3#8, 53#8, 5#8, 240#8, 19#8, 5#8, 5#8, 12#8, 147#8, 101#8, 0#8, 0#8, 35#8, 48#8, 181#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece474_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw474_0).val
theorem piece474_0_eq : piece474_0 = raw474_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw474_0
end InitECandidate.Proofs.BackendStages.BytePieces
