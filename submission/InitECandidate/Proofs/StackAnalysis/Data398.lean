import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody398_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody398_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (8, 44)]

def optimizedBody398_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44)]

def optimizedBody398_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody398_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_2 optimizedBody398_3

def optimizedBody398_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody398_1, 398, 2)) (some 397) ([2]) (some (2, optimizedBody398_4, 398, 3))

def optimizedBody398_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody398_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody398_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody398_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody398_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody398_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody398_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_10 optimizedBody398_11

def optimizedBody398_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_9 optimizedBody398_12

def optimizedBody398_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_6 optimizedBody398_13

def optimizedBody398_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody398_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody398_14 optimizedBody398_15

def optimizedBody398_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 56#64)

def optimizedBody398_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 8), (46, 4), (48, 6)]

def optimizedBody398_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody398_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody398_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_20 optimizedBody398_3

def optimizedBody398_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody398_19, 398, 4)) (some 68) ([2]) (some (2, optimizedBody398_21, 398, 5))

def optimizedBody398_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody398_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody398_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody398_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_25 optimizedBody398_3

def optimizedBody398_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody398_24, 398, 6)) (some 333) ([2, 4, 6]) (some (2, optimizedBody398_26, 398, 7))

def optimizedBody398_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody398_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody398_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_28 optimizedBody398_29

def optimizedBody398_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_6 optimizedBody398_30

def optimizedBody398_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_27 optimizedBody398_31

def optimizedBody398_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_23 optimizedBody398_32

def optimizedBody398_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_6 optimizedBody398_33

def optimizedBody398_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_22 optimizedBody398_34

def optimizedBody398_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_18 optimizedBody398_35

def optimizedBody398_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_17 optimizedBody398_36

def optimizedBody398_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_6 optimizedBody398_37

def optimizedBody398_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_6 optimizedBody398_38

def optimizedBody398_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_16 optimizedBody398_39

def optimizedBody398_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_8 optimizedBody398_40

def optimizedBody398_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_7 optimizedBody398_41

def optimizedBody398_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_6 optimizedBody398_42

def optimizedBody398_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_5 optimizedBody398_43

def optimizedBody398_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody398_0 optimizedBody398_44

def optimized398 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(398, 2, optimizedBody398_45)
end InitECandidate.Proofs.StackAnalysis
