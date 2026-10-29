import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody99_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody99_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody99_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody99_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody99_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody99_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody99_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody99_4 optimizedBody99_5

def optimizedBody99_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody99_3 optimizedBody99_6

def optimizedBody99_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody99_2 optimizedBody99_7

def optimizedBody99_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody99_1 optimizedBody99_8

def optimizedBody99_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody99_0 optimizedBody99_9

def optimized99 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(99, 2, optimizedBody99_10)
end InitECandidate.Proofs.StackAnalysis
