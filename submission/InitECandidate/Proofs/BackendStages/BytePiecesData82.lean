import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw82_0 : List (BitVec 8) := [131#8, 70#8, 5#8, 0#8, 147#8, 5#8, 21#8, 0#8, 131#8, 197#8, 5#8, 0#8, 19#8, 6#8, 37#8, 0#8, 3#8, 70#8, 6#8, 0#8, 147#8, 2#8, 53#8, 0#8, 131#8, 194#8, 2#8, 0#8, 19#8, 3#8, 69#8, 0#8, 3#8, 68#8, 3#8, 0#8, 19#8, 3#8, 85#8, 0#8, 3#8, 67#8, 3#8, 0#8, 147#8, 3#8, 101#8, 0#8, 131#8, 195#8, 3#8, 0#8, 19#8, 5#8, 117#8, 0#8, 3#8, 69#8, 5#8, 0#8, 19#8, 21#8, 133#8, 1#8, 147#8, 147#8, 3#8, 1#8, 51#8, 101#8, 117#8, 0#8, 19#8, 19#8, 131#8, 0#8, 51#8, 101#8, 101#8, 0#8, 51#8, 101#8, 133#8, 0#8, 19#8, 21#8, 5#8, 2#8, 147#8, 146#8, 130#8, 1#8, 51#8, 101#8, 85#8, 0#8, 19#8, 22#8, 6#8, 1#8]
def piece82_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw82_0).val
theorem piece82_0_eq : piece82_0 = raw82_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw82_0
def raw82_1 : List (BitVec 8) := [51#8, 101#8, 197#8, 0#8, 147#8, 149#8, 133#8, 0#8, 51#8, 101#8, 181#8, 0#8, 51#8, 101#8, 213#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece82_1 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw82_1).val
theorem piece82_1_eq : piece82_1 = raw82_1 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw82_1
end InitECandidate.Proofs.BackendStages.BytePieces
