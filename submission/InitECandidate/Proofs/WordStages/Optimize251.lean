import InitECandidate.Proofs.WordStages.Optimize235
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source251
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody251_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (0, 0), (10, 2), (6, 6)]

def optimizedBody251_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody251_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody251_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody251_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody251_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody251_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_4 optimizedBody251_5

def optimizedBody251_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_3 optimizedBody251_6

def optimizedBody251_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_1 optimizedBody251_7

def optimizedBody251_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_8

def optimizedBody251_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody251_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody251_9 optimizedBody251_10

def optimizedBody251_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody251_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody251_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody251_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 10), (52, 6)]

def optimizedBody251_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (10, 48), (52, 52)]

def optimizedBody251_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (10, 48), (52, 52)]

def optimizedBody251_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody251_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_17 optimizedBody251_18

def optimizedBody251_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody251_16, 251, 2)) (some 245) ([2]) (some (2, optimizedBody251_19, 251, 3))

def optimizedBody251_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (8, 8), (10, 10), (52, 52)]

def optimizedBody251_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_21

def optimizedBody251_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_20 optimizedBody251_22

def optimizedBody251_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_15 optimizedBody251_23

def optimizedBody251_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_14 optimizedBody251_24

def optimizedBody251_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_25

def optimizedBody251_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (8, 8), (10, 10), (52, 6)]

def optimizedBody251_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_27

def optimizedBody251_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody251_26 optimizedBody251_28

def optimizedBody251_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody251_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody251_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody251_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody251_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody251_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody251_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody251_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody251_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody251_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody251_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody251_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody251_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody251_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody251_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody251_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody251_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody251_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody251_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody251_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody251_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_48 optimizedBody251_49

def optimizedBody251_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_1 optimizedBody251_49

def optimizedBody251_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody251_50 optimizedBody251_51

def optimizedBody251_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody251_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody251_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody251_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody251_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_55 optimizedBody251_56

def optimizedBody251_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_54 optimizedBody251_56

def optimizedBody251_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody251_57 optimizedBody251_58

def optimizedBody251_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody251_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody251_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody251_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_61 optimizedBody251_62

def optimizedBody251_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_3 optimizedBody251_62

def optimizedBody251_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 0) optimizedBody251_63 optimizedBody251_64

def optimizedBody251_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody251_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody251_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody251_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 21#64)

def optimizedBody251_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 8), (50, 10), (48, 0), (52, 52)]

def optimizedBody251_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 50), (0, 48), (6, 52)]

def optimizedBody251_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48), (6, 52)]

def optimizedBody251_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_72 optimizedBody251_18

def optimizedBody251_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody251_71, 251, 4)) (some 245) ([2]) (some (2, optimizedBody251_73, 251, 5))

def optimizedBody251_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (50, 50), (0, 0), (6, 6)]

def optimizedBody251_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_75

def optimizedBody251_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_74 optimizedBody251_76

def optimizedBody251_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_70 optimizedBody251_77

def optimizedBody251_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_69 optimizedBody251_78

def optimizedBody251_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_79

def optimizedBody251_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 8), (50, 10), (0, 0), (6, 52)]

def optimizedBody251_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_81

def optimizedBody251_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 2) optimizedBody251_80 optimizedBody251_82

def optimizedBody251_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody251_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody251_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 22#64)

def optimizedBody251_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 4), (50, 50), (52, 0), (54, 6)]

def optimizedBody251_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody251_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody251_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_89 optimizedBody251_18

def optimizedBody251_91 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody251_88, 251, 6)) (some 245) ([2]) (some (2, optimizedBody251_90, 251, 7))

def optimizedBody251_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (4, 4), (50, 50), (52, 52), (54, 54)]

def optimizedBody251_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_92

def optimizedBody251_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_91 optimizedBody251_93

def optimizedBody251_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_87 optimizedBody251_94

def optimizedBody251_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_86 optimizedBody251_95

def optimizedBody251_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_96

def optimizedBody251_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (4, 4), (50, 50), (52, 0), (54, 6)]

def optimizedBody251_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_98

