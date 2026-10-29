import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source369
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles369
def optimizedBody369_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 2), (54, 6)]

def optimizedBody369_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody369_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody369_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody369_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_2 optimizedBody369_3

def optimizedBody369_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_1, 369, 2)) (some 368) ([2]) (some (2, optimizedBody369_4, 369, 3))

def optimizedBody369_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody369_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody369_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (54, 54)]

def optimizedBody369_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (54, 54)]

def optimizedBody369_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_9 optimizedBody369_3

def optimizedBody369_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_8, 369, 4)) (some 68) ([2]) (some (2, optimizedBody369_10, 369, 5))

def optimizedBody369_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody369_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody369_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (50, 2)]

def optimizedBody369_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody369_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody369_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody369_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 50)]

def optimizedBody369_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody369_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 2), (52, 6), (54, 54), (56, 2)]

def optimizedBody369_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (6, 56)]

def optimizedBody369_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (6, 56)]

def optimizedBody369_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_22 optimizedBody369_3

def optimizedBody369_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_21, 369, 6)) (some 177) ([2, 4]) (some (2, optimizedBody369_23, 369, 7))

def optimizedBody369_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody369_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody369_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (50, 50), (52, 52), (54, 54), (2, 2)]

def optimizedBody369_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_27

def optimizedBody369_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_28

def optimizedBody369_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_29

def optimizedBody369_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_24 optimizedBody369_30

def optimizedBody369_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_20 optimizedBody369_31

def optimizedBody369_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_19 optimizedBody369_32

def optimizedBody369_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_18 optimizedBody369_33

def optimizedBody369_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_34

def optimizedBody369_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (50, 50), (52, 6), (54, 54), (2, 50)]

def optimizedBody369_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_36

def optimizedBody369_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody369_35 optimizedBody369_37

def optimizedBody369_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody369_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody369_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody369_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody369_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody369_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody369_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 2)]

def optimizedBody369_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (50, 50), (12, 52), (54, 54), (6, 56)]

def optimizedBody369_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (12, 52), (54, 54), (6, 56)]

def optimizedBody369_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_47 optimizedBody369_3

def optimizedBody369_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_46, 369, 8)) (some 359) ([2, 4, 6, 8, 10]) (some (2, optimizedBody369_48, 369, 9))

def optimizedBody369_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody369_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody369_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody369_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody369_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody369_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody369_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody369_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 0), (50, 50), (52, 12), (54, 54), (56, 2)]

def optimizedBody369_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_21, 369, 10)) (some 359) ([2, 4, 6, 8, 10]) (some (2, optimizedBody369_23, 369, 11))

def optimizedBody369_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_58 optimizedBody369_30

def optimizedBody369_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_57 optimizedBody369_59

def optimizedBody369_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_56 optimizedBody369_60

def optimizedBody369_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_61

def optimizedBody369_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_55 optimizedBody369_62

def optimizedBody369_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_63

def optimizedBody369_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_54 optimizedBody369_64

def optimizedBody369_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_65

def optimizedBody369_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_53 optimizedBody369_66

def optimizedBody369_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_67

def optimizedBody369_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_68

def optimizedBody369_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody369_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody369_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody369_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 104#64))

def optimizedBody369_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_21, 369, 12)) (some 359) ([2, 4, 6, 8, 10]) (some (2, optimizedBody369_23, 369, 13))

def optimizedBody369_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody369_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody369_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody369_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody369_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_21, 369, 14)) (some 359) ([2, 4, 6, 8, 10]) (some (2, optimizedBody369_23, 369, 15))

def optimizedBody369_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_79 optimizedBody369_30

def optimizedBody369_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_45 optimizedBody369_80

def optimizedBody369_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_78 optimizedBody369_81

def optimizedBody369_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_82

def optimizedBody369_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_77 optimizedBody369_83

def optimizedBody369_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_84

def optimizedBody369_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_76 optimizedBody369_85

def optimizedBody369_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_86

def optimizedBody369_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_75 optimizedBody369_87

def optimizedBody369_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_88

def optimizedBody369_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_89

def optimizedBody369_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_90

def optimizedBody369_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_91

def optimizedBody369_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_74 optimizedBody369_92

def optimizedBody369_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_57 optimizedBody369_93

def optimizedBody369_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_73 optimizedBody369_94

def optimizedBody369_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_95

def optimizedBody369_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_72 optimizedBody369_96

def optimizedBody369_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_97

