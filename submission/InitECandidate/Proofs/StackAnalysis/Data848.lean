import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody848_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (8, 2), (6, 6)]

def optimizedBody848_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody848_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody848_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 60#64)

def optimizedBody848_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody848_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody848_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody848_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody848_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody848_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_7 optimizedBody848_8

def optimizedBody848_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_6 optimizedBody848_9

def optimizedBody848_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_5 optimizedBody848_10

def optimizedBody848_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_4 optimizedBody848_11

def optimizedBody848_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_3 optimizedBody848_12

def optimizedBody848_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_13

def optimizedBody848_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody848_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody848_14 optimizedBody848_15

def optimizedBody848_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 8), (54, 6)]

def optimizedBody848_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (54, 54)]

def optimizedBody848_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (54, 54)]

def optimizedBody848_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_19 optimizedBody848_8

def optimizedBody848_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_18, 848, 2)) (some 69) ([]) (some (2, optimizedBody848_20, 848, 3))

def optimizedBody848_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody848_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody848_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody848_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 6), (50, 8), (46, 2), (54, 54)]

def optimizedBody848_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody848_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody848_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_27 optimizedBody848_8

def optimizedBody848_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_26, 848, 4)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 5))

def optimizedBody848_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody848_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody848_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (46, 0), (54, 54)]

def optimizedBody848_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody848_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_33, 848, 6)) (some 85) ([2]) (some (2, optimizedBody848_28, 848, 7))

def optimizedBody848_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 48), (50, 50), (46, 2), (52, 6), (54, 54)]

def optimizedBody848_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (50, 50), (0, 46), (6, 52), (54, 54)]

def optimizedBody848_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (0, 46), (6, 52), (54, 54)]

def optimizedBody848_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_37 optimizedBody848_8

def optimizedBody848_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_36, 848, 8)) (some 80) ([2, 4]) (some (2, optimizedBody848_38, 848, 9))

def optimizedBody848_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody848_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody848_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody848_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody848_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_42 optimizedBody848_43

def optimizedBody848_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody848_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_45 optimizedBody848_43

def optimizedBody848_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody848_44 optimizedBody848_46

def optimizedBody848_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody848_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 160#64)

def optimizedBody848_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody848_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_50 optimizedBody848_7

def optimizedBody848_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_7

def optimizedBody848_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody848_51 optimizedBody848_52

def optimizedBody848_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody848_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody848_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody848_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 2)]

def optimizedBody848_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_57

def optimizedBody848_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_58

def optimizedBody848_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50)]

def optimizedBody848_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_60

def optimizedBody848_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody848_59 optimizedBody848_61

def optimizedBody848_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody848_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 48), (50, 50), (46, 0), (54, 54)]

def optimizedBody848_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody848_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_65, 848, 10)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 11))

def optimizedBody848_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody848_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 48), (50, 50), (52, 0), (54, 54)]

def optimizedBody848_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (48, 48), (50, 50), (0, 52), (54, 54)]

def optimizedBody848_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (0, 52), (54, 54)]

def optimizedBody848_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_70 optimizedBody848_8

def optimizedBody848_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_69, 848, 12)) (some 85) ([2]) (some (2, optimizedBody848_71, 848, 13))

def optimizedBody848_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody848_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody848_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_65, 848, 14)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 15))

def optimizedBody848_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody848_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_69, 848, 16)) (some 85) ([2]) (some (2, optimizedBody848_71, 848, 17))

def optimizedBody848_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 320#64)

def optimizedBody848_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody848_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_65, 848, 18)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 19))

def optimizedBody848_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody848_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_69, 848, 20)) (some 85) ([2]) (some (2, optimizedBody848_71, 848, 21))

def optimizedBody848_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 384#64)

def optimizedBody848_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody848_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_65, 848, 22)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 23))

def optimizedBody848_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody848_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_69, 848, 24)) (some 85) ([2]) (some (2, optimizedBody848_71, 848, 25))

def optimizedBody848_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 512#64)

def optimizedBody848_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody848_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_65, 848, 26)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 27))

def optimizedBody848_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody848_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_69, 848, 28)) (some 85) ([2]) (some (2, optimizedBody848_71, 848, 29))

def optimizedBody848_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody848_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 256#64)))

def optimizedBody848_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_65, 848, 30)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 31))

def optimizedBody848_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 280#64)))

def optimizedBody848_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_69, 848, 32)) (some 85) ([2]) (some (2, optimizedBody848_71, 848, 33))

