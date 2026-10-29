import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw747_0 : List (BitVec 8) := [19#8, 12#8, 12#8, 255#8, 99#8, 118#8, 156#8, 1#8, 19#8, 101#8, 32#8, 0#8, 111#8, 144#8, 148#8, 212#8, 147#8, 101#8, 0#8, 18#8, 35#8, 52#8, 28#8, 0#8, 55#8, 251#8, 255#8, 255#8, 19#8, 75#8, 187#8, 206#8, 35#8, 48#8, 108#8, 1#8, 19#8, 12#8, 140#8, 254#8, 99#8, 118#8, 156#8, 1#8, 19#8, 101#8, 32#8, 0#8, 111#8, 144#8, 84#8, 210#8, 19#8, 107#8, 16#8, 0#8, 35#8, 48#8, 108#8, 1#8, 23#8, 11#8, 0#8, 0#8, 19#8, 11#8, 75#8, 4#8, 35#8, 52#8, 108#8, 1#8, 3#8, 187#8, 140#8, 252#8, 35#8, 56#8, 108#8, 1#8, 51#8, 107#8, 140#8, 1#8, 51#8, 11#8, 155#8, 65#8, 19#8, 91#8, 59#8, 0#8, 35#8, 180#8, 108#8, 253#8, 151#8, 0#8, 0#8, 0#8, 147#8, 128#8, 192#8, 0#8, 111#8, 176#8, 68#8, 239#8, 3#8, 59#8, 12#8, 1#8, 35#8, 180#8, 108#8, 253#8, 19#8, 12#8, 140#8, 1#8, 131#8, 48#8, 140#8, 0#8, 111#8, 0#8, 192#8, 0#8, 131#8, 48#8, 140#8, 0#8, 111#8, 160#8, 196#8, 128#8, 19#8, 101#8, 0#8, 0#8, 19#8, 12#8, 12#8, 1#8, 103#8, 128#8, 0#8, 0#8]
def piece747_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw747_0).val
theorem piece747_0_eq : piece747_0 = raw747_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw747_0
end InitECandidate.Proofs.BackendStages.BytePieces