def optimizedBody251_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody251_97 optimizedBody251_99

def optimizedBody251_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody251_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54)]

def optimizedBody251_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (16, 46), (4, 48), (12, 50), (0, 52), (48, 54)]

def optimizedBody251_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (4, 48), (12, 50), (0, 52), (48, 54)]

def optimizedBody251_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_104 optimizedBody251_18

def optimizedBody251_106 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody251_103, 251, 8)) (some 68) ([2]) (some (2, optimizedBody251_105, 251, 9))

def optimizedBody251_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 0), (16, 16), (4, 4), (12, 12), (2, 2), (0, 0), (48, 48), (46, 6)]

def optimizedBody251_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody251_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody251_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody251_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 6 (Flapjack.WordRegImm.reg 12)))

def optimizedBody251_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody251_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (52, 12), (56, 2)]

def optimizedBody251_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (52, 52), (56, 56)]

def optimizedBody251_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 10 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody251_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody251_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody251_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody251_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody251_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody251_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody251_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody251_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody251_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody251_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody251_50 optimizedBody251_51

def optimizedBody251_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (16, 16)]

def optimizedBody251_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody251_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody251_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_127 optimizedBody251_128

def optimizedBody251_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody251_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_130 optimizedBody251_128

def optimizedBody251_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 6) optimizedBody251_129 optimizedBody251_131

def optimizedBody251_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 14), (14, 6)]

def optimizedBody251_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 10) optimizedBody251_57 optimizedBody251_58

def optimizedBody251_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody251_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody251_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody251_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody251_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 10), (48, 16), (50, 4), (52, 52), (54, 14), (56, 56), (58, 0), (60, 48), (62, 46)]

def optimizedBody251_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(18, 44), (10, 46), (16, 48), (4, 50), (12, 52), (14, 54), (6, 56), (0, 58), (22, 60), (8, 62)]

def optimizedBody251_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (18, 44), (10, 46), (16, 48), (4, 50), (12, 52), (14, 54), (6, 56), (0, 58), (22, 60), (8, 62)]

def optimizedBody251_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_141 optimizedBody251_18

def optimizedBody251_143 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody251_140, 251, 10)) (some 245) ([2]) (some (2, optimizedBody251_142, 251, 11))

def optimizedBody251_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 18), (10, 10), (16, 16), (4, 4), (12, 12), (14, 14), (6, 6), (0, 0), (22, 22), (8, 8)]

def optimizedBody251_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_144

def optimizedBody251_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_143 optimizedBody251_145

def optimizedBody251_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_139 optimizedBody251_146

def optimizedBody251_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_138 optimizedBody251_147

def optimizedBody251_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_148

def optimizedBody251_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 44), (10, 10), (16, 16), (4, 4), (12, 52), (14, 14), (6, 56), (0, 0), (22, 48), (8, 46)]

def optimizedBody251_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_150

def optimizedBody251_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 2) optimizedBody251_149 optimizedBody251_151

def optimizedBody251_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody251_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody251_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody251_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody251_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (14, 14)]

def optimizedBody251_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 14 (Flapjack.WordRegImm.reg 10)))

def optimizedBody251_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (2, 2)]

def optimizedBody251_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody251_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (6, 6), (8, 8)]

def optimizedBody251_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_160 optimizedBody251_161

def optimizedBody251_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_159 optimizedBody251_162

def optimizedBody251_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_158 optimizedBody251_163

def optimizedBody251_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_157 optimizedBody251_164

def optimizedBody251_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_156 optimizedBody251_165

def optimizedBody251_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_155 optimizedBody251_166

def optimizedBody251_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_12 optimizedBody251_167

def optimizedBody251_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_154 optimizedBody251_168

def optimizedBody251_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_153 optimizedBody251_169

def optimizedBody251_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_38 optimizedBody251_170

def optimizedBody251_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_171

def optimizedBody251_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_161

def optimizedBody251_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 6) optimizedBody251_172 optimizedBody251_173

def optimizedBody251_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody251_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody251_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (14, 14)]

def optimizedBody251_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody251_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody251_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody251_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (14, 14)]