def optimizedBody369_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_71 optimizedBody369_98

def optimizedBody369_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_99

def optimizedBody369_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_70 optimizedBody369_100

def optimizedBody369_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_101

def optimizedBody369_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_102

def optimizedBody369_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 12) optimizedBody369_69 optimizedBody369_103

def optimizedBody369_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 144#64))

def optimizedBody369_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 2)]

def optimizedBody369_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_21, 369, 16)) (some 177) ([2, 4]) (some (2, optimizedBody369_23, 369, 17))

def optimizedBody369_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody369_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_21, 369, 18)) (some 361) ([2, 4]) (some (2, optimizedBody369_23, 369, 19))

def optimizedBody369_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody369_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody369_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody369_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 184#64))

def optimizedBody369_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_21, 369, 20)) (some 359) ([2, 4, 6, 8, 10]) (some (2, optimizedBody369_23, 369, 21))

def optimizedBody369_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 192#64))

def optimizedBody369_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 200#64))

def optimizedBody369_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 2)]

def optimizedBody369_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (12, 48), (50, 50), (0, 52), (54, 54), (6, 56)]

def optimizedBody369_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (50, 50), (0, 52), (54, 54), (6, 56)]

def optimizedBody369_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_119 optimizedBody369_3

def optimizedBody369_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_118, 369, 22)) (some 176) ([2, 4, 6]) (some (2, optimizedBody369_120, 369, 23))

def optimizedBody369_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody369_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 2)]

def optimizedBody369_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 208#64))

def optimizedBody369_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 216#64))

def optimizedBody369_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 12), (50, 50), (52, 0), (54, 54), (56, 2)]

def optimizedBody369_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_118, 369, 24)) (some 363) ([2, 4, 6]) (some (2, optimizedBody369_120, 369, 25))

def optimizedBody369_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (12, 12), (50, 50), (0, 0), (54, 54), (2, 2)]

def optimizedBody369_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_128

def optimizedBody369_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_129

def optimizedBody369_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_130

def optimizedBody369_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_127 optimizedBody369_131

def optimizedBody369_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_126 optimizedBody369_132

def optimizedBody369_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_125 optimizedBody369_133

def optimizedBody369_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_52 optimizedBody369_134

def optimizedBody369_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_124 optimizedBody369_135

def optimizedBody369_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_123 optimizedBody369_136

def optimizedBody369_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_137

def optimizedBody369_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_128

def optimizedBody369_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody369_138 optimizedBody369_139

def optimizedBody369_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody369_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 224#64))

def optimizedBody369_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 232#64))

def optimizedBody369_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 240#64))

def optimizedBody369_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 248#64))

def optimizedBody369_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 12), (50, 50), (52, 0), (54, 54), (56, 2)]

def optimizedBody369_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_21, 369, 26)) (some 359) ([2, 4, 6, 8, 10]) (some (2, optimizedBody369_23, 369, 27))

def optimizedBody369_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 256#64))

def optimizedBody369_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 264#64))

def optimizedBody369_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_118, 369, 28)) (some 364) ([2, 4, 6]) (some (2, optimizedBody369_120, 369, 29))

def optimizedBody369_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_150 optimizedBody369_131

def optimizedBody369_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_117 optimizedBody369_151

def optimizedBody369_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_149 optimizedBody369_152

def optimizedBody369_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_153

def optimizedBody369_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_148 optimizedBody369_154

def optimizedBody369_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_155

def optimizedBody369_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_156

def optimizedBody369_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_157

def optimizedBody369_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_158

def optimizedBody369_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_147 optimizedBody369_159

def optimizedBody369_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_146 optimizedBody369_160

def optimizedBody369_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_145 optimizedBody369_161

def optimizedBody369_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_52 optimizedBody369_162

def optimizedBody369_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_144 optimizedBody369_163

def optimizedBody369_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_52 optimizedBody369_164

def optimizedBody369_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_143 optimizedBody369_165

def optimizedBody369_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_52 optimizedBody369_166

def optimizedBody369_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_142 optimizedBody369_167

def optimizedBody369_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_123 optimizedBody369_168

def optimizedBody369_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_169

def optimizedBody369_171 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody369_170 optimizedBody369_139

def optimizedBody369_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody369_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 272#64))

def optimizedBody369_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 280#64))

def optimizedBody369_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (14, 46), (12, 48), (46, 50), (50, 52), (54, 54), (4, 56)]

def optimizedBody369_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (12, 48), (46, 50), (50, 52), (54, 54), (4, 56)]

