import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody730_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody730_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 96#64)

def optimizedBody730_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody730_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody730_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody730_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody730_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody730_4 optimizedBody730_5

def optimizedBody730_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody730_3, 730, 2)) (some 78) ([2, 4]) (some (2, optimizedBody730_6, 730, 3))

def optimizedBody730_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody730_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody730_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody730_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody730_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody730_10 optimizedBody730_11

def optimizedBody730_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody730_9 optimizedBody730_12

def optimizedBody730_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody730_8 optimizedBody730_13

def optimizedBody730_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody730_7 optimizedBody730_14

def optimizedBody730_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody730_2 optimizedBody730_15

def optimizedBody730_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody730_1 optimizedBody730_16

def optimizedBody730_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody730_0 optimizedBody730_17

def optimized730 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(730, 2, optimizedBody730_18)
end InitECandidate.Proofs.StackAnalysis
