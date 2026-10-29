import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody423_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody423_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48)]

def optimizedBody423_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody423_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody423_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_2 optimizedBody423_3

def optimizedBody423_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody423_1, 423, 2)) (some 419) ([2, 4]) (some (2, optimizedBody423_4, 423, 3))

def optimizedBody423_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody423_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody423_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody423_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody423_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_9 optimizedBody423_3

def optimizedBody423_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody423_8, 423, 4)) (some 416) ([2]) (some (2, optimizedBody423_10, 423, 5))

def optimizedBody423_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody423_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody423_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44)]

def optimizedBody423_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody423_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody423_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_16 optimizedBody423_3

def optimizedBody423_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody423_15, 423, 6)) (some 422) ([2]) (some (2, optimizedBody423_17, 423, 7))

def optimizedBody423_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody423_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_6 optimizedBody423_19

def optimizedBody423_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_18 optimizedBody423_20

def optimizedBody423_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_14 optimizedBody423_21

def optimizedBody423_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_6 optimizedBody423_22

def optimizedBody423_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody423_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_6 optimizedBody423_24

def optimizedBody423_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody423_23 optimizedBody423_25

def optimizedBody423_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody423_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody423_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_27 optimizedBody423_28

def optimizedBody423_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_13 optimizedBody423_29

def optimizedBody423_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_6 optimizedBody423_30

def optimizedBody423_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_26 optimizedBody423_31

def optimizedBody423_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_13 optimizedBody423_32

def optimizedBody423_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_12 optimizedBody423_33

def optimizedBody423_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_6 optimizedBody423_34

def optimizedBody423_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_11 optimizedBody423_35

def optimizedBody423_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_7 optimizedBody423_36

def optimizedBody423_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_6 optimizedBody423_37

def optimizedBody423_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_5 optimizedBody423_38

def optimizedBody423_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody423_0 optimizedBody423_39

def optimized423 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(423, 3, optimizedBody423_40)
end InitECandidate.Proofs.StackAnalysis
