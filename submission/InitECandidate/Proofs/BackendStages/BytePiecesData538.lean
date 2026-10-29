import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw538_0 : List (BitVec 8) := [3#8, 182#8, 140#8, 254#8, 19#8, 22#8, 22#8, 0#8, 51#8, 6#8, 166#8, 1#8, 3#8, 54#8, 6#8, 240#8, 131#8, 54#8, 6#8, 1#8, 3#8, 54#8, 134#8, 0#8, 147#8, 134#8, 246#8, 255#8, 51#8, 133#8, 166#8, 64#8, 19#8, 21#8, 85#8, 0#8, 179#8, 2#8, 197#8, 0#8, 51#8, 133#8, 182#8, 64#8, 19#8, 21#8, 85#8, 0#8, 179#8, 13#8, 197#8, 0#8, 3#8, 181#8, 2#8, 0#8, 131#8, 181#8, 130#8, 0#8, 3#8, 182#8, 2#8, 1#8, 131#8, 182#8, 130#8, 1#8, 131#8, 180#8, 13#8, 0#8, 3#8, 180#8, 141#8, 0#8, 131#8, 179#8, 13#8, 1#8, 3#8, 179#8, 141#8, 1#8, 35#8, 176#8, 146#8, 0#8, 35#8, 180#8, 130#8, 0#8, 35#8, 184#8, 114#8, 0#8, 35#8, 188#8, 98#8, 0#8, 35#8, 176#8, 173#8, 0#8, 35#8, 180#8, 189#8, 0#8, 35#8, 184#8, 205#8, 0#8, 35#8, 188#8, 221#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece538_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw538_0).val
theorem piece538_0_eq : piece538_0 = raw538_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw538_0
end InitECandidate.Proofs.BackendStages.BytePieces
