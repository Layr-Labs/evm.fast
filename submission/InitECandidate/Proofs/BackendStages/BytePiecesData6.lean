import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw6_0 : List (BitVec 8) := [131#8, 187#8, 140#8, 250#8, 179#8, 139#8, 171#8, 0#8, 147#8, 155#8, 59#8, 0#8, 3#8, 181#8, 11#8, 0#8, 147#8, 139#8, 139#8, 0#8, 147#8, 111#8, 0#8, 0#8, 99#8, 68#8, 245#8, 1#8, 111#8, 0#8, 0#8, 4#8, 147#8, 111#8, 16#8, 0#8, 99#8, 20#8, 245#8, 1#8, 111#8, 0#8, 128#8, 2#8, 3#8, 187#8, 11#8, 0#8, 147#8, 139#8, 139#8, 0#8, 147#8, 127#8, 21#8, 0#8, 99#8, 132#8, 15#8, 0#8, 51#8, 11#8, 203#8, 0#8, 19#8, 85#8, 21#8, 0#8, 35#8, 176#8, 101#8, 1#8, 147#8, 133#8, 133#8, 0#8, 111#8, 240#8, 95#8, 253#8, 3#8, 181#8, 11#8, 0#8, 147#8, 139#8, 139#8, 0#8, 111#8, 240#8, 223#8, 251#8, 147#8, 111#8, 16#8, 0#8, 99#8, 20#8, 245#8, 1#8, 111#8, 0#8, 128#8, 2#8, 3#8, 187#8, 11#8, 0#8, 147#8, 139#8, 139#8, 0#8, 147#8, 127#8, 21#8, 0#8, 99#8, 132#8, 15#8, 0#8, 51#8, 11#8, 203#8, 0#8, 19#8, 85#8, 21#8, 0#8, 35#8, 176#8, 101#8, 1#8, 147#8, 133#8, 133#8, 0#8, 111#8, 240#8, 95#8, 253#8, 51#8, 107#8, 165#8, 0#8, 179#8, 107#8, 165#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece6_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw6_0).val
theorem piece6_0_eq : piece6_0 = raw6_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw6_0
end InitECandidate.Proofs.BackendStages.BytePieces
