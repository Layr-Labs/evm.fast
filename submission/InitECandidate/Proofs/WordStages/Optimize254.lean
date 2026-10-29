import InitECandidate.Proofs.WordStages.Optimize238
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source254
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody254_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (6, 2)]

def optimizedBody254_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody254_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody254_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 60#64)

def optimizedBody254_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody254_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48)]

def optimizedBody254_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody254_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody254_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_6 optimizedBody254_7

def optimizedBody254_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody254_5, 254, 2)) (some 245) ([2]) (some (2, optimizedBody254_8, 254, 3))

def optimizedBody254_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (6, 6)]

def optimizedBody254_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_10

def optimizedBody254_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_9 optimizedBody254_11

def optimizedBody254_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_4 optimizedBody254_12

def optimizedBody254_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_3 optimizedBody254_13

def optimizedBody254_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_14

def optimizedBody254_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4), (6, 6)]

def optimizedBody254_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_16

def optimizedBody254_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody254_15 optimizedBody254_17

def optimizedBody254_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody254_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 4), (2, 2), (58, 6)]

def optimizedBody254_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody254_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 5#64)

def optimizedBody254_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody254_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody254_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody254_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody254_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551504#64))

def optimizedBody254_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody254_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody254_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 58)]

def optimizedBody254_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody254_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody254_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (58, 6), (2, 2)]

def optimizedBody254_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody254_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody254_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (58, 58), (2, 2)]

def optimizedBody254_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 12 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody254_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody254_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody254_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody254_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody254_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody254_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody254_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody254_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody254_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody254_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody254_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody254_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody254_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody254_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody254_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody254_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody254_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (58, 58)]

def optimizedBody254_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody254_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_54 optimizedBody254_55

def optimizedBody254_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_53 optimizedBody254_56

def optimizedBody254_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_21 optimizedBody254_57

def optimizedBody254_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_52 optimizedBody254_58

def optimizedBody254_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_51 optimizedBody254_59

def optimizedBody254_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_50 optimizedBody254_60

def optimizedBody254_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_49 optimizedBody254_61

def optimizedBody254_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_48 optimizedBody254_62

def optimizedBody254_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_47 optimizedBody254_63

def optimizedBody254_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_46 optimizedBody254_64

def optimizedBody254_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_45 optimizedBody254_65

def optimizedBody254_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_44 optimizedBody254_66

def optimizedBody254_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_43 optimizedBody254_67

def optimizedBody254_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_42 optimizedBody254_68

def optimizedBody254_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_41 optimizedBody254_69

def optimizedBody254_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_40 optimizedBody254_70

def optimizedBody254_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_39 optimizedBody254_71

def optimizedBody254_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_36 optimizedBody254_72

def optimizedBody254_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_38 optimizedBody254_73

def optimizedBody254_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_37 optimizedBody254_74

def optimizedBody254_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_36 optimizedBody254_75

def optimizedBody254_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_35 optimizedBody254_76

def optimizedBody254_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_34 optimizedBody254_77

def optimizedBody254_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_33 optimizedBody254_78

def optimizedBody254_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_32 optimizedBody254_79

def optimizedBody254_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_31 optimizedBody254_80

def optimizedBody254_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_30 optimizedBody254_81

def optimizedBody254_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_29 optimizedBody254_82

def optimizedBody254_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_21 optimizedBody254_83

def optimizedBody254_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_28 optimizedBody254_84

def optimizedBody254_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_27 optimizedBody254_85

def optimizedBody254_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_26 optimizedBody254_86

def optimizedBody254_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_25 optimizedBody254_87

def optimizedBody254_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_24 optimizedBody254_88

def optimizedBody254_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_23 optimizedBody254_89

def optimizedBody254_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_21 optimizedBody254_90

def optimizedBody254_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_91

def optimizedBody254_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody254_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_93

def optimizedBody254_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 0) optimizedBody254_92 optimizedBody254_94

def optimizedBody254_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (58, 0)]

def optimizedBody254_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_96

def optimizedBody254_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_95 optimizedBody254_97

def optimizedBody254_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_22 optimizedBody254_98

def optimizedBody254_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_21 optimizedBody254_99

def optimizedBody254_101 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln) optimizedBody254_100 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody254_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody254_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody254_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody254_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551504#64))

