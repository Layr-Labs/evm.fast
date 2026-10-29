import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source860
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles860
def optimizedBody860_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (8, 2), (6, 6)]

def optimizedBody860_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody860_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody860_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 60#64)

def optimizedBody860_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody860_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody860_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody860_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody860_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody860_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_7 optimizedBody860_8

def optimizedBody860_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_9

def optimizedBody860_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_5 optimizedBody860_10

def optimizedBody860_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_4 optimizedBody860_11

def optimizedBody860_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_3 optimizedBody860_12

def optimizedBody860_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_13

def optimizedBody860_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody860_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody860_14 optimizedBody860_15

def optimizedBody860_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 8), (54, 6)]

def optimizedBody860_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (54, 54)]

def optimizedBody860_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (54, 54)]

def optimizedBody860_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_19 optimizedBody860_8

def optimizedBody860_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_18, 860, 2)) (some 69) ([]) (some (2, optimizedBody860_20, 860, 3))

def optimizedBody860_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody860_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody860_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody860_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 6), (50, 8), (46, 2), (54, 54)]

def optimizedBody860_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody860_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody860_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_27 optimizedBody860_8

def optimizedBody860_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_26, 860, 4)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 5))

def optimizedBody860_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody860_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody860_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (46, 0), (54, 54)]

def optimizedBody860_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody860_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_33, 860, 6)) (some 85) ([2]) (some (2, optimizedBody860_28, 860, 7))

def optimizedBody860_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 48), (50, 50), (46, 2), (52, 6), (54, 54)]

def optimizedBody860_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (50, 50), (0, 46), (6, 52), (54, 54)]

def optimizedBody860_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (0, 46), (6, 52), (54, 54)]

def optimizedBody860_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_37 optimizedBody860_8

def optimizedBody860_39 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_36, 860, 8)) (some 80) ([2, 4]) (some (2, optimizedBody860_38, 860, 9))

def optimizedBody860_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody860_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody860_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody860_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody860_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_42 optimizedBody860_43

def optimizedBody860_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody860_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_45 optimizedBody860_43

def optimizedBody860_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody860_44 optimizedBody860_46

def optimizedBody860_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody860_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 160#64)

def optimizedBody860_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody860_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_50 optimizedBody860_7

def optimizedBody860_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_7

def optimizedBody860_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody860_51 optimizedBody860_52

def optimizedBody860_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody860_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody860_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody860_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 2)]

def optimizedBody860_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_57

def optimizedBody860_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_58

def optimizedBody860_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50)]

def optimizedBody860_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_60

def optimizedBody860_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody860_59 optimizedBody860_61

def optimizedBody860_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody860_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 48), (50, 50), (46, 0), (54, 54)]

def optimizedBody860_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody860_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_65, 860, 10)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 11))

def optimizedBody860_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody860_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 48), (50, 50), (52, 0), (54, 54)]

def optimizedBody860_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (48, 48), (50, 50), (0, 52), (54, 54)]

def optimizedBody860_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (0, 52), (54, 54)]

def optimizedBody860_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_70 optimizedBody860_8

def optimizedBody860_72 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_69, 860, 12)) (some 85) ([2]) (some (2, optimizedBody860_71, 860, 13))

def optimizedBody860_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody860_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody860_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_65, 860, 14)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 15))

def optimizedBody860_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody860_77 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_69, 860, 16)) (some 85) ([2]) (some (2, optimizedBody860_71, 860, 17))

def optimizedBody860_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 320#64)

def optimizedBody860_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody860_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_65, 860, 18)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 19))

def optimizedBody860_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody860_82 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_69, 860, 20)) (some 85) ([2]) (some (2, optimizedBody860_71, 860, 21))

def optimizedBody860_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 384#64)

def optimizedBody860_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody860_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_65, 860, 22)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 23))

def optimizedBody860_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody860_87 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_69, 860, 24)) (some 85) ([2]) (some (2, optimizedBody860_71, 860, 25))

def optimizedBody860_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 512#64)

def optimizedBody860_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody860_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_65, 860, 26)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 27))

def optimizedBody860_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody860_92 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_69, 860, 28)) (some 85) ([2]) (some (2, optimizedBody860_71, 860, 29))

