import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw85_0 : List (BitVec 8) := [147#8, 117#8, 117#8, 0#8, 19#8, 102#8, 0#8, 0#8, 99#8, 150#8, 197#8, 0#8, 3#8, 53#8, 5#8, 0#8, 111#8, 240#8, 159#8, 245#8, 131#8, 70#8, 5#8, 0#8, 147#8, 5#8, 21#8, 0#8, 131#8, 197#8, 5#8, 0#8, 19#8, 6#8, 37#8, 0#8, 3#8, 70#8, 6#8, 0#8, 147#8, 2#8, 53#8, 0#8, 131#8, 194#8, 2#8, 0#8, 19#8, 3#8, 69#8, 0#8, 3#8, 68#8, 3#8, 0#8, 19#8, 3#8, 85#8, 0#8, 131#8, 67#8, 3#8, 0#8, 19#8, 3#8, 101#8, 0#8, 3#8, 67#8, 3#8, 0#8, 19#8, 5#8, 117#8, 0#8, 3#8, 69#8, 5#8, 0#8, 19#8, 20#8, 132#8, 1#8, 147#8, 147#8, 3#8, 1#8, 179#8, 99#8, 116#8, 0#8, 19#8, 19#8, 131#8, 0#8, 51#8, 227#8, 99#8, 0#8, 51#8, 101#8, 163#8, 0#8, 19#8, 22#8, 134#8, 0#8, 51#8, 230#8, 194#8, 0#8, 147#8, 149#8, 5#8, 1#8, 179#8, 101#8, 182#8, 0#8, 19#8, 150#8, 134#8, 1#8, 179#8, 229#8, 197#8, 0#8, 147#8, 149#8, 5#8, 2#8, 51#8, 101#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece85_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw85_0).val
theorem piece85_0_eq : piece85_0 = raw85_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw85_0
end InitECandidate.Proofs.BackendStages.BytePieces
