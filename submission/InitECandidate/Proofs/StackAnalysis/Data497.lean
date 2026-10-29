import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody497_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody497_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44)]

def optimizedBody497_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody497_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody497_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_2 optimizedBody497_3

def optimizedBody497_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody497_1, 497, 2)) (some 475) ([]) (some (2, optimizedBody497_4, 497, 3))

def optimizedBody497_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody497_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 4), (52, 0), (56, 8), (58, 6)]

def optimizedBody497_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody497_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody497_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_9 optimizedBody497_3

def optimizedBody497_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody497_8, 497, 4)) (some 475) ([]) (some (2, optimizedBody497_10, 497, 5))

def optimizedBody497_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody497_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 8), (50, 6), (52, 52), (54, 0), (56, 56), (58, 58), (60, 4)]

def optimizedBody497_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody497_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody497_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_15 optimizedBody497_3

def optimizedBody497_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody497_14, 497, 6)) (some 470) ([2]) (some (2, optimizedBody497_16, 497, 7))

def optimizedBody497_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody497_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody497_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody497_19, 497, 8)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody497_4, 497, 9))

def optimizedBody497_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody497_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody497_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody497_22, 497, 10)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody497_4, 497, 11))

def optimizedBody497_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody497_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody497_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody497_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_26 optimizedBody497_3

def optimizedBody497_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody497_25, 497, 12)) (some 490) ([2]) (some (2, optimizedBody497_27, 497, 13))

def optimizedBody497_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody497_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody497_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody497_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_30 optimizedBody497_31

def optimizedBody497_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_29 optimizedBody497_32

def optimizedBody497_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_33

def optimizedBody497_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_28 optimizedBody497_34

def optimizedBody497_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_2 optimizedBody497_35

def optimizedBody497_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_24 optimizedBody497_36

def optimizedBody497_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_37

def optimizedBody497_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_23 optimizedBody497_38

def optimizedBody497_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_21 optimizedBody497_39

def optimizedBody497_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_40

def optimizedBody497_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_20 optimizedBody497_41

def optimizedBody497_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_18 optimizedBody497_42

def optimizedBody497_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_43

def optimizedBody497_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_17 optimizedBody497_44

def optimizedBody497_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_13 optimizedBody497_45

def optimizedBody497_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_12 optimizedBody497_46

def optimizedBody497_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_47

def optimizedBody497_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_11 optimizedBody497_48

def optimizedBody497_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_7 optimizedBody497_49

def optimizedBody497_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_50

def optimizedBody497_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_5 optimizedBody497_51

def optimizedBody497_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_0 optimizedBody497_52

def optimized497 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(497, 1, optimizedBody497_53)
end InitECandidate.Proofs.StackAnalysis