def optimizedBody848_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody848_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 320#64)))

def optimizedBody848_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_65, 848, 34)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 35))

def optimizedBody848_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 344#64)))

def optimizedBody848_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_69, 848, 36)) (some 85) ([2]) (some (2, optimizedBody848_71, 848, 37))

def optimizedBody848_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody848_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody848_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_65, 848, 38)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 39))

def optimizedBody848_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 408#64)))

def optimizedBody848_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_69, 848, 40)) (some 85) ([2]) (some (2, optimizedBody848_71, 848, 41))

def optimizedBody848_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody848_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 512#64)))

def optimizedBody848_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_65, 848, 42)) (some 80) ([2, 4]) (some (2, optimizedBody848_28, 848, 43))

def optimizedBody848_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 536#64)))

def optimizedBody848_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48), (46, 50), (48, 52), (50, 54)]

def optimizedBody848_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (46, 50), (48, 52), (50, 54)]

def optimizedBody848_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_113 optimizedBody848_8

def optimizedBody848_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_112, 848, 44)) (some 85) ([2]) (some (2, optimizedBody848_114, 848, 45))

def optimizedBody848_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody848_51 optimizedBody848_52

def optimizedBody848_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody848_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody848_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody848_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_118 optimizedBody848_119

def optimizedBody848_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody848_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_121 optimizedBody848_119

def optimizedBody848_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody848_120 optimizedBody848_122

def optimizedBody848_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody848_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody848_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0)]

def optimizedBody848_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_121 optimizedBody848_126

def optimizedBody848_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_127

def optimizedBody848_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46)]

def optimizedBody848_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_129

def optimizedBody848_131 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody848_128 optimizedBody848_130

def optimizedBody848_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody848_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody848_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody848_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_134 optimizedBody848_8

def optimizedBody848_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_133, 848, 46)) (some 70) ([2]) (some (2, optimizedBody848_135, 848, 47))

def optimizedBody848_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 61#64)

def optimizedBody848_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_137 optimizedBody848_12

def optimizedBody848_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_138

def optimizedBody848_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody848_139 optimizedBody848_15

def optimizedBody848_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody848_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody848_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 48#64)

def optimizedBody848_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 2)]

def optimizedBody848_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48)]

def optimizedBody848_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48)]

def optimizedBody848_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_146 optimizedBody848_8

def optimizedBody848_148 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_145, 848, 48)) (some 77) ([2, 4, 6]) (some (2, optimizedBody848_147, 848, 49))

def optimizedBody848_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody848_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody848_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody848_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody848_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8)]

def optimizedBody848_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_145, 848, 50)) (some 77) ([2, 4, 6]) (some (2, optimizedBody848_147, 848, 51))

def optimizedBody848_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody848_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 352#64)))

def optimizedBody848_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def optimizedBody848_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_145, 848, 52)) (some 77) ([2, 4, 6]) (some (2, optimizedBody848_147, 848, 53))

def optimizedBody848_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody848_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 416#64)))

def optimizedBody848_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 96#64)

def optimizedBody848_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody848_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody848_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_163 optimizedBody848_8

def optimizedBody848_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_162, 848, 54)) (some 77) ([2, 4, 6]) (some (2, optimizedBody848_164, 848, 55))

def optimizedBody848_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody848_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 544#64)))

def optimizedBody848_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody848_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody848_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody848_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_170 optimizedBody848_8

def optimizedBody848_172 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody848_169, 848, 56)) (some 77) ([2, 4, 6]) (some (2, optimizedBody848_171, 848, 57))

def optimizedBody848_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody848_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_4 optimizedBody848_173

def optimizedBody848_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_174

def optimizedBody848_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_175

def optimizedBody848_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_172 optimizedBody848_176

def optimizedBody848_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_168 optimizedBody848_177

def optimizedBody848_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_157 optimizedBody848_178

def optimizedBody848_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_167 optimizedBody848_179

def optimizedBody848_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_180

def optimizedBody848_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_166 optimizedBody848_181

def optimizedBody848_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_182

def optimizedBody848_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_183

def optimizedBody848_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_165 optimizedBody848_184

def optimizedBody848_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_153 optimizedBody848_185

def optimizedBody848_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_161 optimizedBody848_186

def optimizedBody848_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_160 optimizedBody848_187

def optimizedBody848_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_188

def optimizedBody848_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_159 optimizedBody848_189