def optimizedBody369_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_176 optimizedBody369_3

def optimizedBody369_178 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_175, 369, 30)) (some 367) ([2, 4, 6]) (some (2, optimizedBody369_177, 369, 31))

def optimizedBody369_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody369_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody369_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 14), (12, 12), (46, 46), (50, 50), (54, 54), (2, 2)]

def optimizedBody369_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_180 optimizedBody369_181

def optimizedBody369_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_179 optimizedBody369_182

def optimizedBody369_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_183

def optimizedBody369_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_178 optimizedBody369_184

def optimizedBody369_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_126 optimizedBody369_185

def optimizedBody369_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_174 optimizedBody369_186

def optimizedBody369_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_52 optimizedBody369_187

def optimizedBody369_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_173 optimizedBody369_188

def optimizedBody369_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_123 optimizedBody369_189

def optimizedBody369_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_190

def optimizedBody369_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 46), (12, 12), (46, 50), (50, 0), (54, 54), (2, 2)]

def optimizedBody369_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_192

def optimizedBody369_194 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody369_191 optimizedBody369_193

def optimizedBody369_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody369_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody369_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 288#64))

def optimizedBody369_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 296#64))

def optimizedBody369_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 304#64))

def optimizedBody369_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 312#64))

def optimizedBody369_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 14), (48, 12), (50, 46), (52, 50), (54, 54), (56, 2)]

def optimizedBody369_202 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_21, 369, 32)) (some 359) ([2, 4, 6, 8, 10]) (some (2, optimizedBody369_23, 369, 33))

def optimizedBody369_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 320#64))

def optimizedBody369_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 328#64))

def optimizedBody369_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 336#64))

def optimizedBody369_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 344#64))

def optimizedBody369_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (6, 56)]

def optimizedBody369_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (6, 56)]

def optimizedBody369_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_208 optimizedBody369_3

def optimizedBody369_210 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_207, 369, 34)) (some 359) ([2, 4, 6, 8, 10]) (some (2, optimizedBody369_209, 369, 35))

def optimizedBody369_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 352#64))

def optimizedBody369_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 360#64))

def optimizedBody369_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 368#64))

def optimizedBody369_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 376#64))

def optimizedBody369_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 2)]

def optimizedBody369_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (14, 46), (46, 48), (50, 50), (4, 52), (6, 54)]

def optimizedBody369_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (46, 48), (50, 50), (4, 52), (6, 54)]

def optimizedBody369_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_217 optimizedBody369_3

def optimizedBody369_219 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody369_216, 369, 36)) (some 359) ([2, 4, 6, 8, 10]) (some (2, optimizedBody369_218, 369, 37))

def optimizedBody369_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody369_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody369_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 14), (46, 46), (50, 50), (4, 4), (2, 2)]

def optimizedBody369_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_221 optimizedBody369_222

def optimizedBody369_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_220 optimizedBody369_223

def optimizedBody369_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_224

def optimizedBody369_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_219 optimizedBody369_225

def optimizedBody369_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_215 optimizedBody369_226

def optimizedBody369_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_214 optimizedBody369_227

def optimizedBody369_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_228

def optimizedBody369_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_213 optimizedBody369_229

def optimizedBody369_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_230

def optimizedBody369_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_212 optimizedBody369_231

def optimizedBody369_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_232

def optimizedBody369_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_211 optimizedBody369_233

def optimizedBody369_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_234

def optimizedBody369_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_235

def optimizedBody369_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_236

def optimizedBody369_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_237

def optimizedBody369_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_210 optimizedBody369_238

def optimizedBody369_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_45 optimizedBody369_239

def optimizedBody369_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_206 optimizedBody369_240

def optimizedBody369_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_241

def optimizedBody369_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_205 optimizedBody369_242

def optimizedBody369_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_243

def optimizedBody369_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_204 optimizedBody369_244

def optimizedBody369_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_245

def optimizedBody369_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_203 optimizedBody369_246

def optimizedBody369_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_247

def optimizedBody369_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_248

def optimizedBody369_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_249

def optimizedBody369_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_250

def optimizedBody369_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_202 optimizedBody369_251

def optimizedBody369_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_201 optimizedBody369_252

def optimizedBody369_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_200 optimizedBody369_253

def optimizedBody369_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_52 optimizedBody369_254

def optimizedBody369_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_199 optimizedBody369_255

def optimizedBody369_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_52 optimizedBody369_256

def optimizedBody369_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_198 optimizedBody369_257

