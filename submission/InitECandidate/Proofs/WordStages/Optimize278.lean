import InitECandidate.Proofs.WordStages.Optimize262
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source278
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody278_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody278_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody278_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody278_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody278_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody278_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody278_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody278_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody278_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody278_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody278_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_9

def optimizedBody278_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_7 optimizedBody278_10

def optimizedBody278_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_6 optimizedBody278_11

def optimizedBody278_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_5 optimizedBody278_12

def optimizedBody278_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_4 optimizedBody278_13

def optimizedBody278_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_14

def optimizedBody278_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody278_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody278_15 optimizedBody278_16

def optimizedBody278_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody278_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody278_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody278_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody278_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody278_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_22 optimizedBody278_9

def optimizedBody278_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_21, 278, 2)) (some 68) ([2]) (some (2, optimizedBody278_23, 278, 3))

def optimizedBody278_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody278_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody278_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody278_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 4)]

def optimizedBody278_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (8, 46), (6, 48), (50, 50)]

def optimizedBody278_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (6, 48), (50, 50)]

def optimizedBody278_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_30 optimizedBody278_9

def optimizedBody278_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_29, 278, 4)) (some 68) ([2]) (some (2, optimizedBody278_31, 278, 5))

def optimizedBody278_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody278_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (46, 4), (8, 8), (48, 6), (50, 50)]

def optimizedBody278_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody278_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody278_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48)]

def optimizedBody278_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody278_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody278_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (52, 6), (48, 0)]

def optimizedBody278_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody278_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 48), (48, 46), (50, 8), (52, 52), (54, 50)]

def optimizedBody278_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (8, 48), (50, 50), (6, 52), (10, 54)]

def optimizedBody278_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (50, 50), (6, 52), (10, 54)]

def optimizedBody278_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_44 optimizedBody278_9

def optimizedBody278_46 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody278_43, 278, 6)) (some 274) ([2, 4]) (some (2, optimizedBody278_45, 278, 7))

def optimizedBody278_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody278_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody278_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody278_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody278_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody278_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody278_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (52, 6), (0, 0)]

def optimizedBody278_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody278_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody278_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody278_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 50), (52, 52), (54, 10)]

def optimizedBody278_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (8, 50), (48, 52), (6, 54)]

def optimizedBody278_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (8, 50), (48, 52), (6, 54)]

def optimizedBody278_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_59 optimizedBody278_9

def optimizedBody278_61 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody278_58, 278, 8)) (some 158) ([2, 4, 6]) (some (2, optimizedBody278_60, 278, 9))

def optimizedBody278_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody278_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 4), (8, 8), (48, 48), (50, 6)]

def optimizedBody278_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody278_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_63 optimizedBody278_64

def optimizedBody278_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_62 optimizedBody278_65

def optimizedBody278_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_66

def optimizedBody278_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_67

def optimizedBody278_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_61 optimizedBody278_68

def optimizedBody278_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_57 optimizedBody278_69

def optimizedBody278_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_56 optimizedBody278_70

def optimizedBody278_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_55 optimizedBody278_71

def optimizedBody278_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_54 optimizedBody278_72

def optimizedBody278_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_73

def optimizedBody278_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_41 optimizedBody278_74

def optimizedBody278_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_53 optimizedBody278_75

def optimizedBody278_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_39 optimizedBody278_76

def optimizedBody278_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_38 optimizedBody278_77

def optimizedBody278_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_52 optimizedBody278_78

def optimizedBody278_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_36 optimizedBody278_79

def optimizedBody278_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_80

def optimizedBody278_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_51 optimizedBody278_81

def optimizedBody278_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_50 optimizedBody278_82

def optimizedBody278_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_49 optimizedBody278_83

def optimizedBody278_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_48 optimizedBody278_84

def optimizedBody278_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_47 optimizedBody278_85

def optimizedBody278_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_86

def optimizedBody278_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_87

def optimizedBody278_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_46 optimizedBody278_88

def optimizedBody278_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_42 optimizedBody278_89

def optimizedBody278_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_41 optimizedBody278_90

def optimizedBody278_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_40 optimizedBody278_91

def optimizedBody278_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_39 optimizedBody278_92

def optimizedBody278_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_38 optimizedBody278_93

def optimizedBody278_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_37 optimizedBody278_94

def optimizedBody278_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_36 optimizedBody278_95

def optimizedBody278_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_96

def optimizedBody278_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_97

def optimizedBody278_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody278_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody278_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_99 optimizedBody278_100

def optimizedBody278_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_101

def optimizedBody278_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 8) optimizedBody278_98 optimizedBody278_102

