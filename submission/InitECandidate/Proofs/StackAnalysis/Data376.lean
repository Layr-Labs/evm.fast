import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody376_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (2, 2), (0, 0)]

def optimizedBody376_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody376_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody376_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody376_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 2, 4, 6, 8]) (none)

def optimizedBody376_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody376_3 optimizedBody376_4

def optimizedBody376_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody376_2 optimizedBody376_5

def optimizedBody376_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody376_1 optimizedBody376_6

def optimizedBody376_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody376_0 optimizedBody376_7

def optimized376 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(376, 3, optimizedBody376_8)
end InitECandidate.Proofs.StackAnalysis
