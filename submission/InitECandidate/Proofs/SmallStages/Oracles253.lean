import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source253
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles253
def optimizedBody253_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (0, 0), (10, 2), (6, 6)]

def optimizedBody253_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody253_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody253_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody253_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody253_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody253_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_4 optimizedBody253_5

def optimizedBody253_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_3 optimizedBody253_6

def optimizedBody253_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_1 optimizedBody253_7

def optimizedBody253_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_8

def optimizedBody253_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody253_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody253_9 optimizedBody253_10

def optimizedBody253_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody253_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody253_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody253_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 10), (52, 6)]

def optimizedBody253_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (10, 48), (52, 52)]

def optimizedBody253_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (10, 48), (52, 52)]

def optimizedBody253_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody253_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_17 optimizedBody253_18

def optimizedBody253_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody253_16, 253, 2)) (some 251) ([2]) (some (2, optimizedBody253_19, 253, 3))

def optimizedBody253_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (8, 8), (10, 10), (52, 52)]

def optimizedBody253_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_21

def optimizedBody253_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_20 optimizedBody253_22

def optimizedBody253_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_15 optimizedBody253_23

def optimizedBody253_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_14 optimizedBody253_24

def optimizedBody253_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_25

def optimizedBody253_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (8, 8), (10, 10), (52, 6)]

def optimizedBody253_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_27

def optimizedBody253_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody253_26 optimizedBody253_28

def optimizedBody253_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody253_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody253_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody253_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody253_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody253_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody253_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody253_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody253_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody253_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody253_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody253_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody253_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody253_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody253_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody253_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody253_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody253_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody253_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody253_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody253_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_48 optimizedBody253_49

def optimizedBody253_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_1 optimizedBody253_49

def optimizedBody253_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody253_50 optimizedBody253_51

def optimizedBody253_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody253_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody253_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody253_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody253_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_55 optimizedBody253_56

def optimizedBody253_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_54 optimizedBody253_56

def optimizedBody253_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody253_57 optimizedBody253_58

def optimizedBody253_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody253_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody253_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody253_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_61 optimizedBody253_62

def optimizedBody253_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_3 optimizedBody253_62

def optimizedBody253_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 0) optimizedBody253_63 optimizedBody253_64

def optimizedBody253_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody253_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody253_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody253_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 21#64)

def optimizedBody253_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 8), (50, 10), (48, 0), (52, 52)]

def optimizedBody253_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 50), (0, 48), (6, 52)]

def optimizedBody253_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48), (6, 52)]

def optimizedBody253_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_72 optimizedBody253_18

def optimizedBody253_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody253_71, 253, 4)) (some 251) ([2]) (some (2, optimizedBody253_73, 253, 5))

def optimizedBody253_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (50, 50), (0, 0), (6, 6)]

def optimizedBody253_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_75

def optimizedBody253_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_74 optimizedBody253_76

def optimizedBody253_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_70 optimizedBody253_77

def optimizedBody253_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_69 optimizedBody253_78

def optimizedBody253_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_79

def optimizedBody253_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 8), (50, 10), (0, 0), (6, 52)]

def optimizedBody253_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_81

def optimizedBody253_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 2) optimizedBody253_80 optimizedBody253_82

def optimizedBody253_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody253_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody253_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 22#64)

def optimizedBody253_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 4), (50, 50), (52, 0), (54, 6)]

def optimizedBody253_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody253_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody253_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_89 optimizedBody253_18

def optimizedBody253_91 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody253_88, 253, 6)) (some 251) ([2]) (some (2, optimizedBody253_90, 253, 7))

def optimizedBody253_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (4, 4), (50, 50), (52, 52), (54, 54)]

def optimizedBody253_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_92

def optimizedBody253_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_91 optimizedBody253_93

def optimizedBody253_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_87 optimizedBody253_94

def optimizedBody253_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_86 optimizedBody253_95

def optimizedBody253_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_96

def optimizedBody253_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (4, 4), (50, 50), (52, 0), (54, 6)]

def optimizedBody253_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_98

def optimizedBody253_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody253_97 optimizedBody253_99

