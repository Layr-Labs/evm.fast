import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw492_0 : List (BitVec 8) := [3#8, 181#8, 140#8, 254#8, 19#8, 21#8, 21#8, 0#8, 51#8, 5#8, 165#8, 1#8, 3#8, 53#8, 5#8, 240#8, 3#8, 53#8, 5#8, 7#8, 3#8, 53#8, 5#8, 9#8, 147#8, 101#8, 0#8, 0#8, 99#8, 10#8, 181#8, 0#8, 19#8, 101#8, 128#8, 0#8, 35#8, 188#8, 172#8, 246#8, 19#8, 101#8, 128#8, 0#8, 111#8, 96#8, 26#8, 169#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece492_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw492_0).val
theorem piece492_0_eq : piece492_0 = raw492_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw492_0
end InitECandidate.Proofs.BackendStages.BytePieces
