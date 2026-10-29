import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw475_0 : List (BitVec 8) := [3#8, 181#8, 140#8, 254#8, 19#8, 21#8, 21#8, 0#8, 179#8, 5#8, 165#8, 1#8, 3#8, 182#8, 5#8, 240#8, 131#8, 54#8, 6#8, 1#8, 19#8, 101#8, 0#8, 0#8, 99#8, 154#8, 166#8, 0#8, 19#8, 101#8, 32#8, 0#8, 35#8, 188#8, 172#8, 246#8, 19#8, 101#8, 128#8, 0#8, 111#8, 128#8, 154#8, 151#8, 19#8, 133#8, 246#8, 255#8, 19#8, 6#8, 6#8, 1#8, 35#8, 48#8, 166#8, 0#8, 19#8, 22#8, 85#8, 0#8, 3#8, 181#8, 5#8, 240#8, 131#8, 53#8, 133#8, 0#8, 51#8, 5#8, 182#8, 0#8, 3#8, 53#8, 5#8, 0#8, 179#8, 134#8, 197#8, 0#8, 131#8, 181#8, 134#8, 0#8, 3#8, 182#8, 6#8, 1#8, 131#8, 182#8, 134#8, 1#8, 103#8, 128#8, 0#8, 0#8]
def piece475_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw475_0).val
theorem piece475_0_eq : piece475_0 = raw475_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw475_0
end InitECandidate.Proofs.BackendStages.BytePieces
