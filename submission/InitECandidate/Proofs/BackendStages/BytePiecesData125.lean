import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw125_0 : List (BitVec 8) := [131#8, 53#8, 133#8, 0#8, 147#8, 149#8, 5#8, 2#8, 3#8, 54#8, 5#8, 0#8, 179#8, 226#8, 197#8, 0#8, 131#8, 53#8, 133#8, 1#8, 147#8, 149#8, 5#8, 2#8, 3#8, 54#8, 5#8, 1#8, 179#8, 229#8, 197#8, 0#8, 3#8, 54#8, 133#8, 2#8, 19#8, 22#8, 6#8, 2#8, 131#8, 54#8, 5#8, 2#8, 51#8, 102#8, 214#8, 0#8, 131#8, 54#8, 133#8, 3#8, 147#8, 150#8, 6#8, 2#8, 3#8, 53#8, 5#8, 3#8, 179#8, 230#8, 166#8, 0#8, 51#8, 229#8, 82#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece125_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw125_0).val
theorem piece125_0_eq : piece125_0 = raw125_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw125_0
end InitECandidate.Proofs.BackendStages.BytePieces