def optimizedBody254_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody254_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody254_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 5#64)

def optimizedBody254_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (54, 8), (58, 58)]

def optimizedBody254_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (54, 54), (58, 58)]

def optimizedBody254_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (58, 58)]

def optimizedBody254_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_111 optimizedBody254_7

def optimizedBody254_113 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody254_110, 254, 4)) (some 250) ([2, 4, 6, 8]) (some (2, optimizedBody254_112, 254, 5))

def optimizedBody254_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 80#64)

def optimizedBody254_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (44, 44), (54, 54), (58, 58)]

def optimizedBody254_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody254_115, 254, 6)) (some 68) ([2]) (some (2, optimizedBody254_112, 254, 7))

def optimizedBody254_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody254_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody254_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody254_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody254_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody254_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody254_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody254_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody254_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372036854775807#64)

def optimizedBody254_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 192#64)

def optimizedBody254_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 10), (48, 0), (50, 12), (52, 8), (54, 54), (58, 58), (60, 14), (56, 16)]

def optimizedBody254_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (0, 46), (8, 48), (50, 50), (52, 52), (54, 54), (58, 58), (60, 60), (56, 56)]

def optimizedBody254_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (8, 48), (50, 50), (52, 52), (54, 54), (58, 58), (60, 60), (56, 56)]

def optimizedBody254_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_129 optimizedBody254_7

def optimizedBody254_131 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody254_128, 254, 8)) (some 252) ([2, 4, 6]) (some (2, optimizedBody254_130, 254, 9))

def optimizedBody254_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 76#64)

def optimizedBody254_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 50), (52, 52), (54, 54), (58, 58), (60, 60), (56, 56),
    (64, 10)]

def optimizedBody254_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (0, 46), (48, 48), (8, 50), (52, 52), (54, 54), (58, 58), (60, 60), (56, 56), (64, 64)]

def optimizedBody254_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (48, 48), (8, 50), (52, 52), (54, 54), (58, 58), (60, 60), (56, 56), (64, 64)]

def optimizedBody254_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_135 optimizedBody254_7

def optimizedBody254_137 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody254_134, 254, 10)) (some 252) ([2, 4, 6]) (some (2, optimizedBody254_136, 254, 11))

def optimizedBody254_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody254_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody254_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 116#64)

def optimizedBody254_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 8), (52, 52), (54, 54), (58, 58), (60, 60), (56, 56),
    (64, 64), (66, 10)]

def optimizedBody254_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (58, 58), (60, 60), (8, 56), (64, 64), (66, 66)]

def optimizedBody254_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (58, 58), (60, 60), (8, 56), (64, 64), (66, 66)]

def optimizedBody254_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_143 optimizedBody254_7

def optimizedBody254_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody254_142, 254, 12)) (some 252) ([2, 4, 6]) (some (2, optimizedBody254_144, 254, 13))

def optimizedBody254_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 184#64)

def optimizedBody254_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 10), (58, 58), (60, 60),
    (62, 8), (64, 64), (66, 66)]

def optimizedBody254_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (56, 58), (58, 60), (0, 62), (64, 64),
    (66, 66)]

def optimizedBody254_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (56, 58), (58, 60), (0, 62), (64, 64),
    (66, 66)]

def optimizedBody254_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_149 optimizedBody254_7

def optimizedBody254_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody254_148, 254, 14)) (some 252) ([2, 4, 6]) (some (2, optimizedBody254_150, 254, 15))

def optimizedBody254_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody254_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 68#64)

def optimizedBody254_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 8),
    (62, 0), (64, 64), (66, 66)]

def optimizedBody254_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (20, 44), (12, 46), (22, 48), (8, 50), (24, 52), (4, 54), (14, 56), (16, 58), (10, 60), (0, 62), (26, 64),
    (18, 66)]

def optimizedBody254_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (20, 44), (12, 46), (22, 48), (8, 50), (24, 52), (4, 54), (14, 56), (16, 58), (10, 60), (0, 62), (26, 64),
    (18, 66)]

def optimizedBody254_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_156 optimizedBody254_7

def optimizedBody254_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody254_155, 254, 16)) (some 252) ([2, 4, 6]) (some (2, optimizedBody254_157, 254, 17))

def optimizedBody254_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (24, 24), (16, 16)]

