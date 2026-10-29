import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw820_0 : List (BitVec 8) := [19#8, 102#8, 0#8, 8#8, 179#8, 101#8, 165#8, 0#8, 99#8, 118#8, 182#8, 0#8, 19#8, 101#8, 192#8, 32#8, 103#8, 128#8, 0#8, 0#8, 19#8, 133#8, 5#8, 8#8, 19#8, 5#8, 245#8, 255#8, 19#8, 21#8, 53#8, 0#8, 131#8, 181#8, 140#8, 254#8, 147#8, 149#8, 21#8, 0#8, 179#8, 133#8, 165#8, 1#8, 131#8, 181#8, 5#8, 231#8, 51#8, 5#8, 181#8, 0#8, 3#8, 53#8, 5#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece820_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw820_0).val
theorem piece820_0_eq : piece820_0 = raw820_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw820_0
end InitECandidate.Proofs.BackendStages.BytePieces