def optimizedBody848_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_149 optimizedBody848_190

def optimizedBody848_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_191

def optimizedBody848_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_158 optimizedBody848_192

def optimizedBody848_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_153 optimizedBody848_193

def optimizedBody848_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_157 optimizedBody848_194

def optimizedBody848_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_156 optimizedBody848_195

def optimizedBody848_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_196

def optimizedBody848_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_155 optimizedBody848_197

def optimizedBody848_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_149 optimizedBody848_198

def optimizedBody848_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_199

def optimizedBody848_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_154 optimizedBody848_200

def optimizedBody848_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_153 optimizedBody848_201

def optimizedBody848_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_152 optimizedBody848_202

def optimizedBody848_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_151 optimizedBody848_203

def optimizedBody848_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_204

def optimizedBody848_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_150 optimizedBody848_205

def optimizedBody848_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_149 optimizedBody848_206

def optimizedBody848_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_207

def optimizedBody848_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_148 optimizedBody848_208

def optimizedBody848_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_144 optimizedBody848_209

def optimizedBody848_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_143 optimizedBody848_210

def optimizedBody848_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_142 optimizedBody848_211

def optimizedBody848_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_141 optimizedBody848_212

def optimizedBody848_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_213

def optimizedBody848_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_214

def optimizedBody848_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_140 optimizedBody848_215

def optimizedBody848_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_216

def optimizedBody848_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_217

def optimizedBody848_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_218

def optimizedBody848_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_136 optimizedBody848_219

def optimizedBody848_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_132 optimizedBody848_220

def optimizedBody848_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_221

def optimizedBody848_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_131 optimizedBody848_222

def optimizedBody848_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_125 optimizedBody848_223

def optimizedBody848_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_124 optimizedBody848_224

def optimizedBody848_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_45 optimizedBody848_225

def optimizedBody848_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_226

def optimizedBody848_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_123 optimizedBody848_227

def optimizedBody848_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_117 optimizedBody848_228

def optimizedBody848_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_229

def optimizedBody848_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_230

def optimizedBody848_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_116 optimizedBody848_231

def optimizedBody848_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_232

def optimizedBody848_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_233

def optimizedBody848_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_234

def optimizedBody848_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_115 optimizedBody848_235

def optimizedBody848_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_68 optimizedBody848_236

def optimizedBody848_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_111 optimizedBody848_237

def optimizedBody848_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_238

def optimizedBody848_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_239

def optimizedBody848_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_110 optimizedBody848_240

def optimizedBody848_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_64 optimizedBody848_241

def optimizedBody848_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_242

def optimizedBody848_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_109 optimizedBody848_243

def optimizedBody848_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_244

def optimizedBody848_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_245

def optimizedBody848_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_62 optimizedBody848_246

def optimizedBody848_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_56 optimizedBody848_247

def optimizedBody848_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_55 optimizedBody848_248

def optimizedBody848_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_54 optimizedBody848_249

def optimizedBody848_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_250

def optimizedBody848_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_53 optimizedBody848_251

def optimizedBody848_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_108 optimizedBody848_252

def optimizedBody848_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_253

def optimizedBody848_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_254

def optimizedBody848_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_47 optimizedBody848_255

def optimizedBody848_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_256

def optimizedBody848_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_257

def optimizedBody848_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_258

def optimizedBody848_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_107 optimizedBody848_259

def optimizedBody848_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_68 optimizedBody848_260

def optimizedBody848_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_106 optimizedBody848_261

def optimizedBody848_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_262

def optimizedBody848_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_263

def optimizedBody848_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_105 optimizedBody848_264

def optimizedBody848_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_64 optimizedBody848_265

def optimizedBody848_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_266

def optimizedBody848_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_104 optimizedBody848_267

def optimizedBody848_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_268

def optimizedBody848_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_269

def optimizedBody848_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_62 optimizedBody848_270

def optimizedBody848_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_56 optimizedBody848_271

def optimizedBody848_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_55 optimizedBody848_272

def optimizedBody848_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_54 optimizedBody848_273

def optimizedBody848_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_274

def optimizedBody848_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_53 optimizedBody848_275

def optimizedBody848_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_103 optimizedBody848_276

def optimizedBody848_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_277

def optimizedBody848_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_278

def optimizedBody848_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_47 optimizedBody848_279

def optimizedBody848_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_280

def optimizedBody848_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_281

def optimizedBody848_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_282

def optimizedBody848_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_102 optimizedBody848_283

def optimizedBody848_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_68 optimizedBody848_284

