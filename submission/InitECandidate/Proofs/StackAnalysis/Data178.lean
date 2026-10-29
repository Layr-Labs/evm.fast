import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody178_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 4), (2, 2), (0, 0)]

def optimizedBody178_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 192#64)

def optimizedBody178_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody178_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 174) ([0, 2, 4, 6]) (none)

def optimizedBody178_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody178_2 optimizedBody178_3

def optimizedBody178_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody178_1 optimizedBody178_4

def optimizedBody178_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody178_0 optimizedBody178_5

def optimized178 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(178, 3, optimizedBody178_6)
end InitECandidate.Proofs.StackAnalysis
