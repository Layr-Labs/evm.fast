import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody488_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody488_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 176#64)

def optimizedBody488_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody488_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody488_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody488_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody488_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_4 optimizedBody488_5

def optimizedBody488_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody488_3, 488, 2)) (some 74) ([2]) (some (2, optimizedBody488_6, 488, 3))

def optimizedBody488_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody488_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody488_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 176#64)

def optimizedBody488_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2)]

def optimizedBody488_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody488_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody488_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_13 optimizedBody488_5

def optimizedBody488_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody488_12, 488, 4)) (some 78) ([2, 4]) (some (2, optimizedBody488_14, 488, 5))

def optimizedBody488_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody488_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody488_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_16 optimizedBody488_17

def optimizedBody488_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_8 optimizedBody488_18

def optimizedBody488_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_15 optimizedBody488_19

def optimizedBody488_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_11 optimizedBody488_20

def optimizedBody488_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_10 optimizedBody488_21

def optimizedBody488_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_9 optimizedBody488_22

def optimizedBody488_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_8 optimizedBody488_23

def optimizedBody488_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_7 optimizedBody488_24

def optimizedBody488_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_2 optimizedBody488_25

def optimizedBody488_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_1 optimizedBody488_26

def optimizedBody488_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_0 optimizedBody488_27

def optimized488 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(488, 1, optimizedBody488_28)
end InitECandidate.Proofs.StackAnalysis