def optimizedBody860_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody860_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 256#64)))

def optimizedBody860_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_65, 860, 30)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 31))

def optimizedBody860_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 280#64)))

def optimizedBody860_97 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_69, 860, 32)) (some 85) ([2]) (some (2, optimizedBody860_71, 860, 33))

def optimizedBody860_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody860_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 320#64)))

def optimizedBody860_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_65, 860, 34)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 35))

def optimizedBody860_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 344#64)))

def optimizedBody860_102 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_69, 860, 36)) (some 85) ([2]) (some (2, optimizedBody860_71, 860, 37))

def optimizedBody860_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody860_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody860_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_65, 860, 38)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 39))

def optimizedBody860_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 408#64)))

def optimizedBody860_107 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_69, 860, 40)) (some 85) ([2]) (some (2, optimizedBody860_71, 860, 41))

def optimizedBody860_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody860_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 512#64)))

def optimizedBody860_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_65, 860, 42)) (some 80) ([2, 4]) (some (2, optimizedBody860_28, 860, 43))

def optimizedBody860_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 536#64)))

def optimizedBody860_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48), (46, 50), (48, 52), (50, 54)]

def optimizedBody860_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (46, 50), (48, 52), (50, 54)]

def optimizedBody860_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_113 optimizedBody860_8

def optimizedBody860_115 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_112, 860, 44)) (some 85) ([2]) (some (2, optimizedBody860_114, 860, 45))

def optimizedBody860_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody860_51 optimizedBody860_52

def optimizedBody860_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody860_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody860_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody860_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_118 optimizedBody860_119

def optimizedBody860_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody860_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_121 optimizedBody860_119

def optimizedBody860_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody860_120 optimizedBody860_122

def optimizedBody860_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody860_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody860_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0)]

def optimizedBody860_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_121 optimizedBody860_126

def optimizedBody860_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_127

def optimizedBody860_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46)]

def optimizedBody860_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_129

def optimizedBody860_131 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody860_128 optimizedBody860_130

def optimizedBody860_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody860_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody860_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody860_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_134 optimizedBody860_8

def optimizedBody860_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_133, 860, 46)) (some 70) ([2]) (some (2, optimizedBody860_135, 860, 47))

def optimizedBody860_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 61#64)

def optimizedBody860_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_137 optimizedBody860_12

def optimizedBody860_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_138

def optimizedBody860_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody860_139 optimizedBody860_15

def optimizedBody860_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody860_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody860_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 48#64)

def optimizedBody860_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 2)]

def optimizedBody860_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48)]

def optimizedBody860_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48)]

def optimizedBody860_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_146 optimizedBody860_8

def optimizedBody860_148 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_145, 860, 48)) (some 77) ([2, 4, 6]) (some (2, optimizedBody860_147, 860, 49))

def optimizedBody860_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody860_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody860_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody860_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody860_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8)]

def optimizedBody860_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_145, 860, 50)) (some 77) ([2, 4, 6]) (some (2, optimizedBody860_147, 860, 51))

def optimizedBody860_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody860_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 352#64)))

def optimizedBody860_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def optimizedBody860_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_145, 860, 52)) (some 77) ([2, 4, 6]) (some (2, optimizedBody860_147, 860, 53))

def optimizedBody860_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody860_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 416#64)))

def optimizedBody860_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 96#64)

def optimizedBody860_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody860_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody860_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_163 optimizedBody860_8

def optimizedBody860_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_162, 860, 54)) (some 77) ([2, 4, 6]) (some (2, optimizedBody860_164, 860, 55))

def optimizedBody860_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody860_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 544#64)))

def optimizedBody860_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody860_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody860_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody860_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_170 optimizedBody860_8

def optimizedBody860_172 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_169, 860, 56)) (some 77) ([2, 4, 6]) (some (2, optimizedBody860_171, 860, 57))

def optimizedBody860_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody860_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_4 optimizedBody860_173

def optimizedBody860_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_174

def optimizedBody860_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_175

def optimizedBody860_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_172 optimizedBody860_176

def optimizedBody860_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_168 optimizedBody860_177

def optimizedBody860_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_157 optimizedBody860_178

def optimizedBody860_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_167 optimizedBody860_179

def optimizedBody860_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_180

