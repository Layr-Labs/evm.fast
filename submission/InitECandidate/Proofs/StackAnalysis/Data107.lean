import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody107_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 10), (4, 12), (6, 14), (8, 16), (10, 2), (12, 4), (14, 6), (16, 8)]

def optimizedBody107_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 106) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody107_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody107_0 optimizedBody107_1

def optimized107 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(107, 9, optimizedBody107_2)
end InitECandidate.Proofs.StackAnalysis
