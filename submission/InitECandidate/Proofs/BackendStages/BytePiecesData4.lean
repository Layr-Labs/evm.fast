import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw4_0 : List (BitVec 8) := [35#8, 184#8, 172#8, 252#8, 179#8, 101#8, 173#8, 1#8, 35#8, 188#8, 188#8, 254#8, 35#8, 188#8, 188#8, 252#8, 35#8, 184#8, 188#8, 254#8, 179#8, 127#8, 165#8, 0#8, 99#8, 134#8, 15#8, 0#8, 19#8, 101#8, 16#8, 0#8, 111#8, 240#8, 223#8, 204#8, 103#8, 128#8, 0#8, 0#8]
def piece4_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw4_0).val
theorem piece4_0_eq : piece4_0 = raw4_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw4_0
end InitECandidate.Proofs.BackendStages.BytePieces
