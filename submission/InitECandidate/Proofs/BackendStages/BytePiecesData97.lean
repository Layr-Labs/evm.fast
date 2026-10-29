import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw97_0 : List (BitVec 8) := [147#8, 101#8, 0#8, 0#8, 19#8, 102#8, 16#8, 0#8, 179#8, 230#8, 181#8, 0#8, 51#8, 22#8, 214#8, 0#8, 99#8, 118#8, 166#8, 0#8, 147#8, 133#8, 21#8, 0#8, 111#8, 240#8, 223#8, 254#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 95#8, 254#8, 51#8, 229#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece97_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw97_0).val
theorem piece97_0_eq : piece97_0 = raw97_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw97_0
end InitECandidate.Proofs.BackendStages.BytePieces