def optimizedBody254_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 24 (Flapjack.WordRegImm.reg 14)))

def optimizedBody254_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2)]

def optimizedBody254_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody254_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody254_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody254_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26)]

def optimizedBody254_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody254_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 16 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody254_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (22, 22)]

def optimizedBody254_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 22 (Flapjack.WordRegImm.reg 14)))

def optimizedBody254_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (2, 2)]

def optimizedBody254_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 24 0#64))

def optimizedBody254_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody254_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (18, 18)]

def optimizedBody254_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody254_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 16 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody254_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12)]

def optimizedBody254_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody254_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (2, 2)]

def optimizedBody254_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody254_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody254_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody254_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody254_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 16 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody254_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (8, 8)]

def optimizedBody254_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 14)))

def optimizedBody254_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody254_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody254_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody254_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody254_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody254_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody254_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (0, 0)]

def optimizedBody254_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody254_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody254_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody254_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody254_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody254_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody254_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 16)]

def optimizedBody254_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 20 [2]

def optimizedBody254_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_199 optimizedBody254_200

def optimizedBody254_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_198 optimizedBody254_201

def optimizedBody254_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_197 optimizedBody254_202

def optimizedBody254_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_196 optimizedBody254_203

def optimizedBody254_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_163 optimizedBody254_204

def optimizedBody254_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_195 optimizedBody254_205

def optimizedBody254_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_194 optimizedBody254_206

def optimizedBody254_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_193 optimizedBody254_207

def optimizedBody254_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_192 optimizedBody254_208

def optimizedBody254_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_191 optimizedBody254_209

def optimizedBody254_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_163 optimizedBody254_210

def optimizedBody254_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_190 optimizedBody254_211

def optimizedBody254_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_189 optimizedBody254_212

def optimizedBody254_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_188 optimizedBody254_213

def optimizedBody254_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_163 optimizedBody254_214

def optimizedBody254_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_187 optimizedBody254_215

def optimizedBody254_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_186 optimizedBody254_216

def optimizedBody254_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_185 optimizedBody254_217

def optimizedBody254_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_184 optimizedBody254_218

def optimizedBody254_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_183 optimizedBody254_219

def optimizedBody254_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_163 optimizedBody254_220

def optimizedBody254_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_182 optimizedBody254_221

def optimizedBody254_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_181 optimizedBody254_222

def optimizedBody254_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_180 optimizedBody254_223

def optimizedBody254_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_163 optimizedBody254_224

def optimizedBody254_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_179 optimizedBody254_225

def optimizedBody254_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_178 optimizedBody254_226

def optimizedBody254_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_177 optimizedBody254_227

def optimizedBody254_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_176 optimizedBody254_228

def optimizedBody254_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_175 optimizedBody254_229

def optimizedBody254_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_163 optimizedBody254_230

def optimizedBody254_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_174 optimizedBody254_231

def optimizedBody254_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_173 optimizedBody254_232

def optimizedBody254_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_172 optimizedBody254_233

def optimizedBody254_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_163 optimizedBody254_234

def optimizedBody254_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_171 optimizedBody254_235

def optimizedBody254_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_170 optimizedBody254_236

def optimizedBody254_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_169 optimizedBody254_237

def optimizedBody254_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_168 optimizedBody254_238

def optimizedBody254_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_167 optimizedBody254_239

def optimizedBody254_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_163 optimizedBody254_240

def optimizedBody254_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_166 optimizedBody254_241

def optimizedBody254_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_165 optimizedBody254_242

def optimizedBody254_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_164 optimizedBody254_243

def optimizedBody254_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_163 optimizedBody254_244

def optimizedBody254_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_162 optimizedBody254_245

def optimizedBody254_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_161 optimizedBody254_246

def optimizedBody254_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_160 optimizedBody254_247

def optimizedBody254_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_159 optimizedBody254_248

def optimizedBody254_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_249

def optimizedBody254_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_158 optimizedBody254_250

def optimizedBody254_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_154 optimizedBody254_251

def optimizedBody254_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_153 optimizedBody254_252

def optimizedBody254_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_125 optimizedBody254_253

def optimizedBody254_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_152 optimizedBody254_254

def optimizedBody254_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_51 optimizedBody254_255

def optimizedBody254_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_256

