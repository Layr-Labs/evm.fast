import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw219_0 : List (BitVec 8) := [19#8, 100#8, 240#8, 255#8, 147#8, 99#8, 224#8, 255#8, 183#8, 175#8, 72#8, 175#8, 147#8, 143#8, 191#8, 3#8, 55#8, 35#8, 81#8, 69#8, 19#8, 3#8, 147#8, 49#8, 19#8, 19#8, 3#8, 2#8, 51#8, 67#8, 243#8, 1#8, 183#8, 79#8, 54#8, 208#8, 147#8, 143#8, 31#8, 20#8, 183#8, 162#8, 45#8, 64#8, 147#8, 130#8, 50#8, 23#8, 147#8, 146#8, 2#8, 2#8, 179#8, 194#8, 242#8, 1#8, 111#8, 224#8, 159#8, 152#8]
def piece219_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw219_0).val
theorem piece219_0_eq : piece219_0 = raw219_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw219_0
end InitECandidate.Proofs.BackendStages.BytePieces
