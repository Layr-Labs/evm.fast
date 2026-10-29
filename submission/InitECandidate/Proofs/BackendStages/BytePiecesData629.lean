import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw629_0 : List (BitVec 8) := [179#8, 101#8, 165#8, 0#8, 19#8, 101#8, 0#8, 1#8, 99#8, 248#8, 165#8, 0#8, 55#8, 117#8, 93#8, 175#8, 19#8, 69#8, 101#8, 190#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 2#8, 99#8, 248#8, 165#8, 0#8, 55#8, 213#8, 77#8, 92#8, 19#8, 5#8, 69#8, 18#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 3#8, 99#8, 248#8, 165#8, 0#8, 55#8, 197#8, 143#8, 146#8, 19#8, 69#8, 53#8, 239#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 4#8, 99#8, 248#8, 165#8, 0#8, 55#8, 117#8, 109#8, 122#8, 19#8, 5#8, 149#8, 110#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece629_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw629_0).val
theorem piece629_0_eq : piece629_0 = raw629_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw629_0
end InitECandidate.Proofs.BackendStages.BytePieces
