import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw718_0 : List (BitVec 8) := [147#8, 147#8, 245#8, 3#8, 19#8, 85#8, 21#8, 0#8, 51#8, 229#8, 163#8, 0#8, 147#8, 19#8, 246#8, 3#8, 147#8, 213#8, 21#8, 0#8, 179#8, 229#8, 179#8, 0#8, 147#8, 147#8, 246#8, 3#8, 19#8, 86#8, 22#8, 0#8, 51#8, 230#8, 195#8, 0#8, 147#8, 147#8, 242#8, 3#8, 147#8, 214#8, 22#8, 0#8, 179#8, 230#8, 211#8, 0#8, 147#8, 19#8, 243#8, 3#8, 147#8, 210#8, 18#8, 0#8, 179#8, 226#8, 83#8, 0#8, 19#8, 83#8, 19#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece718_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw718_0).val
theorem piece718_0_eq : piece718_0 = raw718_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw718_0
end InitECandidate.Proofs.BackendStages.BytePieces
