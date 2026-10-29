import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source326
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles326
def optimizedBody326_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (48, 2)]

def optimizedBody326_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48)]

def optimizedBody326_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48)]

def optimizedBody326_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody326_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_2 optimizedBody326_3

def optimizedBody326_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody326_1, 326, 2)) (some 75) ([]) (some (2, optimizedBody326_4, 326, 3))

def optimizedBody326_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody326_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody326_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48)]

def optimizedBody326_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (4, 48)]

def optimizedBody326_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (4, 48)]

def optimizedBody326_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_10 optimizedBody326_3

def optimizedBody326_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody326_9, 326, 4)) (some 74) ([2]) (some (2, optimizedBody326_11, 326, 5))

def optimizedBody326_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody326_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody326_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody326_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody326_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody326_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody326_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody326_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody326_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody326_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody326_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody326_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (50, 2), (44, 44), (48, 4)]

def optimizedBody326_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (50, 50), (44, 44), (48, 48)]

def optimizedBody326_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (50, 50), (44, 44), (48, 48)]

def optimizedBody326_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_26 optimizedBody326_3

def optimizedBody326_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody326_25, 326, 6)) (some 323) ([2, 4]) (some (2, optimizedBody326_27, 326, 7))

def optimizedBody326_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50)]

def optimizedBody326_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (50, 50), (44, 44), (48, 48), (8, 50)]

def optimizedBody326_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody326_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody326_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody326_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody326_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody326_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody326_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody326_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody326_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody326_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody326_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody326_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody326_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 50), (48, 2), (50, 44), (52, 4), (54, 48), (56, 8)]

def optimizedBody326_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (46, 46), (44, 44), (48, 48), (50, 50), (4, 52), (52, 54), (54, 56)]

def optimizedBody326_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (4, 52), (52, 54), (54, 56)]

def optimizedBody326_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_45 optimizedBody326_3

def optimizedBody326_47 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody326_44, 326, 8)) (some 325) ([2]) (some (2, optimizedBody326_46, 326, 9))

def optimizedBody326_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (44, 44), (6, 6), (48, 48), (50, 50), (4, 4), (52, 52), (54, 54)]

def optimizedBody326_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_48

def optimizedBody326_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_47 optimizedBody326_49

def optimizedBody326_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_43 optimizedBody326_50

def optimizedBody326_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_42 optimizedBody326_51

def optimizedBody326_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_33 optimizedBody326_52

def optimizedBody326_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_41 optimizedBody326_53

def optimizedBody326_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_22 optimizedBody326_54

def optimizedBody326_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_40 optimizedBody326_55

def optimizedBody326_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_39 optimizedBody326_56

def optimizedBody326_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_31 optimizedBody326_57

def optimizedBody326_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_58

def optimizedBody326_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (44, 50), (6, 6), (48, 10), (50, 44), (4, 4), (52, 48), (54, 8)]

def optimizedBody326_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_60

def optimizedBody326_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody326_59 optimizedBody326_61

def optimizedBody326_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_62 optimizedBody326_49

def optimizedBody326_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_38 optimizedBody326_63

def optimizedBody326_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_37 optimizedBody326_64

def optimizedBody326_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_31 optimizedBody326_65

def optimizedBody326_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_66

def optimizedBody326_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody326_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 50), (6, 6), (48, 10), (50, 44), (4, 4), (52, 48), (56, 2), (0, 0), (54, 8)]

def optimizedBody326_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody326_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody326_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody326_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_71 optimizedBody326_72

def optimizedBody326_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_73

def optimizedBody326_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody326_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_75 optimizedBody326_72

def optimizedBody326_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_76

def optimizedBody326_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 2) optimizedBody326_74 optimizedBody326_77

def optimizedBody326_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody326_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody326_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_40 optimizedBody326_80

def optimizedBody326_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_81

def optimizedBody326_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_38 optimizedBody326_80

def optimizedBody326_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_83

def optimizedBody326_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody326_82 optimizedBody326_84

def optimizedBody326_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody326_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody326_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody326_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody326_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody326_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody326_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 2), (50, 50), (52, 4), (54, 52), (56, 56), (58, 0), (60, 54)]

def optimizedBody326_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (46, 46), (44, 44), (48, 48), (50, 50), (4, 52), (52, 54), (8, 56), (0, 58), (10, 60)]

def optimizedBody326_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (4, 52), (52, 54), (8, 56), (0, 58), (10, 60)]

def optimizedBody326_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_94 optimizedBody326_3

def optimizedBody326_96 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody326_93, 326, 10)) (some 325) ([2]) (some (2, optimizedBody326_95, 326, 11))