def optimizedBody278_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (46, 4), (8, 8), (48, 6), (50, 10)]

def optimizedBody278_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_104

def optimizedBody278_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_103 optimizedBody278_105

def optimizedBody278_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_35 optimizedBody278_106

def optimizedBody278_108 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody278_107 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody278_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody278_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (10, 46), (8, 8), (46, 48), (12, 50)]

def optimizedBody278_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody278_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody278_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody278_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody278_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody278_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody278_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody278_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody278_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 10), (50, 8), (52, 46), (54, 12)]

def optimizedBody278_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46), (10, 48), (8, 50), (14, 52), (12, 54)]

def optimizedBody278_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46), (10, 48), (8, 50), (14, 52), (12, 54)]

def optimizedBody278_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_121 optimizedBody278_9

def optimizedBody278_123 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody278_120, 278, 10)) (some 79) ([2, 4, 6]) (some (2, optimizedBody278_122, 278, 11))

def optimizedBody278_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody278_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody278_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_125 optimizedBody278_13

def optimizedBody278_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_126

def optimizedBody278_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody278_127 optimizedBody278_16

def optimizedBody278_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (0, 0), (10, 10), (8, 8), (46, 14), (12, 12)]

def optimizedBody278_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_129 optimizedBody278_64

def optimizedBody278_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_62 optimizedBody278_130

def optimizedBody278_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_131

def optimizedBody278_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_132

def optimizedBody278_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_133

def optimizedBody278_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_128 optimizedBody278_134

def optimizedBody278_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_124 optimizedBody278_135

def optimizedBody278_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_2 optimizedBody278_136

def optimizedBody278_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_137

def optimizedBody278_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_123 optimizedBody278_138

def optimizedBody278_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_119 optimizedBody278_139

def optimizedBody278_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_118 optimizedBody278_140

def optimizedBody278_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_117 optimizedBody278_141

def optimizedBody278_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_48 optimizedBody278_142

def optimizedBody278_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_116 optimizedBody278_143

def optimizedBody278_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_115 optimizedBody278_144

def optimizedBody278_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_145

def optimizedBody278_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_114 optimizedBody278_146

def optimizedBody278_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_113 optimizedBody278_147

def optimizedBody278_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_112 optimizedBody278_148

def optimizedBody278_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_111 optimizedBody278_149

def optimizedBody278_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_47 optimizedBody278_150

def optimizedBody278_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_151

def optimizedBody278_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_152

def optimizedBody278_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_100

def optimizedBody278_155 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 8) optimizedBody278_153 optimizedBody278_154

def optimizedBody278_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (10, 10), (8, 8), (46, 4), (12, 12)]

def optimizedBody278_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_156

def optimizedBody278_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_155 optimizedBody278_157

def optimizedBody278_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_35 optimizedBody278_158

def optimizedBody278_160 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody278_159 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody278_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12), (4, 10)]

def optimizedBody278_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody278_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_161 optimizedBody278_162

def optimizedBody278_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_163

def optimizedBody278_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_160 optimizedBody278_164

def optimizedBody278_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_110 optimizedBody278_165

def optimizedBody278_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_166

def optimizedBody278_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_109 optimizedBody278_167

def optimizedBody278_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_168

def optimizedBody278_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_108 optimizedBody278_169

def optimizedBody278_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_34 optimizedBody278_170

def optimizedBody278_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_171

def optimizedBody278_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_33 optimizedBody278_172

def optimizedBody278_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_173

def optimizedBody278_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_32 optimizedBody278_174

def optimizedBody278_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_28 optimizedBody278_175

def optimizedBody278_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_27 optimizedBody278_176

def optimizedBody278_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_26 optimizedBody278_177

def optimizedBody278_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_178

def optimizedBody278_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_179

def optimizedBody278_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_24 optimizedBody278_180

def optimizedBody278_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_181

def optimizedBody278_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_182

def optimizedBody278_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_18 optimizedBody278_183

def optimizedBody278_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_2 optimizedBody278_184

def optimizedBody278_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_185

def optimizedBody278_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_3 optimizedBody278_186

def optimizedBody278_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_17 optimizedBody278_187

def optimizedBody278_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_2 optimizedBody278_188

def optimizedBody278_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_1 optimizedBody278_189

def optimizedBody278_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_0 optimizedBody278_190

def oracle278 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                24
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 3)))))
            3
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                22 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 24 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                0 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 5)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)) 25
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 0 (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 2)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 2)))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 23
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 25 (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 26)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 24 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def optimized278 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(278, 3, optimizedBody278_191)
theorem optimize278_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source278, oracle278) = optimized278 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize278_eq
end InitECandidate.Proofs.WordStages