def optimizedBody860_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_166 optimizedBody860_181

def optimizedBody860_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_182

def optimizedBody860_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_183

def optimizedBody860_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_165 optimizedBody860_184

def optimizedBody860_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_153 optimizedBody860_185

def optimizedBody860_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_161 optimizedBody860_186

def optimizedBody860_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_160 optimizedBody860_187

def optimizedBody860_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_188

def optimizedBody860_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_159 optimizedBody860_189

def optimizedBody860_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_149 optimizedBody860_190

def optimizedBody860_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_191

def optimizedBody860_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_158 optimizedBody860_192

def optimizedBody860_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_153 optimizedBody860_193

def optimizedBody860_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_157 optimizedBody860_194

def optimizedBody860_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_156 optimizedBody860_195

def optimizedBody860_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_196

def optimizedBody860_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_155 optimizedBody860_197

def optimizedBody860_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_149 optimizedBody860_198

def optimizedBody860_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_199

def optimizedBody860_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_154 optimizedBody860_200

def optimizedBody860_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_153 optimizedBody860_201

def optimizedBody860_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_152 optimizedBody860_202

def optimizedBody860_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_151 optimizedBody860_203

def optimizedBody860_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_204

def optimizedBody860_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_150 optimizedBody860_205

def optimizedBody860_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_149 optimizedBody860_206

def optimizedBody860_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_207

def optimizedBody860_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_148 optimizedBody860_208

def optimizedBody860_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_144 optimizedBody860_209

def optimizedBody860_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_143 optimizedBody860_210

def optimizedBody860_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_142 optimizedBody860_211

def optimizedBody860_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_141 optimizedBody860_212

def optimizedBody860_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_213

def optimizedBody860_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_214

def optimizedBody860_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_140 optimizedBody860_215

def optimizedBody860_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_216

def optimizedBody860_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_217

def optimizedBody860_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_218

def optimizedBody860_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_136 optimizedBody860_219

def optimizedBody860_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_132 optimizedBody860_220

def optimizedBody860_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_221

def optimizedBody860_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_131 optimizedBody860_222

def optimizedBody860_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_125 optimizedBody860_223

def optimizedBody860_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_124 optimizedBody860_224

def optimizedBody860_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_45 optimizedBody860_225

def optimizedBody860_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_226

def optimizedBody860_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_123 optimizedBody860_227

def optimizedBody860_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_117 optimizedBody860_228

def optimizedBody860_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_229

def optimizedBody860_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_230

def optimizedBody860_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_116 optimizedBody860_231

def optimizedBody860_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_232

def optimizedBody860_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_233

def optimizedBody860_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_234

def optimizedBody860_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_115 optimizedBody860_235

def optimizedBody860_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_236

def optimizedBody860_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_111 optimizedBody860_237

def optimizedBody860_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_238

def optimizedBody860_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_239

def optimizedBody860_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_110 optimizedBody860_240

def optimizedBody860_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_241

def optimizedBody860_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_242

def optimizedBody860_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_109 optimizedBody860_243

def optimizedBody860_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_244

def optimizedBody860_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_245

def optimizedBody860_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_246

def optimizedBody860_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_247

def optimizedBody860_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_248

def optimizedBody860_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_249

def optimizedBody860_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_250

def optimizedBody860_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_251

def optimizedBody860_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_108 optimizedBody860_252

def optimizedBody860_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_253

def optimizedBody860_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_254

def optimizedBody860_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_255

def optimizedBody860_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_256

def optimizedBody860_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_257

def optimizedBody860_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_258

def optimizedBody860_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_107 optimizedBody860_259

def optimizedBody860_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_260

def optimizedBody860_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_106 optimizedBody860_261

def optimizedBody860_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_262

def optimizedBody860_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_263

def optimizedBody860_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_105 optimizedBody860_264

def optimizedBody860_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_265

def optimizedBody860_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_266

def optimizedBody860_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_104 optimizedBody860_267

def optimizedBody860_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_268

def optimizedBody860_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_269

def optimizedBody860_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_270

def optimizedBody860_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_271

def optimizedBody860_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_272

def optimizedBody860_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_273

def optimizedBody860_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_274

def optimizedBody860_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_275

def optimizedBody860_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_103 optimizedBody860_276

def optimizedBody860_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_277

def optimizedBody860_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_278

