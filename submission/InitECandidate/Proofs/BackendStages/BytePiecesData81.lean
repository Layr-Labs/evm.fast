import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw81_0 : List (BitVec 8) := [131#8, 69#8, 5#8, 0#8, 19#8, 6#8, 21#8, 0#8, 3#8, 70#8, 6#8, 0#8, 147#8, 6#8, 37#8, 0#8, 131#8, 198#8, 6#8, 0#8, 19#8, 5#8, 53#8, 0#8, 3#8, 69#8, 5#8, 0#8, 19#8, 21#8, 133#8, 1#8, 147#8, 150#8, 6#8, 1#8, 51#8, 101#8, 213#8, 0#8, 19#8, 22#8, 134#8, 0#8, 51#8, 101#8, 197#8, 0#8, 51#8, 101#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece81_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw81_0).val
theorem piece81_0_eq : piece81_0 = raw81_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw81_0
end InitECandidate.Proofs.BackendStages.BytePieces
