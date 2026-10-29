import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw470_0 : List (BitVec 8) := [131#8, 181#8, 140#8, 254#8, 147#8, 149#8, 21#8, 0#8, 179#8, 133#8, 165#8, 1#8, 131#8, 182#8, 5#8, 240#8, 131#8, 178#8, 6#8, 4#8, 51#8, 102#8, 165#8, 0#8, 99#8, 250#8, 194#8, 0#8, 19#8, 101#8, 64#8, 0#8, 35#8, 188#8, 172#8, 246#8, 19#8, 101#8, 128#8, 0#8, 111#8, 128#8, 90#8, 200#8, 147#8, 134#8, 6#8, 4#8, 51#8, 133#8, 194#8, 64#8, 35#8, 176#8, 166#8, 0#8, 3#8, 181#8, 5#8, 240#8, 147#8, 5#8, 133#8, 11#8, 3#8, 53#8, 133#8, 11#8, 51#8, 5#8, 166#8, 0#8, 35#8, 176#8, 165#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece470_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw470_0).val
theorem piece470_0_eq : piece470_0 = raw470_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw470_0
end InitECandidate.Proofs.BackendStages.BytePieces
