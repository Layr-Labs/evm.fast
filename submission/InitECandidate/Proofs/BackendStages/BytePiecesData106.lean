import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw106_0 : List (BitVec 8) := [179#8, 100#8, 165#8, 0#8, 99#8, 140#8, 134#8, 0#8, 99#8, 246#8, 134#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 99#8, 12#8, 118#8, 0#8, 99#8, 118#8, 118#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 99#8, 140#8, 101#8, 0#8, 99#8, 246#8, 101#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 99#8, 246#8, 84#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece106_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw106_0).val
theorem piece106_0_eq : piece106_0 = raw106_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw106_0
end InitECandidate.Proofs.BackendStages.BytePieces