def optimizedBody848_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_101 optimizedBody848_285

def optimizedBody848_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_286

def optimizedBody848_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_287

def optimizedBody848_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_100 optimizedBody848_288

def optimizedBody848_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_64 optimizedBody848_289

def optimizedBody848_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_290

def optimizedBody848_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_99 optimizedBody848_291

def optimizedBody848_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_292

def optimizedBody848_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_293

def optimizedBody848_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_62 optimizedBody848_294

def optimizedBody848_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_56 optimizedBody848_295

def optimizedBody848_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_55 optimizedBody848_296

def optimizedBody848_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_54 optimizedBody848_297

def optimizedBody848_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_298

def optimizedBody848_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_53 optimizedBody848_299

def optimizedBody848_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_98 optimizedBody848_300

def optimizedBody848_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_301

def optimizedBody848_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_302

def optimizedBody848_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_47 optimizedBody848_303

def optimizedBody848_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_304

def optimizedBody848_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_305

def optimizedBody848_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_306

def optimizedBody848_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_97 optimizedBody848_307

def optimizedBody848_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_68 optimizedBody848_308

def optimizedBody848_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_96 optimizedBody848_309

def optimizedBody848_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_310

def optimizedBody848_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_311

def optimizedBody848_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_95 optimizedBody848_312

def optimizedBody848_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_64 optimizedBody848_313

def optimizedBody848_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_314

def optimizedBody848_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_94 optimizedBody848_315

def optimizedBody848_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_316

def optimizedBody848_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_317

def optimizedBody848_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_62 optimizedBody848_318

def optimizedBody848_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_56 optimizedBody848_319

def optimizedBody848_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_55 optimizedBody848_320

def optimizedBody848_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_54 optimizedBody848_321

def optimizedBody848_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_322

def optimizedBody848_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_53 optimizedBody848_323

def optimizedBody848_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_93 optimizedBody848_324

def optimizedBody848_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_325

def optimizedBody848_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_326

def optimizedBody848_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_47 optimizedBody848_327

def optimizedBody848_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_328

def optimizedBody848_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_329

def optimizedBody848_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_330

def optimizedBody848_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_92 optimizedBody848_331

def optimizedBody848_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_68 optimizedBody848_332

def optimizedBody848_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_91 optimizedBody848_333

def optimizedBody848_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_334

def optimizedBody848_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_335

def optimizedBody848_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_90 optimizedBody848_336

def optimizedBody848_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_64 optimizedBody848_337

def optimizedBody848_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_338

def optimizedBody848_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_89 optimizedBody848_339

def optimizedBody848_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_340

def optimizedBody848_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_341

def optimizedBody848_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_62 optimizedBody848_342

def optimizedBody848_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_56 optimizedBody848_343

def optimizedBody848_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_55 optimizedBody848_344

def optimizedBody848_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_54 optimizedBody848_345

def optimizedBody848_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_346

def optimizedBody848_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_53 optimizedBody848_347

def optimizedBody848_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_88 optimizedBody848_348

def optimizedBody848_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_349

def optimizedBody848_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_350

def optimizedBody848_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_47 optimizedBody848_351

def optimizedBody848_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_352

def optimizedBody848_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_353

def optimizedBody848_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_354

def optimizedBody848_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_87 optimizedBody848_355

def optimizedBody848_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_68 optimizedBody848_356

def optimizedBody848_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_86 optimizedBody848_357

def optimizedBody848_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_358

def optimizedBody848_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_359

def optimizedBody848_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_85 optimizedBody848_360

def optimizedBody848_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_64 optimizedBody848_361

def optimizedBody848_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_362

def optimizedBody848_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_84 optimizedBody848_363

def optimizedBody848_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_364

def optimizedBody848_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_365

def optimizedBody848_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_62 optimizedBody848_366

def optimizedBody848_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_56 optimizedBody848_367

def optimizedBody848_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_55 optimizedBody848_368

def optimizedBody848_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_54 optimizedBody848_369

def optimizedBody848_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_370

def optimizedBody848_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_53 optimizedBody848_371

def optimizedBody848_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_83 optimizedBody848_372

def optimizedBody848_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_373

def optimizedBody848_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_374

def optimizedBody848_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_47 optimizedBody848_375

def optimizedBody848_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_376

def optimizedBody848_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_377

def optimizedBody848_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_378

def optimizedBody848_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_82 optimizedBody848_379

def optimizedBody848_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_68 optimizedBody848_380

def optimizedBody848_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_81 optimizedBody848_381

def optimizedBody848_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_382