def optimizedBody326_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (44, 44), (6, 6), (48, 48), (50, 50), (4, 4), (52, 52), (56, 8), (0, 0), (54, 10)]

def optimizedBody326_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody326_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_97 optimizedBody326_98

def optimizedBody326_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_99

def optimizedBody326_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_96 optimizedBody326_100

def optimizedBody326_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_92 optimizedBody326_101

def optimizedBody326_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_91 optimizedBody326_102

def optimizedBody326_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_22 optimizedBody326_103

def optimizedBody326_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_90 optimizedBody326_104

def optimizedBody326_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_89 optimizedBody326_105

def optimizedBody326_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_33 optimizedBody326_106

def optimizedBody326_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_88 optimizedBody326_107

def optimizedBody326_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_22 optimizedBody326_108

def optimizedBody326_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0)]

def optimizedBody326_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody326_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_110 optimizedBody326_111

def optimizedBody326_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody326_109 optimizedBody326_112

def optimizedBody326_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (44, 8), (6, 6), (48, 10), (50, 12), (4, 4), (52, 14), (56, 16), (0, 0), (54, 18)]

def optimizedBody326_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_114

def optimizedBody326_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_113 optimizedBody326_115

def optimizedBody326_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_87 optimizedBody326_116

def optimizedBody326_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_86 optimizedBody326_117

def optimizedBody326_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_118

def optimizedBody326_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_85 optimizedBody326_119

def optimizedBody326_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_38 optimizedBody326_120

def optimizedBody326_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_79 optimizedBody326_121

def optimizedBody326_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_122

def optimizedBody326_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_78 optimizedBody326_123

def optimizedBody326_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_70 optimizedBody326_124

def optimizedBody326_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_22 optimizedBody326_125

def optimizedBody326_127 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody326_126 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody326_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 54)]

def optimizedBody326_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody326_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody326_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (44, 44), (6, 6), (48, 48), (50, 50), (4, 4), (52, 52), (54, 8)]

def optimizedBody326_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_16 optimizedBody326_131

def optimizedBody326_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_130 optimizedBody326_132

def optimizedBody326_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_129 optimizedBody326_133

def optimizedBody326_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_128 optimizedBody326_134

def optimizedBody326_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_135

def optimizedBody326_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_127 optimizedBody326_136

def optimizedBody326_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_69 optimizedBody326_137

def optimizedBody326_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_138

def optimizedBody326_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_37 optimizedBody326_139

def optimizedBody326_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_31 optimizedBody326_140

def optimizedBody326_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_141

def optimizedBody326_143 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 0) optimizedBody326_142 optimizedBody326_61

def optimizedBody326_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_143 optimizedBody326_49

def optimizedBody326_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_68 optimizedBody326_144

def optimizedBody326_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_15 optimizedBody326_145

def optimizedBody326_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_146

def optimizedBody326_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 0) optimizedBody326_67 optimizedBody326_147

def optimizedBody326_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody326_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (46, 46), (44, 44), (4, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody326_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (4, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody326_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_151 optimizedBody326_3

def optimizedBody326_153 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody326_150, 326, 12)) (some 74) ([2]) (some (2, optimizedBody326_152, 326, 13))

def optimizedBody326_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (0, 0)]

def optimizedBody326_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (44, 44), (48, 48), (50, 50), (52, 2)]

def optimizedBody326_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (4, 48), (6, 50), (8, 52)]

def optimizedBody326_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (6, 50), (8, 52)]

def optimizedBody326_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_157 optimizedBody326_3

def optimizedBody326_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody326_156, 326, 14)) (some 323) ([2, 4]) (some (2, optimizedBody326_158, 326, 15))

def optimizedBody326_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (0, 0), (4, 4), (6, 6), (8, 8)]

def optimizedBody326_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_160

def optimizedBody326_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_159 optimizedBody326_161

def optimizedBody326_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_155 optimizedBody326_162

def optimizedBody326_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_23 optimizedBody326_163

def optimizedBody326_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_22 optimizedBody326_164

def optimizedBody326_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_21 optimizedBody326_165

def optimizedBody326_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_20 optimizedBody326_166

def optimizedBody326_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_15 optimizedBody326_167

def optimizedBody326_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_19 optimizedBody326_168

def optimizedBody326_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_18 optimizedBody326_169

def optimizedBody326_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_17 optimizedBody326_170

def optimizedBody326_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_15 optimizedBody326_171

def optimizedBody326_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_16 optimizedBody326_172

def optimizedBody326_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_154 optimizedBody326_173

def optimizedBody326_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_174

def optimizedBody326_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_153 optimizedBody326_175

def optimizedBody326_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_149 optimizedBody326_176

def optimizedBody326_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_7 optimizedBody326_177

def optimizedBody326_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_178

