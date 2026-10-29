import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw541_0 : List (BitVec 8) := [147#8, 101#8, 160#8, 5#8, 99#8, 246#8, 165#8, 0#8, 19#8, 102#8, 0#8, 0#8, 111#8, 0#8, 128#8, 0#8, 19#8, 102#8, 16#8, 0#8, 147#8, 101#8, 0#8, 8#8, 99#8, 118#8, 181#8, 0#8, 147#8, 101#8, 0#8, 0#8, 111#8, 0#8, 128#8, 0#8, 147#8, 101#8, 16#8, 0#8, 147#8, 102#8, 0#8, 0#8, 179#8, 229#8, 197#8, 0#8, 99#8, 136#8, 182#8, 0#8, 19#8, 5#8, 21#8, 9#8, 19#8, 117#8, 245#8, 15#8, 103#8, 128#8, 0#8, 0#8, 147#8, 96#8, 160#8, 0#8, 35#8, 188#8, 28#8, 246#8, 19#8, 101#8, 128#8, 0#8, 111#8, 224#8, 9#8, 247#8]
def piece541_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw541_0).val
theorem piece541_0_eq : piece541_0 = raw541_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw541_0
end InitECandidate.Proofs.BackendStages.BytePieces
