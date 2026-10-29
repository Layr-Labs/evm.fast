import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw126_0 : List (BitVec 8) := [51#8, 102#8, 165#8, 0#8, 147#8, 102#8, 0#8, 0#8, 51#8, 229#8, 181#8, 0#8, 99#8, 242#8, 166#8, 2#8, 147#8, 5#8, 245#8, 255#8, 147#8, 150#8, 53#8, 0#8, 179#8, 134#8, 198#8, 0#8, 131#8, 182#8, 6#8, 0#8, 147#8, 98#8, 0#8, 0#8, 99#8, 132#8, 86#8, 0#8, 103#8, 128#8, 0#8, 0#8, 111#8, 240#8, 159#8, 253#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 31#8, 253#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece126_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw126_0).val
theorem piece126_0_eq : piece126_0 = raw126_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw126_0
end InitECandidate.Proofs.BackendStages.BytePieces
