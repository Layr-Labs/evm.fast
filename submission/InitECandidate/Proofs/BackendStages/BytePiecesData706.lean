import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw706_0 : List (BitVec 8) := [51#8, 195#8, 110#8, 0#8, 179#8, 66#8, 94#8, 0#8, 179#8, 98#8, 83#8, 0#8, 179#8, 198#8, 221#8, 0#8, 179#8, 230#8, 210#8, 0#8, 51#8, 198#8, 196#8, 0#8, 51#8, 230#8, 198#8, 0#8, 179#8, 69#8, 180#8, 0#8, 179#8, 101#8, 182#8, 0#8, 51#8, 197#8, 163#8, 0#8, 51#8, 229#8, 165#8, 0#8, 147#8, 101#8, 0#8, 0#8, 99#8, 22#8, 181#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece706_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw706_0).val
theorem piece706_0_eq : piece706_0 = raw706_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw706_0
end InitECandidate.Proofs.BackendStages.BytePieces
