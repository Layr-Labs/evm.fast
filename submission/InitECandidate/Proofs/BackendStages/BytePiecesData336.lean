import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw336_0 : List (BitVec 8) := [19#8, 12#8, 12#8, 255#8, 99#8, 118#8, 156#8, 1#8, 19#8, 101#8, 32#8, 0#8, 111#8, 240#8, 11#8, 132#8, 35#8, 52#8, 28#8, 0#8, 19#8, 107#8, 160#8, 60#8, 35#8, 48#8, 108#8, 1#8, 19#8, 12#8, 140#8, 254#8, 99#8, 118#8, 156#8, 1#8, 19#8, 101#8, 32#8, 0#8, 111#8, 240#8, 75#8, 130#8, 19#8, 107#8, 16#8, 0#8, 35#8, 48#8, 108#8, 1#8, 23#8, 11#8, 0#8, 0#8, 19#8, 11#8, 139#8, 4#8, 35#8, 52#8, 108#8, 1#8, 3#8, 187#8, 140#8, 252#8, 35#8, 56#8, 108#8, 1#8, 51#8, 107#8, 140#8, 1#8, 51#8, 11#8, 155#8, 65#8, 19#8, 91#8, 59#8, 0#8, 35#8, 180#8, 108#8, 253#8, 151#8, 0#8, 0#8, 0#8]
def piece336_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw336_0).val
theorem piece336_0_eq : piece336_0 = raw336_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw336_0
def raw336_1 : List (BitVec 8) := [147#8, 128#8, 192#8, 0#8, 111#8, 240#8, 31#8, 233#8, 3#8, 59#8, 12#8, 1#8, 35#8, 180#8, 108#8, 253#8, 19#8, 12#8, 140#8, 1#8, 51#8, 102#8, 165#8, 0#8, 131#8, 48#8, 140#8, 0#8, 111#8, 0#8, 192#8, 0#8, 131#8, 48#8, 140#8, 0#8, 111#8, 240#8, 139#8, 176#8, 19#8, 101#8, 0#8, 2#8, 99#8, 122#8, 181#8, 0#8, 19#8, 101#8, 208#8, 0#8, 35#8, 188#8, 172#8, 246#8, 19#8, 101#8, 96#8, 0#8, 111#8, 240#8, 11#8, 175#8, 51#8, 101#8, 198#8, 0#8, 19#8, 12#8, 140#8, 254#8, 99#8, 118#8, 156#8, 1#8, 19#8, 101#8, 32#8, 0#8, 111#8, 224#8, 27#8, 250#8, 111#8, 96#8, 76#8, 231#8]
def piece336_1 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw336_1).val
theorem piece336_1_eq : piece336_1 = raw336_1 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw336_1
end InitECandidate.Proofs.BackendStages.BytePieces
