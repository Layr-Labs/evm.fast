import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody109_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 10), (4, 12), (6, 14), (8, 16), (10, 2), (12, 4), (14, 6), (16, 8)]

def optimizedBody109_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 108) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody109_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody109_0 optimizedBody109_1

def optimized109 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(109, 9, optimizedBody109_2)
end InitECandidate.Proofs.StackAnalysis
