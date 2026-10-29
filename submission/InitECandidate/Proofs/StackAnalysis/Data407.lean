import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody407_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody407_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody407_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody407_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody407_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_2 optimizedBody407_3

def optimizedBody407_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody407_1, 407, 2)) (some 406) ([2]) (some (2, optimizedBody407_4, 407, 3))

def optimizedBody407_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody407_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody407_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody407_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody407_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody407_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody407_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_11 optimizedBody407_3

def optimizedBody407_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody407_10, 407, 4)) (some 394) ([]) (some (2, optimizedBody407_12, 407, 5))

def optimizedBody407_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody407_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_6 optimizedBody407_14

def optimizedBody407_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_13 optimizedBody407_15

def optimizedBody407_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_9 optimizedBody407_16

def optimizedBody407_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_6 optimizedBody407_17

def optimizedBody407_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody407_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_6 optimizedBody407_19

def optimizedBody407_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody407_18 optimizedBody407_20

def optimizedBody407_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody407_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody407_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_22 optimizedBody407_23

def optimizedBody407_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_6 optimizedBody407_24

def optimizedBody407_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_21 optimizedBody407_25

def optimizedBody407_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_8 optimizedBody407_26

def optimizedBody407_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_7 optimizedBody407_27

def optimizedBody407_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_6 optimizedBody407_28

def optimizedBody407_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_5 optimizedBody407_29

def optimizedBody407_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody407_0 optimizedBody407_30

def optimized407 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(407, 2, optimizedBody407_31)
end InitECandidate.Proofs.StackAnalysis
