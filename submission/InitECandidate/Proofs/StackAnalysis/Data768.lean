import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody768_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody768_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 144#64)

def optimizedBody768_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody768_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody768_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody768_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody768_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody768_4 optimizedBody768_5

def optimizedBody768_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody768_3, 768, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody768_6, 768, 3))

def optimizedBody768_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody768_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody768_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody768_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody768_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody768_10 optimizedBody768_11

def optimizedBody768_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody768_9 optimizedBody768_12

def optimizedBody768_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody768_8 optimizedBody768_13

def optimizedBody768_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody768_7 optimizedBody768_14

def optimizedBody768_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody768_2 optimizedBody768_15

def optimizedBody768_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody768_1 optimizedBody768_16

def optimizedBody768_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody768_0 optimizedBody768_17

def optimized768 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(768, 3, optimizedBody768_18)
end InitECandidate.Proofs.StackAnalysis
