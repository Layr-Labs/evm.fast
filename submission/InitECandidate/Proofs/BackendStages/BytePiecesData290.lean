import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw290_0 : List (BitVec 8) := [147#8, 18#8, 22#8, 0#8, 19#8, 99#8, 0#8, 0#8, 147#8, 243#8, 21#8, 0#8, 19#8, 100#8, 0#8, 0#8, 99#8, 128#8, 131#8, 2#8, 3#8, 67#8, 5#8, 0#8, 147#8, 131#8, 18#8, 0#8, 147#8, 147#8, 67#8, 0#8, 51#8, 3#8, 115#8, 0#8, 35#8, 128#8, 102#8, 0#8, 19#8, 99#8, 16#8, 0#8, 111#8, 0#8, 192#8, 0#8, 147#8, 147#8, 66#8, 0#8, 35#8, 128#8, 118#8, 0#8, 147#8, 100#8, 16#8, 0#8, 99#8, 120#8, 179#8, 2#8, 179#8, 3#8, 163#8, 0#8, 3#8, 196#8, 3#8, 0#8, 147#8, 131#8, 19#8, 0#8, 131#8, 195#8, 3#8, 0#8, 179#8, 141#8, 212#8, 0#8, 19#8, 20#8, 68#8, 0#8, 179#8, 227#8, 131#8, 0#8, 35#8, 128#8, 125#8, 0#8, 19#8, 3#8, 35#8, 0#8, 147#8, 132#8, 20#8, 0#8, 111#8, 240#8, 95#8, 253#8, 111#8, 0#8, 128#8, 0#8, 111#8, 240#8, 223#8, 252#8, 51#8, 229#8, 148#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece290_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw290_0).val
theorem piece290_0_eq : piece290_0 = raw290_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw290_0
end InitECandidate.Proofs.BackendStages.BytePieces