def optimizedBody326_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 54), (4, 4), (46, 46), (44, 44), (50, 50), (52, 52), (54, 54)]

def optimizedBody326_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (4, 50), (6, 52), (8, 54)]

def optimizedBody326_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 50), (6, 52), (8, 54)]

def optimizedBody326_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_182 optimizedBody326_3

def optimizedBody326_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody326_181, 326, 16)) (some 324) ([2, 4]) (some (2, optimizedBody326_183, 326, 17))

def optimizedBody326_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody326_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_185 optimizedBody326_160

def optimizedBody326_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_31 optimizedBody326_186

def optimizedBody326_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_187

def optimizedBody326_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_184 optimizedBody326_188

def optimizedBody326_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_180 optimizedBody326_189

def optimizedBody326_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_190

def optimizedBody326_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody326_179 optimizedBody326_191

def optimizedBody326_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (50, 0), (44, 4), (48, 6), (8, 8)]

def optimizedBody326_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_193 optimizedBody326_98

def optimizedBody326_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_194

def optimizedBody326_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_192 optimizedBody326_195

def optimizedBody326_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_14 optimizedBody326_196

def optimizedBody326_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_79 optimizedBody326_197

def optimizedBody326_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_198

def optimizedBody326_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_148 optimizedBody326_199

def optimizedBody326_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_36 optimizedBody326_200

def optimizedBody326_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_15 optimizedBody326_201

def optimizedBody326_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_21 optimizedBody326_202

def optimizedBody326_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_35 optimizedBody326_203

def optimizedBody326_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_34 optimizedBody326_204

def optimizedBody326_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_33 optimizedBody326_205

def optimizedBody326_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_32 optimizedBody326_206

def optimizedBody326_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_31 optimizedBody326_207

def optimizedBody326_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_208

def optimizedBody326_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_111

def optimizedBody326_211 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 0) optimizedBody326_209 optimizedBody326_210

def optimizedBody326_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (50, 2), (44, 4), (48, 6), (8, 8)]

def optimizedBody326_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_212

def optimizedBody326_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_211 optimizedBody326_213

def optimizedBody326_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_14 optimizedBody326_214

def optimizedBody326_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_31 optimizedBody326_215

def optimizedBody326_217 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody326_216 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody326_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (44, 46)]

def optimizedBody326_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody326_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody326_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_220 optimizedBody326_3

def optimizedBody326_222 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody326_219, 326, 18)) (some 76) ([2]) (some (2, optimizedBody326_221, 326, 19))

def optimizedBody326_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody326_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_15 optimizedBody326_223

def optimizedBody326_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_38 optimizedBody326_224

def optimizedBody326_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_225

def optimizedBody326_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_222 optimizedBody326_226

def optimizedBody326_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_218 optimizedBody326_227

def optimizedBody326_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_228

def optimizedBody326_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_217 optimizedBody326_229

def optimizedBody326_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_30 optimizedBody326_230

def optimizedBody326_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_231

def optimizedBody326_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_29 optimizedBody326_232

def optimizedBody326_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_233

def optimizedBody326_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_28 optimizedBody326_234

def optimizedBody326_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_24 optimizedBody326_235

def optimizedBody326_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_23 optimizedBody326_236

def optimizedBody326_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_22 optimizedBody326_237

def optimizedBody326_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_21 optimizedBody326_238

def optimizedBody326_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_20 optimizedBody326_239

def optimizedBody326_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_15 optimizedBody326_240

def optimizedBody326_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_19 optimizedBody326_241

def optimizedBody326_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_18 optimizedBody326_242

def optimizedBody326_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_17 optimizedBody326_243

def optimizedBody326_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_15 optimizedBody326_244

def optimizedBody326_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_16 optimizedBody326_245

def optimizedBody326_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_15 optimizedBody326_246

def optimizedBody326_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_14 optimizedBody326_247

def optimizedBody326_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_13 optimizedBody326_248

def optimizedBody326_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_249

def optimizedBody326_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_12 optimizedBody326_250

def optimizedBody326_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_8 optimizedBody326_251

def optimizedBody326_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_7 optimizedBody326_252

def optimizedBody326_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_253

def optimizedBody326_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_5 optimizedBody326_254

def optimizedBody326_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_0 optimizedBody326_255

def oracle326 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 3 (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  1 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 3 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 (Flapjack.Spt.ls 0)) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 4 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 0 (Flapjack.Spt.ls 2)))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 23))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)
                  1 (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) 24 Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 0)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                  0 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 (Flapjack.Spt.ls 25)))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.ls 25)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              24
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                23 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
              23
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                22
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 23
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))))))
def optimized326 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(326, 2, optimizedBody326_256)
end InitECandidate.Proofs.SmallStages.Oracles326