def optimizedBody253_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody253_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54)]

def optimizedBody253_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (16, 46), (4, 48), (12, 50), (0, 52), (48, 54)]

def optimizedBody253_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (4, 48), (12, 50), (0, 52), (48, 54)]

def optimizedBody253_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_104 optimizedBody253_18

def optimizedBody253_106 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody253_103, 253, 8)) (some 68) ([2]) (some (2, optimizedBody253_105, 253, 9))

def optimizedBody253_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 0), (16, 16), (4, 4), (12, 12), (2, 2), (0, 0), (48, 48), (46, 6)]

def optimizedBody253_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody253_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody253_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody253_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 6 (Flapjack.WordRegImm.reg 12)))

def optimizedBody253_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody253_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (52, 12), (56, 2)]

def optimizedBody253_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (52, 52), (56, 56)]

def optimizedBody253_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 10 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody253_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody253_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody253_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody253_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody253_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody253_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody253_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody253_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody253_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody253_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody253_50 optimizedBody253_51

def optimizedBody253_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (16, 16)]

def optimizedBody253_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody253_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody253_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_127 optimizedBody253_128

def optimizedBody253_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody253_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_130 optimizedBody253_128

def optimizedBody253_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 6) optimizedBody253_129 optimizedBody253_131

def optimizedBody253_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 14), (14, 6)]

def optimizedBody253_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 10) optimizedBody253_57 optimizedBody253_58

def optimizedBody253_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody253_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody253_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody253_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody253_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 10), (48, 16), (50, 4), (52, 52), (54, 14), (56, 56), (58, 0), (60, 48), (62, 46)]

def optimizedBody253_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(18, 44), (10, 46), (16, 48), (4, 50), (12, 52), (14, 54), (6, 56), (0, 58), (22, 60), (8, 62)]

def optimizedBody253_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (18, 44), (10, 46), (16, 48), (4, 50), (12, 52), (14, 54), (6, 56), (0, 58), (22, 60), (8, 62)]

def optimizedBody253_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_141 optimizedBody253_18

def optimizedBody253_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody253_140, 253, 10)) (some 251) ([2]) (some (2, optimizedBody253_142, 253, 11))

def optimizedBody253_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 18), (10, 10), (16, 16), (4, 4), (12, 12), (14, 14), (6, 6), (0, 0), (22, 22), (8, 8)]

def optimizedBody253_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_144

def optimizedBody253_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_143 optimizedBody253_145

def optimizedBody253_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_139 optimizedBody253_146

def optimizedBody253_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_138 optimizedBody253_147

def optimizedBody253_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_148

def optimizedBody253_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 44), (10, 10), (16, 16), (4, 4), (12, 52), (14, 14), (6, 56), (0, 0), (22, 48), (8, 46)]

def optimizedBody253_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_150

def optimizedBody253_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 2) optimizedBody253_149 optimizedBody253_151

def optimizedBody253_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody253_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody253_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody253_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody253_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (14, 14)]

def optimizedBody253_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 14 (Flapjack.WordRegImm.reg 10)))

def optimizedBody253_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (2, 2)]

def optimizedBody253_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody253_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (6, 6), (8, 8)]

def optimizedBody253_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_160 optimizedBody253_161

def optimizedBody253_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_159 optimizedBody253_162

def optimizedBody253_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_158 optimizedBody253_163

def optimizedBody253_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_157 optimizedBody253_164

def optimizedBody253_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_156 optimizedBody253_165

def optimizedBody253_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_155 optimizedBody253_166

def optimizedBody253_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_12 optimizedBody253_167

def optimizedBody253_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_154 optimizedBody253_168

def optimizedBody253_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_153 optimizedBody253_169

def optimizedBody253_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_38 optimizedBody253_170

def optimizedBody253_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_171

def optimizedBody253_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_161

def optimizedBody253_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 6) optimizedBody253_172 optimizedBody253_173

def optimizedBody253_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody253_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody253_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (14, 14)]

def optimizedBody253_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody253_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody253_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody253_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (14, 14)]

