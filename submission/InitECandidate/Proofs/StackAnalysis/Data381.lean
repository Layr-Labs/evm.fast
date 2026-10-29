import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody381_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (50, 4), (52, 2)]

def optimizedBody381_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (44, 44), (50, 50), (52, 52)]

def optimizedBody381_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (52, 52)]

def optimizedBody381_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody381_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_2 optimizedBody381_3

def optimizedBody381_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_1, 381, 2)) (some 377) ([2]) (some (2, optimizedBody381_4, 381, 3))

def optimizedBody381_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody381_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 4), (50, 50), (52, 52)]

def optimizedBody381_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody381_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody381_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_9 optimizedBody381_3

def optimizedBody381_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_8, 381, 4)) (some 69) ([]) (some (2, optimizedBody381_10, 381, 5))

def optimizedBody381_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 72#64)

def optimizedBody381_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody381_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48), (48, 50), (6, 52)]

def optimizedBody381_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (6, 52)]

def optimizedBody381_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_15 optimizedBody381_3

def optimizedBody381_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_14, 381, 6)) (some 68) ([2]) (some (2, optimizedBody381_16, 381, 7))

def optimizedBody381_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody381_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody381_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody381_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 6)]

def optimizedBody381_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody381_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody381_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody381_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody381_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_25 optimizedBody381_3

def optimizedBody381_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_24, 381, 8)) (some 379) ([2, 4, 6]) (some (2, optimizedBody381_26, 381, 9))

def optimizedBody381_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody381_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody381_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody381_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_30 optimizedBody381_3

def optimizedBody381_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_29, 381, 10)) (some 380) ([2, 4]) (some (2, optimizedBody381_31, 381, 11))

def optimizedBody381_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody381_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody381_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody381_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_35 optimizedBody381_3

def optimizedBody381_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_34, 381, 12)) (some 70) ([2]) (some (2, optimizedBody381_36, 381, 13))

def optimizedBody381_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody381_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody381_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody381_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_39 optimizedBody381_40

def optimizedBody381_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_38 optimizedBody381_41

def optimizedBody381_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_42

def optimizedBody381_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_37 optimizedBody381_43

def optimizedBody381_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_33 optimizedBody381_44

def optimizedBody381_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_45

def optimizedBody381_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_32 optimizedBody381_46

def optimizedBody381_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_28 optimizedBody381_47

def optimizedBody381_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_48

def optimizedBody381_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_27 optimizedBody381_49

def optimizedBody381_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_23 optimizedBody381_50

def optimizedBody381_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_22 optimizedBody381_51

def optimizedBody381_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_21 optimizedBody381_52

def optimizedBody381_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_53

def optimizedBody381_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_19 optimizedBody381_54

def optimizedBody381_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_18 optimizedBody381_55

def optimizedBody381_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_56

def optimizedBody381_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_17 optimizedBody381_57

def optimizedBody381_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_13 optimizedBody381_58

def optimizedBody381_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_12 optimizedBody381_59

def optimizedBody381_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_60

def optimizedBody381_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_11 optimizedBody381_61

def optimizedBody381_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_7 optimizedBody381_62

def optimizedBody381_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_63

def optimizedBody381_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_5 optimizedBody381_64

def optimizedBody381_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_0 optimizedBody381_65

def optimized381 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(381, 3, optimizedBody381_66)
end InitECandidate.Proofs.StackAnalysis