def optimizedBody254_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_151 optimizedBody254_257

def optimizedBody254_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_147 optimizedBody254_258

def optimizedBody254_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_146 optimizedBody254_259

def optimizedBody254_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_125 optimizedBody254_260

def optimizedBody254_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_139 optimizedBody254_261

def optimizedBody254_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_138 optimizedBody254_262

def optimizedBody254_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_263

def optimizedBody254_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_145 optimizedBody254_264

def optimizedBody254_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_141 optimizedBody254_265

def optimizedBody254_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_140 optimizedBody254_266

def optimizedBody254_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_125 optimizedBody254_267

def optimizedBody254_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_139 optimizedBody254_268

def optimizedBody254_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_138 optimizedBody254_269

def optimizedBody254_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_270

def optimizedBody254_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_137 optimizedBody254_271

def optimizedBody254_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_133 optimizedBody254_272

def optimizedBody254_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_132 optimizedBody254_273

def optimizedBody254_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_125 optimizedBody254_274

def optimizedBody254_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_124 optimizedBody254_275

def optimizedBody254_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_123 optimizedBody254_276

def optimizedBody254_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_277

def optimizedBody254_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_131 optimizedBody254_278

def optimizedBody254_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_127 optimizedBody254_279

def optimizedBody254_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_126 optimizedBody254_280

def optimizedBody254_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_125 optimizedBody254_281

def optimizedBody254_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_124 optimizedBody254_282

def optimizedBody254_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_123 optimizedBody254_283

def optimizedBody254_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_122 optimizedBody254_284

def optimizedBody254_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_118 optimizedBody254_285

def optimizedBody254_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_121 optimizedBody254_286

def optimizedBody254_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_118 optimizedBody254_287

def optimizedBody254_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_120 optimizedBody254_288

def optimizedBody254_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_118 optimizedBody254_289

def optimizedBody254_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_119 optimizedBody254_290

def optimizedBody254_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_118 optimizedBody254_291

def optimizedBody254_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_117 optimizedBody254_292

def optimizedBody254_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_105 optimizedBody254_293

def optimizedBody254_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_104 optimizedBody254_294

def optimizedBody254_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_103 optimizedBody254_295

def optimizedBody254_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_102 optimizedBody254_296

def optimizedBody254_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_297

def optimizedBody254_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_116 optimizedBody254_298

def optimizedBody254_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_111 optimizedBody254_299

def optimizedBody254_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_114 optimizedBody254_300

def optimizedBody254_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_301

def optimizedBody254_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_113 optimizedBody254_302

def optimizedBody254_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_109 optimizedBody254_303

def optimizedBody254_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_108 optimizedBody254_304

def optimizedBody254_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_107 optimizedBody254_305

def optimizedBody254_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_106 optimizedBody254_306

def optimizedBody254_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_105 optimizedBody254_307

def optimizedBody254_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_104 optimizedBody254_308

def optimizedBody254_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_103 optimizedBody254_309

def optimizedBody254_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_102 optimizedBody254_310

def optimizedBody254_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_311

def optimizedBody254_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_101 optimizedBody254_312

def optimizedBody254_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_20 optimizedBody254_313

def optimizedBody254_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_314

def optimizedBody254_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_19 optimizedBody254_315

def optimizedBody254_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_2 optimizedBody254_316

def optimizedBody254_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_18 optimizedBody254_317

def optimizedBody254_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_1 optimizedBody254_318

def optimizedBody254_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody254_0 optimizedBody254_319

def oracle254 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                  29
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 6 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)) 2 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 27)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 7)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 2 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 5 Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 32)))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 10)))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 6 (Flapjack.Spt.ls 0))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  2 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 9)) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)) 29
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.ls 25)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 12)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  22 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 4 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 5 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 12))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  0 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 6 (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 13)) 3 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27 (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 5)) 29 (Flapjack.Spt.ls 26)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 11)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 23))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                  4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3)))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 3 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 5 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 29)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  2 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 33)))
                  22
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)) 22 (Flapjack.Spt.ls 4)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8)) 2 Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 9)) 5 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 6 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 33)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                24 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                22 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                23 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                Flapjack.Spt.ln)))))))
def optimized254 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(254, 3, optimizedBody254_320)
theorem optimize254_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source254, oracle254) = optimized254 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize254_eq
end InitECandidate.Proofs.WordStages