def optimizedBody369_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_52 optimizedBody369_258

def optimizedBody369_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_197 optimizedBody369_259

def optimizedBody369_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_123 optimizedBody369_260

def optimizedBody369_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_261

def optimizedBody369_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 14), (46, 46), (50, 50), (4, 54), (2, 2)]

def optimizedBody369_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_263

def optimizedBody369_265 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 0) optimizedBody369_262 optimizedBody369_264

def optimizedBody369_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody369_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (50, 50), (48, 2)]

def optimizedBody369_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50), (6, 48)]

def optimizedBody369_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (6, 48)]

def optimizedBody369_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_269 optimizedBody369_3

def optimizedBody369_271 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_268, 369, 38)) (some 177) ([2, 4]) (some (2, optimizedBody369_270, 369, 39))

def optimizedBody369_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody369_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody369_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody369_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody369_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody369_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50), (2, 2)]

def optimizedBody369_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_276 optimizedBody369_277

def optimizedBody369_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_50 optimizedBody369_278

def optimizedBody369_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_275 optimizedBody369_279

def optimizedBody369_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_272 optimizedBody369_280

def optimizedBody369_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_274 optimizedBody369_281

def optimizedBody369_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_50 optimizedBody369_282

def optimizedBody369_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_273 optimizedBody369_283

def optimizedBody369_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_272 optimizedBody369_284

def optimizedBody369_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_50 optimizedBody369_285

def optimizedBody369_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_286

def optimizedBody369_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_287

def optimizedBody369_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_288

def optimizedBody369_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_271 optimizedBody369_289

def optimizedBody369_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_267 optimizedBody369_290

def optimizedBody369_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_291

def optimizedBody369_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (50, 50), (2, 2)]

def optimizedBody369_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_293

def optimizedBody369_295 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 0) optimizedBody369_292 optimizedBody369_294

def optimizedBody369_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 2)]

def optimizedBody369_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody369_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2), (48, 0), (50, 50), (52, 4)]

def optimizedBody369_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (46, 50), (50, 52)]

def optimizedBody369_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (46, 50), (50, 52)]

def optimizedBody369_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_300 optimizedBody369_3

def optimizedBody369_302 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_299, 369, 40)) (some 180) ([2]) (some (2, optimizedBody369_301, 369, 41))

def optimizedBody369_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody369_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2), (50, 50)]

def optimizedBody369_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody369_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody369_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_306 optimizedBody369_3

def optimizedBody369_308 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody369_305, 369, 42)) (some 178) ([2, 4]) (some (2, optimizedBody369_307, 369, 43))

def optimizedBody369_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody369_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody369_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody369_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_310 optimizedBody369_311

def optimizedBody369_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_220 optimizedBody369_312

def optimizedBody369_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_309 optimizedBody369_313

def optimizedBody369_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_314

def optimizedBody369_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_315

def optimizedBody369_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_311

def optimizedBody369_318 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody369_316 optimizedBody369_317

def optimizedBody369_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody369_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody369_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0), (4, 4)]

def optimizedBody369_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody369_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_321 optimizedBody369_322

def optimizedBody369_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_320 optimizedBody369_323

def optimizedBody369_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_319 optimizedBody369_324

def optimizedBody369_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_325

def optimizedBody369_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_318 optimizedBody369_326

def optimizedBody369_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_17 optimizedBody369_327

def optimizedBody369_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_16 optimizedBody369_328

def optimizedBody369_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_329

def optimizedBody369_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_308 optimizedBody369_330

def optimizedBody369_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_304 optimizedBody369_331

def optimizedBody369_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_303 optimizedBody369_332

def optimizedBody369_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_220 optimizedBody369_333

def optimizedBody369_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_334

def optimizedBody369_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_302 optimizedBody369_335

def optimizedBody369_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_298 optimizedBody369_336

def optimizedBody369_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_297 optimizedBody369_337

def optimizedBody369_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_296 optimizedBody369_338

def optimizedBody369_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_339

def optimizedBody369_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_295 optimizedBody369_340

def optimizedBody369_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_266 optimizedBody369_341

def optimizedBody369_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_195 optimizedBody369_342

def optimizedBody369_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_343

def optimizedBody369_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_265 optimizedBody369_344

def optimizedBody369_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_196 optimizedBody369_345

def optimizedBody369_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_195 optimizedBody369_346

def optimizedBody369_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_347

def optimizedBody369_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_194 optimizedBody369_348

def optimizedBody369_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_172 optimizedBody369_349

