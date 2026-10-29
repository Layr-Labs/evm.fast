import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw103_0 : List (BitVec 8) := [19#8, 99#8, 0#8, 0#8, 99#8, 148#8, 98#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 16#8, 0#8, 99#8, 150#8, 162#8, 0#8, 51#8, 229#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 32#8, 0#8, 99#8, 150#8, 162#8, 0#8, 51#8, 101#8, 198#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 48#8, 0#8, 99#8, 150#8, 162#8, 0#8, 51#8, 229#8, 214#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece103_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw103_0).val
theorem piece103_0_eq : piece103_0 = raw103_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw103_0
end InitECandidate.Proofs.BackendStages.BytePieces
