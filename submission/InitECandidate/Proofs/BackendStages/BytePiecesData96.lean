import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw96_0 : List (BitVec 8) := [19#8, 12#8, 12#8, 255#8, 99#8, 118#8, 156#8, 1#8, 19#8, 101#8, 32#8, 0#8, 111#8, 208#8, 79#8, 252#8, 35#8, 52#8, 28#8, 0#8, 19#8, 107#8, 160#8, 2#8, 35#8, 48#8, 108#8, 1#8, 19#8, 12#8, 140#8, 254#8, 99#8, 118#8, 156#8, 1#8, 19#8, 101#8, 32#8, 0#8, 111#8, 208#8, 143#8, 250#8, 19#8, 107#8, 16#8, 0#8, 35#8, 48#8, 108#8, 1#8, 23#8, 11#8, 0#8, 0#8, 19#8, 11#8, 75#8, 4#8, 35#8, 52#8, 108#8, 1#8, 3#8, 187#8, 140#8, 252#8, 35#8, 56#8, 108#8, 1#8, 51#8, 107#8, 140#8, 1#8, 51#8, 11#8, 155#8, 65#8, 19#8, 91#8, 59#8, 0#8, 35#8, 180#8, 108#8, 253#8, 151#8, 0#8, 0#8, 0#8, 147#8, 128#8, 192#8, 0#8, 111#8, 240#8, 223#8, 222#8, 3#8, 59#8, 12#8, 1#8, 35#8, 180#8, 108#8, 253#8, 19#8, 12#8, 140#8, 1#8, 131#8, 48#8, 140#8, 0#8, 111#8, 0#8, 192#8, 0#8, 131#8, 48#8, 140#8, 0#8, 111#8, 208#8, 31#8, 169#8, 51#8, 229#8, 181#8, 0#8, 19#8, 12#8, 12#8, 1#8, 103#8, 128#8, 0#8, 0#8]
def piece96_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw96_0).val
theorem piece96_0_eq : piece96_0 = raw96_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw96_0
end InitECandidate.Proofs.BackendStages.BytePieces
