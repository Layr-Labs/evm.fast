import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw214_0 : List (BitVec 8) := [183#8, 15#8, 0#8, 0#8, 147#8, 207#8, 255#8, 255#8, 55#8, 4#8, 0#8, 192#8, 19#8, 4#8, 4#8, 0#8, 19#8, 20#8, 4#8, 2#8, 51#8, 68#8, 244#8, 1#8, 147#8, 99#8, 240#8, 255#8, 19#8, 99#8, 240#8, 255#8, 183#8, 2#8, 0#8, 64#8, 147#8, 194#8, 194#8, 240#8, 111#8, 224#8, 31#8, 166#8]
def piece214_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw214_0).val
theorem piece214_0_eq : piece214_0 = raw214_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw214_0
end InitECandidate.Proofs.BackendStages.BytePieces