def optimizedBody251_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody251_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 18), (14, 14), (16, 16), (4, 4), (12, 12), (2, 2), (0, 0), (48, 22), (46, 8)]

def optimizedBody251_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody251_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_183 optimizedBody251_184

def optimizedBody251_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_182 optimizedBody251_185

def optimizedBody251_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_181 optimizedBody251_186

def optimizedBody251_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_180 optimizedBody251_187

def optimizedBody251_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_179 optimizedBody251_188

def optimizedBody251_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_178 optimizedBody251_189

def optimizedBody251_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_177 optimizedBody251_190

def optimizedBody251_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_176 optimizedBody251_191

def optimizedBody251_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_12 optimizedBody251_192

def optimizedBody251_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_175 optimizedBody251_193

def optimizedBody251_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_38 optimizedBody251_194

def optimizedBody251_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_195

def optimizedBody251_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_174 optimizedBody251_196

def optimizedBody251_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_38 optimizedBody251_197

def optimizedBody251_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_1 optimizedBody251_198

def optimizedBody251_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_199

def optimizedBody251_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_152 optimizedBody251_200

def optimizedBody251_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_137 optimizedBody251_201

def optimizedBody251_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_43 optimizedBody251_202

def optimizedBody251_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_136 optimizedBody251_203

def optimizedBody251_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_135 optimizedBody251_204

def optimizedBody251_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_66 optimizedBody251_205

def optimizedBody251_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_206

def optimizedBody251_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_134 optimizedBody251_207

def optimizedBody251_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_133 optimizedBody251_208

def optimizedBody251_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_209

def optimizedBody251_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_132 optimizedBody251_210

def optimizedBody251_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_126 optimizedBody251_211

def optimizedBody251_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_212

def optimizedBody251_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_125 optimizedBody251_213

def optimizedBody251_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_124 optimizedBody251_214

def optimizedBody251_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_123 optimizedBody251_215

def optimizedBody251_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_38 optimizedBody251_216

def optimizedBody251_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_122 optimizedBody251_217

def optimizedBody251_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_44 optimizedBody251_218

def optimizedBody251_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_43 optimizedBody251_219

def optimizedBody251_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_121 optimizedBody251_220

def optimizedBody251_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_120 optimizedBody251_221

def optimizedBody251_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_12 optimizedBody251_222

def optimizedBody251_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_119 optimizedBody251_223

def optimizedBody251_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_30 optimizedBody251_224

def optimizedBody251_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_118 optimizedBody251_225

def optimizedBody251_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_117 optimizedBody251_226

def optimizedBody251_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_114 optimizedBody251_227

def optimizedBody251_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_116 optimizedBody251_228

def optimizedBody251_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_115 optimizedBody251_229

def optimizedBody251_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_114 optimizedBody251_230

def optimizedBody251_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_33 optimizedBody251_231

def optimizedBody251_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_32 optimizedBody251_232

def optimizedBody251_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_113 optimizedBody251_233

def optimizedBody251_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_112 optimizedBody251_234

def optimizedBody251_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_111 optimizedBody251_235

def optimizedBody251_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_110 optimizedBody251_236

def optimizedBody251_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_109 optimizedBody251_237

def optimizedBody251_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_43 optimizedBody251_238

def optimizedBody251_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_239

def optimizedBody251_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody251_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_62 optimizedBody251_241

def optimizedBody251_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_242

def optimizedBody251_244 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 4) optimizedBody251_240 optimizedBody251_243

def optimizedBody251_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (14, 14), (16, 16), (4, 4), (12, 12), (2, 2), (0, 0), (48, 8), (46, 10)]

def optimizedBody251_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_245

def optimizedBody251_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_244 optimizedBody251_246

def optimizedBody251_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_108 optimizedBody251_247

def optimizedBody251_249 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody251_248 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody251_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody251_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody251_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody251_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody251_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody251_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (16, 16)]

def optimizedBody251_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody251_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody251_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody251_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody251_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_4 optimizedBody251_259

def optimizedBody251_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_258 optimizedBody251_260

def optimizedBody251_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_257 optimizedBody251_261

def optimizedBody251_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_256 optimizedBody251_262

