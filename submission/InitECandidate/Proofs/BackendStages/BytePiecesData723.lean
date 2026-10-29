import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw723_0 : List (BitVec 8) := [19#8, 12#8, 12#8, 255#8, 99#8, 118#8, 156#8, 1#8, 19#8, 101#8, 32#8, 0#8, 111#8, 208#8, 212#8, 235#8, 35#8, 52#8, 28#8, 0#8, 55#8, 251#8, 255#8, 255#8, 19#8, 75#8, 219#8, 202#8, 35#8, 48#8, 108#8, 1#8, 19#8, 12#8, 140#8, 254#8, 99#8, 118#8, 156#8, 1#8, 19#8, 101#8, 32#8, 0#8, 111#8, 208#8, 212#8, 233#8, 19#8, 107#8, 16#8, 0#8, 35#8, 48#8, 108#8, 1#8, 23#8, 11#8, 0#8, 0#8, 19#8, 11#8, 139#8, 4#8, 35#8, 52#8, 108#8, 1#8, 3#8, 187#8, 140#8, 252#8, 35#8, 56#8, 108#8, 1#8, 51#8, 107#8, 140#8, 1#8, 51#8, 11#8, 155#8, 65#8, 19#8, 91#8, 59#8, 0#8, 35#8, 180#8, 108#8, 253#8, 151#8, 0#8, 0#8, 0#8, 147#8, 128#8, 192#8, 0#8, 111#8, 224#8, 143#8, 228#8, 3#8, 59#8, 12#8, 1#8, 35#8, 180#8, 108#8, 253#8, 19#8, 12#8, 140#8, 1#8, 179#8, 96#8, 165#8, 0#8, 131#8, 53#8, 140#8, 0#8, 111#8, 0#8, 192#8, 0#8, 131#8, 53#8, 140#8, 0#8, 111#8, 224#8, 4#8, 152#8, 19#8, 245#8, 16#8, 0#8, 19#8, 12#8, 12#8, 1#8, 103#8, 128#8, 5#8, 0#8]
def piece723_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw723_0).val
theorem piece723_0_eq : piece723_0 = raw723_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw723_0
end InitECandidate.Proofs.BackendStages.BytePieces