def optimizedBody253_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody253_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 18), (14, 14), (16, 16), (4, 4), (12, 12), (2, 2), (0, 0), (48, 22), (46, 8)]

def optimizedBody253_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody253_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_183 optimizedBody253_184

def optimizedBody253_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_182 optimizedBody253_185

def optimizedBody253_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_181 optimizedBody253_186

def optimizedBody253_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_180 optimizedBody253_187

def optimizedBody253_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_179 optimizedBody253_188

def optimizedBody253_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_178 optimizedBody253_189

def optimizedBody253_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_177 optimizedBody253_190

def optimizedBody253_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_176 optimizedBody253_191

def optimizedBody253_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_12 optimizedBody253_192

def optimizedBody253_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_175 optimizedBody253_193

def optimizedBody253_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_38 optimizedBody253_194

def optimizedBody253_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_195

def optimizedBody253_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_174 optimizedBody253_196

def optimizedBody253_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_38 optimizedBody253_197

def optimizedBody253_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_1 optimizedBody253_198

def optimizedBody253_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_199

def optimizedBody253_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_152 optimizedBody253_200

def optimizedBody253_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_137 optimizedBody253_201

def optimizedBody253_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_43 optimizedBody253_202

def optimizedBody253_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_136 optimizedBody253_203

def optimizedBody253_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_135 optimizedBody253_204

def optimizedBody253_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_66 optimizedBody253_205

def optimizedBody253_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_206

def optimizedBody253_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_134 optimizedBody253_207

def optimizedBody253_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_133 optimizedBody253_208

def optimizedBody253_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_209

def optimizedBody253_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_132 optimizedBody253_210

def optimizedBody253_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_126 optimizedBody253_211

def optimizedBody253_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_212

def optimizedBody253_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_125 optimizedBody253_213

def optimizedBody253_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_124 optimizedBody253_214

def optimizedBody253_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_123 optimizedBody253_215

def optimizedBody253_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_38 optimizedBody253_216

def optimizedBody253_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_122 optimizedBody253_217

def optimizedBody253_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_44 optimizedBody253_218

def optimizedBody253_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_43 optimizedBody253_219

def optimizedBody253_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_121 optimizedBody253_220

def optimizedBody253_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_120 optimizedBody253_221

def optimizedBody253_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_12 optimizedBody253_222

def optimizedBody253_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_119 optimizedBody253_223

def optimizedBody253_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_30 optimizedBody253_224

def optimizedBody253_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_118 optimizedBody253_225

def optimizedBody253_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_117 optimizedBody253_226

def optimizedBody253_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_114 optimizedBody253_227

def optimizedBody253_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_116 optimizedBody253_228

def optimizedBody253_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_115 optimizedBody253_229

def optimizedBody253_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_114 optimizedBody253_230

def optimizedBody253_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_33 optimizedBody253_231

def optimizedBody253_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_32 optimizedBody253_232

def optimizedBody253_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_113 optimizedBody253_233

def optimizedBody253_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_112 optimizedBody253_234

def optimizedBody253_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_111 optimizedBody253_235

def optimizedBody253_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_110 optimizedBody253_236

def optimizedBody253_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_109 optimizedBody253_237

def optimizedBody253_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_43 optimizedBody253_238

def optimizedBody253_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_239

def optimizedBody253_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody253_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_62 optimizedBody253_241

def optimizedBody253_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_242

def optimizedBody253_244 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 4) optimizedBody253_240 optimizedBody253_243

def optimizedBody253_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (14, 14), (16, 16), (4, 4), (12, 12), (2, 2), (0, 0), (48, 8), (46, 10)]

def optimizedBody253_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_245

def optimizedBody253_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_244 optimizedBody253_246

def optimizedBody253_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_108 optimizedBody253_247

def optimizedBody253_249 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody253_248 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody253_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody253_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody253_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody253_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody253_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody253_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (16, 16)]

def optimizedBody253_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody253_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody253_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody253_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody253_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_4 optimizedBody253_259

def optimizedBody253_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_258 optimizedBody253_260

def optimizedBody253_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_257 optimizedBody253_261

def optimizedBody253_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_256 optimizedBody253_262

def optimizedBody253_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_255 optimizedBody253_263

def optimizedBody253_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_254 optimizedBody253_264

