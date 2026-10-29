import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw486_0 : List (BitVec 8) := [179#8, 98#8, 165#8, 0#8, 51#8, 229#8, 198#8, 0#8, 51#8, 101#8, 181#8, 0#8, 147#8, 101#8, 0#8, 0#8, 99#8, 6#8, 181#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 3#8, 181#8, 140#8, 254#8, 19#8, 21#8, 21#8, 0#8, 51#8, 5#8, 165#8, 1#8, 131#8, 53#8, 5#8, 240#8, 3#8, 181#8, 133#8, 3#8, 99#8, 230#8, 162#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 3#8, 181#8, 5#8, 5#8, 147#8, 213#8, 98#8, 0#8, 147#8, 149#8, 53#8, 0#8, 51#8, 133#8, 165#8, 0#8, 3#8, 53#8, 5#8, 0#8, 147#8, 246#8, 242#8, 3#8, 51#8, 85#8, 213#8, 0#8, 19#8, 117#8, 21#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece486_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw486_0).val
theorem piece486_0_eq : piece486_0 = raw486_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw486_0
end InitECandidate.Proofs.BackendStages.BytePieces