def optimizedBody251_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_255 optimizedBody251_263

def optimizedBody251_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_254 optimizedBody251_264

def optimizedBody251_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_253 optimizedBody251_265

def optimizedBody251_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_252 optimizedBody251_266

def optimizedBody251_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_251 optimizedBody251_267

def optimizedBody251_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_250 optimizedBody251_268

def optimizedBody251_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_40 optimizedBody251_269

def optimizedBody251_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_270

def optimizedBody251_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_249 optimizedBody251_271

def optimizedBody251_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_107 optimizedBody251_272

def optimizedBody251_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_273

def optimizedBody251_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_46 optimizedBody251_274

def optimizedBody251_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_1 optimizedBody251_275

def optimizedBody251_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_276

def optimizedBody251_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_106 optimizedBody251_277

def optimizedBody251_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_102 optimizedBody251_278

def optimizedBody251_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_101 optimizedBody251_279

def optimizedBody251_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_40 optimizedBody251_280

def optimizedBody251_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_281

def optimizedBody251_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_100 optimizedBody251_282

def optimizedBody251_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_85 optimizedBody251_283

def optimizedBody251_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_84 optimizedBody251_284

def optimizedBody251_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_46 optimizedBody251_285

def optimizedBody251_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_286

def optimizedBody251_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_83 optimizedBody251_287

def optimizedBody251_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_45 optimizedBody251_288

def optimizedBody251_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_43 optimizedBody251_289

def optimizedBody251_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_68 optimizedBody251_290

def optimizedBody251_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_67 optimizedBody251_291

def optimizedBody251_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_66 optimizedBody251_292

def optimizedBody251_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_293

def optimizedBody251_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_65 optimizedBody251_294

def optimizedBody251_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_60 optimizedBody251_295

def optimizedBody251_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_296

def optimizedBody251_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_59 optimizedBody251_297

def optimizedBody251_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_54 optimizedBody251_298

def optimizedBody251_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_53 optimizedBody251_299

def optimizedBody251_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_46 optimizedBody251_300

def optimizedBody251_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_301

def optimizedBody251_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_52 optimizedBody251_302

def optimizedBody251_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_1 optimizedBody251_303

def optimizedBody251_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_46 optimizedBody251_304

def optimizedBody251_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_47 optimizedBody251_305

def optimizedBody251_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_46 optimizedBody251_306

def optimizedBody251_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_45 optimizedBody251_307

def optimizedBody251_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_44 optimizedBody251_308

def optimizedBody251_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_43 optimizedBody251_309

def optimizedBody251_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_42 optimizedBody251_310

def optimizedBody251_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_41 optimizedBody251_311

def optimizedBody251_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_40 optimizedBody251_312

def optimizedBody251_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_39 optimizedBody251_313

def optimizedBody251_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_38 optimizedBody251_314

def optimizedBody251_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_37 optimizedBody251_315

def optimizedBody251_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_36 optimizedBody251_316

def optimizedBody251_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_30 optimizedBody251_317

def optimizedBody251_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_35 optimizedBody251_318

def optimizedBody251_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_34 optimizedBody251_319

def optimizedBody251_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_30 optimizedBody251_320

def optimizedBody251_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_33 optimizedBody251_321

def optimizedBody251_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_32 optimizedBody251_322

def optimizedBody251_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_30 optimizedBody251_323

def optimizedBody251_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_31 optimizedBody251_324

def optimizedBody251_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_30 optimizedBody251_325

def optimizedBody251_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_326

def optimizedBody251_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_29 optimizedBody251_327

def optimizedBody251_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_13 optimizedBody251_328

def optimizedBody251_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_12 optimizedBody251_329

def optimizedBody251_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_330

def optimizedBody251_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_2 optimizedBody251_331

def optimizedBody251_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_11 optimizedBody251_332

def optimizedBody251_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_1 optimizedBody251_333

def optimizedBody251_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody251_0 optimizedBody251_334

def oracle251 : Option (Spt Nat) :=
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
def optimized251 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(251, 4, optimizedBody251_335)
theorem optimize251_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source251, oracle251) = optimized251 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize251_eq
end InitECandidate.Proofs.WordStages