def optimizedBody848_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_383

def optimizedBody848_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_80 optimizedBody848_384

def optimizedBody848_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_64 optimizedBody848_385

def optimizedBody848_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_386

def optimizedBody848_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_79 optimizedBody848_387

def optimizedBody848_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_388

def optimizedBody848_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_389

def optimizedBody848_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_62 optimizedBody848_390

def optimizedBody848_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_56 optimizedBody848_391

def optimizedBody848_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_55 optimizedBody848_392

def optimizedBody848_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_54 optimizedBody848_393

def optimizedBody848_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_394

def optimizedBody848_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_53 optimizedBody848_395

def optimizedBody848_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_78 optimizedBody848_396

def optimizedBody848_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_397

def optimizedBody848_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_398

def optimizedBody848_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_47 optimizedBody848_399

def optimizedBody848_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_400

def optimizedBody848_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_401

def optimizedBody848_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_402

def optimizedBody848_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_77 optimizedBody848_403

def optimizedBody848_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_68 optimizedBody848_404

def optimizedBody848_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_76 optimizedBody848_405

def optimizedBody848_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_406

def optimizedBody848_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_407

def optimizedBody848_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_75 optimizedBody848_408

def optimizedBody848_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_64 optimizedBody848_409

def optimizedBody848_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_410

def optimizedBody848_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_74 optimizedBody848_411

def optimizedBody848_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_412

def optimizedBody848_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_413

def optimizedBody848_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_62 optimizedBody848_414

def optimizedBody848_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_56 optimizedBody848_415

def optimizedBody848_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_55 optimizedBody848_416

def optimizedBody848_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_54 optimizedBody848_417

def optimizedBody848_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_418

def optimizedBody848_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_53 optimizedBody848_419

def optimizedBody848_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_73 optimizedBody848_420

def optimizedBody848_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_421

def optimizedBody848_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_422

def optimizedBody848_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_47 optimizedBody848_423

def optimizedBody848_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_424

def optimizedBody848_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_425

def optimizedBody848_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_426

def optimizedBody848_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_72 optimizedBody848_427

def optimizedBody848_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_68 optimizedBody848_428

def optimizedBody848_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_67 optimizedBody848_429

def optimizedBody848_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_430

def optimizedBody848_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_431

def optimizedBody848_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_66 optimizedBody848_432

def optimizedBody848_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_64 optimizedBody848_433

def optimizedBody848_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_434

def optimizedBody848_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_63 optimizedBody848_435

def optimizedBody848_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_436

def optimizedBody848_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_437

def optimizedBody848_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_62 optimizedBody848_438

def optimizedBody848_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_56 optimizedBody848_439

def optimizedBody848_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_55 optimizedBody848_440

def optimizedBody848_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_54 optimizedBody848_441

def optimizedBody848_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_442

def optimizedBody848_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_53 optimizedBody848_443

def optimizedBody848_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_49 optimizedBody848_444

def optimizedBody848_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_48 optimizedBody848_445

def optimizedBody848_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_446

def optimizedBody848_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_47 optimizedBody848_447

def optimizedBody848_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_41 optimizedBody848_448

def optimizedBody848_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_40 optimizedBody848_449

def optimizedBody848_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_450

def optimizedBody848_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_39 optimizedBody848_451

def optimizedBody848_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_35 optimizedBody848_452

def optimizedBody848_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_453

def optimizedBody848_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_23 optimizedBody848_454

def optimizedBody848_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_455

def optimizedBody848_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_34 optimizedBody848_456

def optimizedBody848_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_32 optimizedBody848_457

def optimizedBody848_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_31 optimizedBody848_458

def optimizedBody848_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_30 optimizedBody848_459

def optimizedBody848_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_460

def optimizedBody848_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_29 optimizedBody848_461

def optimizedBody848_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_25 optimizedBody848_462

def optimizedBody848_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_24 optimizedBody848_463

def optimizedBody848_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_23 optimizedBody848_464

def optimizedBody848_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_22 optimizedBody848_465

def optimizedBody848_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_466

def optimizedBody848_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_21 optimizedBody848_467

def optimizedBody848_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_17 optimizedBody848_468

def optimizedBody848_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_469

def optimizedBody848_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_2 optimizedBody848_470

def optimizedBody848_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_16 optimizedBody848_471

def optimizedBody848_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_1 optimizedBody848_472

def optimizedBody848_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody848_0 optimizedBody848_473

def optimized848 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(848, 4, optimizedBody848_474)
end InitECandidate.Proofs.StackAnalysis
