import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody252_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (48, 6)]

def optimizedBody252_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (44, 44), (48, 48)]

def optimizedBody252_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody252_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody252_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_2 optimizedBody252_3

def optimizedBody252_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody252_1, 252, 2)) (some 94) ([2, 4]) (some (2, optimizedBody252_4, 252, 3))

def optimizedBody252_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody252_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody252_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody252_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 30#64)

def optimizedBody252_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 48)]

def optimizedBody252_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (0, 48)]

def optimizedBody252_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48)]

def optimizedBody252_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_12 optimizedBody252_3

def optimizedBody252_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody252_11, 252, 4)) (some 245) ([2]) (some (2, optimizedBody252_13, 252, 5))

def optimizedBody252_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (0, 0)]

def optimizedBody252_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_6 optimizedBody252_15

def optimizedBody252_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_14 optimizedBody252_16

def optimizedBody252_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_10 optimizedBody252_17

def optimizedBody252_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_9 optimizedBody252_18

def optimizedBody252_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_6 optimizedBody252_19

def optimizedBody252_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (0, 48)]

def optimizedBody252_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_6 optimizedBody252_21

def optimizedBody252_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody252_20 optimizedBody252_22

def optimizedBody252_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody252_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 31#64)

def optimizedBody252_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6)]

def optimizedBody252_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (6, 46)]

def optimizedBody252_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46)]

def optimizedBody252_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_28 optimizedBody252_3

def optimizedBody252_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody252_27, 252, 6)) (some 245) ([2]) (some (2, optimizedBody252_29, 252, 7))

def optimizedBody252_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6)]

def optimizedBody252_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_6 optimizedBody252_31

def optimizedBody252_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_30 optimizedBody252_32

def optimizedBody252_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_26 optimizedBody252_33

def optimizedBody252_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_25 optimizedBody252_34

def optimizedBody252_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_6 optimizedBody252_35

def optimizedBody252_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (6, 6)]

def optimizedBody252_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_6 optimizedBody252_37

def optimizedBody252_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody252_36 optimizedBody252_38

def optimizedBody252_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody252_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody252_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_40 optimizedBody252_41

def optimizedBody252_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_6 optimizedBody252_42

def optimizedBody252_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_39 optimizedBody252_43

def optimizedBody252_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_24 optimizedBody252_44

def optimizedBody252_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_6 optimizedBody252_45

def optimizedBody252_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_23 optimizedBody252_46

def optimizedBody252_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_8 optimizedBody252_47

def optimizedBody252_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_7 optimizedBody252_48

def optimizedBody252_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_6 optimizedBody252_49

def optimizedBody252_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_5 optimizedBody252_50

def optimizedBody252_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody252_0 optimizedBody252_51

def optimized252 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(252, 4, optimizedBody252_52)
end InitECandidate.Proofs.StackAnalysis