def optimizedBody253_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_253 optimizedBody253_265

def optimizedBody253_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_252 optimizedBody253_266

def optimizedBody253_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_251 optimizedBody253_267

def optimizedBody253_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_250 optimizedBody253_268

def optimizedBody253_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_40 optimizedBody253_269

def optimizedBody253_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_270

def optimizedBody253_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_249 optimizedBody253_271

def optimizedBody253_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_107 optimizedBody253_272

def optimizedBody253_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_273

def optimizedBody253_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_46 optimizedBody253_274

def optimizedBody253_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_1 optimizedBody253_275

def optimizedBody253_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_276

def optimizedBody253_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_106 optimizedBody253_277

def optimizedBody253_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_102 optimizedBody253_278

def optimizedBody253_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_101 optimizedBody253_279

def optimizedBody253_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_40 optimizedBody253_280

def optimizedBody253_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_281

def optimizedBody253_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_100 optimizedBody253_282

def optimizedBody253_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_85 optimizedBody253_283

def optimizedBody253_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_84 optimizedBody253_284

def optimizedBody253_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_46 optimizedBody253_285

def optimizedBody253_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_286

def optimizedBody253_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_83 optimizedBody253_287

def optimizedBody253_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_45 optimizedBody253_288

def optimizedBody253_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_43 optimizedBody253_289

def optimizedBody253_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_68 optimizedBody253_290

def optimizedBody253_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_67 optimizedBody253_291

def optimizedBody253_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_66 optimizedBody253_292

def optimizedBody253_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_293

def optimizedBody253_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_65 optimizedBody253_294

def optimizedBody253_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_60 optimizedBody253_295

def optimizedBody253_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_296

def optimizedBody253_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_59 optimizedBody253_297

def optimizedBody253_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_54 optimizedBody253_298

def optimizedBody253_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_53 optimizedBody253_299

def optimizedBody253_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_46 optimizedBody253_300

def optimizedBody253_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_301

def optimizedBody253_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_52 optimizedBody253_302

def optimizedBody253_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_1 optimizedBody253_303

def optimizedBody253_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_46 optimizedBody253_304

def optimizedBody253_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_47 optimizedBody253_305

def optimizedBody253_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_46 optimizedBody253_306

def optimizedBody253_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_45 optimizedBody253_307

def optimizedBody253_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_44 optimizedBody253_308

def optimizedBody253_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_43 optimizedBody253_309

def optimizedBody253_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_42 optimizedBody253_310

def optimizedBody253_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_41 optimizedBody253_311

def optimizedBody253_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_40 optimizedBody253_312

def optimizedBody253_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_39 optimizedBody253_313

def optimizedBody253_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_38 optimizedBody253_314

def optimizedBody253_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_37 optimizedBody253_315

def optimizedBody253_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_36 optimizedBody253_316

def optimizedBody253_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_30 optimizedBody253_317

def optimizedBody253_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_35 optimizedBody253_318

def optimizedBody253_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_34 optimizedBody253_319

def optimizedBody253_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_30 optimizedBody253_320

def optimizedBody253_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_33 optimizedBody253_321

def optimizedBody253_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_32 optimizedBody253_322

def optimizedBody253_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_30 optimizedBody253_323

def optimizedBody253_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_31 optimizedBody253_324

def optimizedBody253_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_30 optimizedBody253_325

def optimizedBody253_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_326

def optimizedBody253_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_29 optimizedBody253_327

def optimizedBody253_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_13 optimizedBody253_328

def optimizedBody253_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_12 optimizedBody253_329

def optimizedBody253_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_330

def optimizedBody253_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_2 optimizedBody253_331

def optimizedBody253_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_11 optimizedBody253_332

def optimizedBody253_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_1 optimizedBody253_333

def optimizedBody253_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody253_0 optimizedBody253_334

def oracle253 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 8)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 1 Flapjack.Spt.ln) 4
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1)) 23
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 23 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                  26 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 11)))
                  5 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 7)) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 5
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                  5 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 8)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 25
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)))
                  26 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                5
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 10)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 22
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))))))))
def optimized253 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(253, 4, optimizedBody253_335)
end InitECandidate.Proofs.SmallStages.Oracles253
