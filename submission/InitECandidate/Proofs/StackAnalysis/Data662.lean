import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody662_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody662_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 493319470278259999#64)

def optimizedBody662_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 5164255478447964150#64)

def optimizedBody662_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 13107472804851548667#64)

def optimizedBody662_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 17522657719365597833#64)

def optimizedBody662_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody662_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 661) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody662_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody662_5 optimizedBody662_6

def optimizedBody662_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody662_4 optimizedBody662_7

def optimizedBody662_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody662_3 optimizedBody662_8

def optimizedBody662_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody662_2 optimizedBody662_9

def optimizedBody662_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody662_1 optimizedBody662_10

def optimizedBody662_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody662_0 optimizedBody662_11

def optimized662 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(662, 5, optimizedBody662_12)
end InitECandidate.Proofs.StackAnalysis