def optimizedBody860_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_279

def optimizedBody860_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_280

def optimizedBody860_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_281

def optimizedBody860_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_282

def optimizedBody860_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_102 optimizedBody860_283

def optimizedBody860_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_284

def optimizedBody860_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_101 optimizedBody860_285

def optimizedBody860_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_286

def optimizedBody860_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_287

def optimizedBody860_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_100 optimizedBody860_288

def optimizedBody860_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_289

def optimizedBody860_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_290

def optimizedBody860_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_99 optimizedBody860_291

def optimizedBody860_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_292

def optimizedBody860_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_293

def optimizedBody860_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_294

def optimizedBody860_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_295

def optimizedBody860_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_296

def optimizedBody860_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_297

def optimizedBody860_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_298

def optimizedBody860_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_299

def optimizedBody860_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_98 optimizedBody860_300

def optimizedBody860_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_301

def optimizedBody860_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_302

def optimizedBody860_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_303

def optimizedBody860_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_304

def optimizedBody860_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_305

def optimizedBody860_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_306

def optimizedBody860_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_97 optimizedBody860_307

def optimizedBody860_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_308

def optimizedBody860_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_96 optimizedBody860_309

def optimizedBody860_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_310

def optimizedBody860_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_311

def optimizedBody860_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_95 optimizedBody860_312

def optimizedBody860_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_313

def optimizedBody860_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_314

def optimizedBody860_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_94 optimizedBody860_315

def optimizedBody860_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_316

def optimizedBody860_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_317

def optimizedBody860_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_318

def optimizedBody860_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_319

def optimizedBody860_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_320

def optimizedBody860_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_321

def optimizedBody860_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_322

def optimizedBody860_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_323

def optimizedBody860_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_93 optimizedBody860_324

def optimizedBody860_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_325

def optimizedBody860_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_326

def optimizedBody860_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_327

def optimizedBody860_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_328

def optimizedBody860_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_329

def optimizedBody860_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_330

def optimizedBody860_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_92 optimizedBody860_331

def optimizedBody860_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_332

def optimizedBody860_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_91 optimizedBody860_333

def optimizedBody860_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_334

def optimizedBody860_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_335

def optimizedBody860_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_90 optimizedBody860_336

def optimizedBody860_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_337

def optimizedBody860_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_338

def optimizedBody860_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_89 optimizedBody860_339

def optimizedBody860_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_340

def optimizedBody860_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_341

def optimizedBody860_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_342

def optimizedBody860_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_343

def optimizedBody860_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_344

def optimizedBody860_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_345

def optimizedBody860_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_346

def optimizedBody860_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_347

def optimizedBody860_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_88 optimizedBody860_348

def optimizedBody860_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_349

def optimizedBody860_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_350

def optimizedBody860_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_351

def optimizedBody860_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_352

def optimizedBody860_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_353

def optimizedBody860_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_354

def optimizedBody860_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_87 optimizedBody860_355

def optimizedBody860_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_356

def optimizedBody860_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_86 optimizedBody860_357

def optimizedBody860_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_358

def optimizedBody860_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_359

def optimizedBody860_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_85 optimizedBody860_360

def optimizedBody860_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_361

def optimizedBody860_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_362

def optimizedBody860_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_84 optimizedBody860_363

def optimizedBody860_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_364

def optimizedBody860_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_365

def optimizedBody860_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_366

def optimizedBody860_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_367

def optimizedBody860_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_368

def optimizedBody860_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_369

def optimizedBody860_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_370

def optimizedBody860_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_371

def optimizedBody860_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_83 optimizedBody860_372

def optimizedBody860_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_373

def optimizedBody860_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_374

def optimizedBody860_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_375

def optimizedBody860_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_376

def optimizedBody860_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_377

def optimizedBody860_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_378

def optimizedBody860_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_82 optimizedBody860_379

def optimizedBody860_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_380

def optimizedBody860_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_81 optimizedBody860_381

def optimizedBody860_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_382

def optimizedBody860_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_383

def optimizedBody860_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_80 optimizedBody860_384

def optimizedBody860_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_385

def optimizedBody860_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_386

def optimizedBody860_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_79 optimizedBody860_387

def optimizedBody860_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_388

def optimizedBody860_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_389

def optimizedBody860_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_390

def optimizedBody860_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_391

def optimizedBody860_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_392

