import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody512_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody512_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (44, 44)]

def optimizedBody512_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody512_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody512_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_2 optimizedBody512_3

def optimizedBody512_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody512_1, 512, 2)) (some 475) ([]) (some (2, optimizedBody512_4, 512, 3))

def optimizedBody512_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody512_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 8), (54, 4), (56, 0), (58, 6)]

def optimizedBody512_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (8, 8), (44, 44), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody512_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody512_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_9 optimizedBody512_3

def optimizedBody512_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody512_8, 512, 4)) (some 475) ([]) (some (2, optimizedBody512_10, 512, 5))

def optimizedBody512_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody512_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 4), (48, 0), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58), (60, 8)]

def optimizedBody512_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 46), (10, 48), (8, 50), (14, 52), (4, 54), (0, 56), (6, 58), (16, 60)]

def optimizedBody512_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (10, 48), (8, 50), (14, 52), (4, 54), (0, 56), (6, 58), (16, 60)]

def optimizedBody512_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_15 optimizedBody512_3

def optimizedBody512_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody512_14, 512, 6)) (some 470) ([2]) (some (2, optimizedBody512_16, 512, 7))

def optimizedBody512_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody512_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody512_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody512_19, 512, 8)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody512_4, 512, 9))

def optimizedBody512_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody512_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody512_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody512_22, 512, 10)) (some 478) ([2]) (some (2, optimizedBody512_4, 512, 11))

def optimizedBody512_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody512_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody512_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody512_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_26 optimizedBody512_3

def optimizedBody512_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody512_25, 512, 12)) (some 490) ([2]) (some (2, optimizedBody512_27, 512, 13))

def optimizedBody512_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody512_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody512_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody512_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_30 optimizedBody512_31

def optimizedBody512_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_29 optimizedBody512_32

def optimizedBody512_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_6 optimizedBody512_33

def optimizedBody512_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_28 optimizedBody512_34

def optimizedBody512_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_2 optimizedBody512_35

def optimizedBody512_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_24 optimizedBody512_36

def optimizedBody512_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_6 optimizedBody512_37

def optimizedBody512_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_23 optimizedBody512_38

def optimizedBody512_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_21 optimizedBody512_39

def optimizedBody512_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_6 optimizedBody512_40

def optimizedBody512_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_20 optimizedBody512_41

def optimizedBody512_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_18 optimizedBody512_42

def optimizedBody512_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_6 optimizedBody512_43

def optimizedBody512_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_17 optimizedBody512_44

def optimizedBody512_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_13 optimizedBody512_45

def optimizedBody512_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_12 optimizedBody512_46

def optimizedBody512_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_6 optimizedBody512_47

def optimizedBody512_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_11 optimizedBody512_48

def optimizedBody512_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_7 optimizedBody512_49

def optimizedBody512_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_6 optimizedBody512_50

def optimizedBody512_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_5 optimizedBody512_51

def optimizedBody512_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody512_0 optimizedBody512_52

def optimized512 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(512, 1, optimizedBody512_53)
end InitECandidate.Proofs.StackAnalysis