def optimizedBody369_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_350

def optimizedBody369_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_351

def optimizedBody369_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_171 optimizedBody369_352

def optimizedBody369_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_141 optimizedBody369_353

def optimizedBody369_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_354

def optimizedBody369_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_355

def optimizedBody369_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_140 optimizedBody369_356

def optimizedBody369_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_122 optimizedBody369_357

def optimizedBody369_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_358

def optimizedBody369_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_359

def optimizedBody369_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_360

def optimizedBody369_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_361

def optimizedBody369_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_121 optimizedBody369_362

def optimizedBody369_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_117 optimizedBody369_363

def optimizedBody369_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_116 optimizedBody369_364

def optimizedBody369_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_365

def optimizedBody369_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_115 optimizedBody369_366

def optimizedBody369_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_367

def optimizedBody369_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_368

def optimizedBody369_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_369

def optimizedBody369_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_370

def optimizedBody369_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_114 optimizedBody369_371

def optimizedBody369_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_45 optimizedBody369_372

def optimizedBody369_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_113 optimizedBody369_373

def optimizedBody369_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_374

def optimizedBody369_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_112 optimizedBody369_375

def optimizedBody369_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_376

def optimizedBody369_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_111 optimizedBody369_377

def optimizedBody369_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_378

def optimizedBody369_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_110 optimizedBody369_379

def optimizedBody369_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_380

def optimizedBody369_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_381

def optimizedBody369_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_382

def optimizedBody369_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_383

def optimizedBody369_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_109 optimizedBody369_384

def optimizedBody369_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_106 optimizedBody369_385

def optimizedBody369_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_108 optimizedBody369_386

def optimizedBody369_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_387

def optimizedBody369_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_388

def optimizedBody369_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_389

def optimizedBody369_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_390

def optimizedBody369_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_107 optimizedBody369_391

def optimizedBody369_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_106 optimizedBody369_392

def optimizedBody369_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_105 optimizedBody369_393

def optimizedBody369_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_394

def optimizedBody369_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_395

def optimizedBody369_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_104 optimizedBody369_396

def optimizedBody369_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_52 optimizedBody369_397

def optimizedBody369_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_51 optimizedBody369_398

def optimizedBody369_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_50 optimizedBody369_399

def optimizedBody369_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_26 optimizedBody369_400

def optimizedBody369_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_25 optimizedBody369_401

def optimizedBody369_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_402

def optimizedBody369_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_49 optimizedBody369_403

def optimizedBody369_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_45 optimizedBody369_404

def optimizedBody369_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_44 optimizedBody369_405

def optimizedBody369_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_406

def optimizedBody369_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_43 optimizedBody369_407

def optimizedBody369_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_408

def optimizedBody369_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_42 optimizedBody369_409

def optimizedBody369_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_41 optimizedBody369_410

def optimizedBody369_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_40 optimizedBody369_411

def optimizedBody369_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_39 optimizedBody369_412

def optimizedBody369_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_413

def optimizedBody369_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_38 optimizedBody369_414

def optimizedBody369_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_17 optimizedBody369_415

def optimizedBody369_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_16 optimizedBody369_416

def optimizedBody369_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_15 optimizedBody369_417

def optimizedBody369_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_14 optimizedBody369_418

def optimizedBody369_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_13 optimizedBody369_419

def optimizedBody369_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_12 optimizedBody369_420

def optimizedBody369_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_421

def optimizedBody369_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_11 optimizedBody369_422

def optimizedBody369_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_7 optimizedBody369_423

def optimizedBody369_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_6 optimizedBody369_424

def optimizedBody369_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_5 optimizedBody369_425

def optimizedBody369_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody369_0 optimizedBody369_426

def oracle369 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 3))) 0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 2)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 22)) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))
                    27 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 25
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 3)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 0)) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6)))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7))) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))
                    3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 2 Flapjack.Spt.ln))
                  22
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    Flapjack.Spt.ln)
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) 25
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)))))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 25))) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 6)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3)) 1 Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3)))))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 24))) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  23
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 1)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 27))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 2))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 2)))
                    22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))))
                  27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 27))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.ls 23)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))) 26
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 (Flapjack.Spt.ls 1)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 25)))))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                  23 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)) 27
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 25)) 26 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 27)) 28
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 25
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 27))))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                  22 Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)) 26
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24)) 25 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 26)) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                  24 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 26))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    Flapjack.Spt.ln)))))))))
def optimized369 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(369, 4, optimizedBody369_427)
end InitECandidate.Proofs.SmallStages.Oracles369
