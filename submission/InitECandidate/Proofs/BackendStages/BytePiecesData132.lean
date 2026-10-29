import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw132_0 : List (BitVec 8) := [147#8, 210#8, 246#8, 3#8, 19#8, 99#8, 16#8, 0#8, 99#8, 148#8, 98#8, 0#8, 111#8, 208#8, 143#8, 189#8, 103#8, 128#8, 0#8, 0#8]
def piece132_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw132_0).val
theorem piece132_0_eq : piece132_0 = raw132_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw132_0
end InitECandidate.Proofs.BackendStages.BytePieces
