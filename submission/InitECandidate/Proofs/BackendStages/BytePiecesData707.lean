import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw707_0 : List (BitVec 8) := [51#8, 111#8, 165#8, 0#8, 99#8, 12#8, 211#8, 1#8, 99#8, 118#8, 211#8, 1#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 99#8, 140#8, 194#8, 1#8, 99#8, 246#8, 194#8, 1#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 99#8, 140#8, 182#8, 1#8, 99#8, 246#8, 182#8, 1#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 99#8, 12#8, 150#8, 0#8, 99#8, 118#8, 150#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 99#8, 140#8, 133#8, 0#8, 99#8, 246#8, 133#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8, 99#8, 118#8, 127#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece707_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw707_0).val
theorem piece707_0_eq : piece707_0 = raw707_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw707_0
end InitECandidate.Proofs.BackendStages.BytePieces
