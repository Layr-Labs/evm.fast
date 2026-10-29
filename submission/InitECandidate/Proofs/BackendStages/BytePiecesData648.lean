import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw648_0 : List (BitVec 8) := [147#8, 101#8, 16#8, 0#8, 35#8, 48#8, 181#8, 0#8, 147#8, 101#8, 0#8, 0#8, 35#8, 52#8, 181#8, 0#8, 147#8, 101#8, 0#8, 0#8, 35#8, 56#8, 181#8, 0#8, 147#8, 101#8, 0#8, 0#8, 35#8, 60#8, 181#8, 0#8, 147#8, 5#8, 5#8, 2#8, 19#8, 102#8, 16#8, 0#8, 35#8, 176#8, 197#8, 0#8, 19#8, 102#8, 0#8, 0#8, 35#8, 180#8, 197#8, 0#8, 19#8, 102#8, 0#8, 0#8, 35#8, 184#8, 197#8, 0#8, 19#8, 102#8, 0#8, 0#8, 35#8, 188#8, 197#8, 0#8, 19#8, 5#8, 5#8, 4#8, 147#8, 101#8, 0#8, 0#8, 35#8, 48#8, 181#8, 0#8, 147#8, 101#8, 0#8, 0#8, 35#8, 52#8, 181#8, 0#8, 147#8, 101#8, 0#8, 0#8, 35#8, 56#8, 181#8, 0#8, 147#8, 101#8, 0#8, 0#8, 35#8, 60#8, 181#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece648_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw648_0).val
theorem piece648_0_eq : piece648_0 = raw648_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw648_0
end InitECandidate.Proofs.BackendStages.BytePieces
