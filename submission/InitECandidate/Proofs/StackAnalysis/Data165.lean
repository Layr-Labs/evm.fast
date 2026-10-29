import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody165_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2)]

def optimizedBody165_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody165_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody165_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody165_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_2 optimizedBody165_3

def optimizedBody165_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody165_1, 165, 2)) (some 75) ([]) (some (2, optimizedBody165_4, 165, 3))

def optimizedBody165_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody165_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 6)]

def optimizedBody165_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46)]

def optimizedBody165_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44), (4, 46)]

def optimizedBody165_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody165_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_10 optimizedBody165_3

def optimizedBody165_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody165_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (46, 46), (44, 0)]

def optimizedBody165_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody165_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody165_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_15 optimizedBody165_3

def optimizedBody165_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody165_14, 165, 5)) (some 76) ([2]) (some (2, optimizedBody165_16, 165, 6))

def optimizedBody165_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody165_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def optimizedBody165_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody165_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_20 optimizedBody165_11

def optimizedBody165_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_19 optimizedBody165_21

def optimizedBody165_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_18 optimizedBody165_22

def optimizedBody165_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_6 optimizedBody165_23

def optimizedBody165_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_17 optimizedBody165_24

def optimizedBody165_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_13 optimizedBody165_25

def optimizedBody165_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_12 optimizedBody165_26

def optimizedBody165_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_6 optimizedBody165_27

def optimizedBody165_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 1#64) optimizedBody165_11 optimizedBody165_28

def optimizedBody165_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (0, 0)]

def optimizedBody165_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_6 optimizedBody165_30

def optimizedBody165_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_29 optimizedBody165_31

def optimizedBody165_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_9 optimizedBody165_32

def optimizedBody165_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody165_8, 165, 4)) (some 164) ([2, 4]) (some (2, optimizedBody165_33, 165, 7))

def optimizedBody165_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody165_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody165_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody165_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_37 optimizedBody165_3

def optimizedBody165_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody165_36, 165, 8)) (some 76) ([2]) (some (2, optimizedBody165_38, 165, 9))

def optimizedBody165_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody165_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody165_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody165_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_41 optimizedBody165_42

def optimizedBody165_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_40 optimizedBody165_43

def optimizedBody165_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_6 optimizedBody165_44

def optimizedBody165_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_39 optimizedBody165_45

def optimizedBody165_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_35 optimizedBody165_46

def optimizedBody165_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_6 optimizedBody165_47

def optimizedBody165_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_34 optimizedBody165_48

def optimizedBody165_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_7 optimizedBody165_49

def optimizedBody165_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_6 optimizedBody165_50

def optimizedBody165_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_5 optimizedBody165_51

def optimizedBody165_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody165_0 optimizedBody165_52

def optimized165 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(165, 3, optimizedBody165_53)
end InitECandidate.Proofs.StackAnalysis