def optimizedBody860_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_393

def optimizedBody860_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_394

def optimizedBody860_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_395

def optimizedBody860_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_78 optimizedBody860_396

def optimizedBody860_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_397

def optimizedBody860_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_398

def optimizedBody860_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_399

def optimizedBody860_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_400

def optimizedBody860_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_401

def optimizedBody860_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_402

def optimizedBody860_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_77 optimizedBody860_403

def optimizedBody860_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_404

def optimizedBody860_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_76 optimizedBody860_405

def optimizedBody860_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_406

def optimizedBody860_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_407

def optimizedBody860_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_75 optimizedBody860_408

def optimizedBody860_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_409

def optimizedBody860_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_410

def optimizedBody860_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_74 optimizedBody860_411

def optimizedBody860_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_412

def optimizedBody860_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_413

def optimizedBody860_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_414

def optimizedBody860_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_415

def optimizedBody860_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_416

def optimizedBody860_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_417

def optimizedBody860_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_418

def optimizedBody860_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_419

def optimizedBody860_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_73 optimizedBody860_420

def optimizedBody860_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_421

def optimizedBody860_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_422

def optimizedBody860_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_423

def optimizedBody860_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_424

def optimizedBody860_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_425

def optimizedBody860_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_426

def optimizedBody860_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_72 optimizedBody860_427

def optimizedBody860_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_428

def optimizedBody860_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_67 optimizedBody860_429

def optimizedBody860_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_430

def optimizedBody860_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_431

def optimizedBody860_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_66 optimizedBody860_432

def optimizedBody860_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_433

def optimizedBody860_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_434

def optimizedBody860_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_63 optimizedBody860_435

def optimizedBody860_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_436

def optimizedBody860_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_437

def optimizedBody860_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_438

def optimizedBody860_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_439

def optimizedBody860_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_440

def optimizedBody860_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_441

def optimizedBody860_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_442

def optimizedBody860_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_443

def optimizedBody860_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_49 optimizedBody860_444

def optimizedBody860_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_445

def optimizedBody860_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_446

def optimizedBody860_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_447

def optimizedBody860_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_448

def optimizedBody860_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_449

def optimizedBody860_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_450

def optimizedBody860_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_39 optimizedBody860_451

def optimizedBody860_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_35 optimizedBody860_452

def optimizedBody860_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_453

def optimizedBody860_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_23 optimizedBody860_454

def optimizedBody860_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_455

def optimizedBody860_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_34 optimizedBody860_456

def optimizedBody860_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_32 optimizedBody860_457

def optimizedBody860_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_31 optimizedBody860_458

def optimizedBody860_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_459

def optimizedBody860_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_460

def optimizedBody860_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_29 optimizedBody860_461

def optimizedBody860_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_25 optimizedBody860_462

def optimizedBody860_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_463

def optimizedBody860_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_23 optimizedBody860_464

def optimizedBody860_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_22 optimizedBody860_465

def optimizedBody860_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_466

def optimizedBody860_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_21 optimizedBody860_467

def optimizedBody860_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_17 optimizedBody860_468

def optimizedBody860_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_469

def optimizedBody860_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_470

def optimizedBody860_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_16 optimizedBody860_471

def optimizedBody860_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_1 optimizedBody860_472

def optimizedBody860_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_0 optimizedBody860_473

def oracle860 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    1 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 1))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 25 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                    0 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                    1 (Flapjack.Spt.ls 1))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 24 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 24)))
                  0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 1 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 2 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 25 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1))))))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                    27
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 2 (Flapjack.Spt.ls 1)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 25 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1))) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                    25 (Flapjack.Spt.ls 1))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
                  27
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))
                    2 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 24
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)) 2 (Flapjack.Spt.ls 1)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  4
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22)))
                  25
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 25 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 22 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))
                  27
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 2))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2 (Flapjack.Spt.ls 3)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.ls 0))
                  22
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    2 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) 25
                      (Flapjack.Spt.ls 1)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  23
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23))))
                  27 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)
                  22 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 27 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) 27 Flapjack.Spt.ln)
                    (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  25
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                27
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))
                  23 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 23 Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)
                  24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 27 Flapjack.Spt.ln)))))))))
def optimized860 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(860, 4, optimizedBody860_474)
end InitECandidate.Proofs.SmallStages.Oracles860
