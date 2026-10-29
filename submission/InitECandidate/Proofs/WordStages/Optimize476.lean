import InitECandidate.Proofs.WordStages.Optimize460
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source476
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody476_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody476_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody476_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody476_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody476_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody476_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody476_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody476_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 232#64))

def optimizedBody476_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12)]

def optimizedBody476_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody476_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody476_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1024#64)

def optimizedBody476_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody476_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody476_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody476_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody476_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody476_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_6 optimizedBody476_16

def optimizedBody476_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_15 optimizedBody476_17

def optimizedBody476_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_14 optimizedBody476_18

def optimizedBody476_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_13 optimizedBody476_19

def optimizedBody476_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_12 optimizedBody476_20

def optimizedBody476_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_21

def optimizedBody476_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody476_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 2) optimizedBody476_22 optimizedBody476_23

def optimizedBody476_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody476_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1024#64)

def optimizedBody476_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14)]

def optimizedBody476_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_26 optimizedBody476_27

def optimizedBody476_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_28

def optimizedBody476_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_27

def optimizedBody476_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 14) optimizedBody476_29 optimizedBody476_30

def optimizedBody476_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 14 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody476_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 14), (50, 4), (52, 12), (54, 10), (58, 6)]

def optimizedBody476_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (58, 58)]

def optimizedBody476_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (58, 58)]

def optimizedBody476_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_35 optimizedBody476_16

def optimizedBody476_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody476_34, 476, 2)) (some 74) ([2]) (some (2, optimizedBody476_36, 476, 3))

def optimizedBody476_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody476_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody476_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody476_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody476_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody476_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody476_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody476_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody476_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 2), (58, 58)]

def optimizedBody476_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (8, 46), (14, 48), (4, 50), (12, 52), (10, 54), (16, 56), (6, 58)]

def optimizedBody476_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (14, 48), (4, 50), (12, 52), (10, 54), (16, 56), (6, 58)]

def optimizedBody476_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_48 optimizedBody476_16

def optimizedBody476_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody476_47, 476, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody476_49, 476, 5))

def optimizedBody476_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody476_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 18 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody476_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (16, 16)]

def optimizedBody476_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody476_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 232#64)))

def optimizedBody476_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody476_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody476_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8), (4, 4), (12, 12), (10, 10), (6, 6)]

def optimizedBody476_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_57 optimizedBody476_58

def optimizedBody476_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_56 optimizedBody476_59

def optimizedBody476_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_55 optimizedBody476_60

def optimizedBody476_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_4 optimizedBody476_61

def optimizedBody476_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_6 optimizedBody476_62

def optimizedBody476_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_54 optimizedBody476_63

def optimizedBody476_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_53 optimizedBody476_64

def optimizedBody476_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_52 optimizedBody476_65

def optimizedBody476_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_51 optimizedBody476_66

def optimizedBody476_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_3 optimizedBody476_67

def optimizedBody476_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_2 optimizedBody476_68

def optimizedBody476_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_1 optimizedBody476_69

def optimizedBody476_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_70

def optimizedBody476_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_50 optimizedBody476_71

def optimizedBody476_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_46 optimizedBody476_72

def optimizedBody476_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_45 optimizedBody476_73

def optimizedBody476_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_44 optimizedBody476_74

def optimizedBody476_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_43 optimizedBody476_75

def optimizedBody476_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_42 optimizedBody476_76

def optimizedBody476_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_41 optimizedBody476_77

def optimizedBody476_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_40 optimizedBody476_78

def optimizedBody476_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_39 optimizedBody476_79

def optimizedBody476_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_38 optimizedBody476_80

def optimizedBody476_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_81

def optimizedBody476_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_37 optimizedBody476_82

def optimizedBody476_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_33 optimizedBody476_83

def optimizedBody476_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_32 optimizedBody476_84

def optimizedBody476_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_10 optimizedBody476_85

def optimizedBody476_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_86

def optimizedBody476_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_31 optimizedBody476_87

def optimizedBody476_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_10 optimizedBody476_88

def optimizedBody476_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_11 optimizedBody476_89

def optimizedBody476_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_25 optimizedBody476_90

def optimizedBody476_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_10 optimizedBody476_91

def optimizedBody476_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_92

def optimizedBody476_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_93

def optimizedBody476_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_24 optimizedBody476_94

def optimizedBody476_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_11 optimizedBody476_95

def optimizedBody476_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_10 optimizedBody476_96

def optimizedBody476_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_97

def optimizedBody476_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_58

def optimizedBody476_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 14) optimizedBody476_98 optimizedBody476_99

def optimizedBody476_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody476_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 2) optimizedBody476_22 optimizedBody476_23

def optimizedBody476_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody476_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody476_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody476_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.reg 16)))

def optimizedBody476_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody476_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody476_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (4, 4)]

def optimizedBody476_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 14 8#64))

def optimizedBody476_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (6, 6)]

def optimizedBody476_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody476_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (8, 8)]

def optimizedBody476_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody476_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody476_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody476_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody476_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody476_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody476_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody476_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_13 optimizedBody476_120

def optimizedBody476_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_119 optimizedBody476_121

def optimizedBody476_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_118 optimizedBody476_122

def optimizedBody476_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_117 optimizedBody476_123

def optimizedBody476_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_116 optimizedBody476_124

def optimizedBody476_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_101 optimizedBody476_125

def optimizedBody476_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_115 optimizedBody476_126

def optimizedBody476_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_4 optimizedBody476_127

def optimizedBody476_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_6 optimizedBody476_128

def optimizedBody476_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_114 optimizedBody476_129

def optimizedBody476_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_113 optimizedBody476_130

def optimizedBody476_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_112 optimizedBody476_131

def optimizedBody476_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_111 optimizedBody476_132

def optimizedBody476_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_110 optimizedBody476_133

def optimizedBody476_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_109 optimizedBody476_134

def optimizedBody476_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_108 optimizedBody476_135

def optimizedBody476_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_107 optimizedBody476_136

def optimizedBody476_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_106 optimizedBody476_137

def optimizedBody476_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_105 optimizedBody476_138

def optimizedBody476_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_104 optimizedBody476_139

def optimizedBody476_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_3 optimizedBody476_140

def optimizedBody476_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_2 optimizedBody476_141

def optimizedBody476_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_1 optimizedBody476_142

def optimizedBody476_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_103 optimizedBody476_143

def optimizedBody476_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_101 optimizedBody476_144

def optimizedBody476_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_145

def optimizedBody476_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_146

def optimizedBody476_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_102 optimizedBody476_147

def optimizedBody476_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_11 optimizedBody476_148

def optimizedBody476_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_101 optimizedBody476_149

def optimizedBody476_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_150

def optimizedBody476_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_100 optimizedBody476_151

def optimizedBody476_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_8 optimizedBody476_152

def optimizedBody476_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_7 optimizedBody476_153

def optimizedBody476_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_6 optimizedBody476_154

def optimizedBody476_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_5 optimizedBody476_155

def optimizedBody476_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_4 optimizedBody476_156

def optimizedBody476_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_3 optimizedBody476_157

def optimizedBody476_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_2 optimizedBody476_158

def optimizedBody476_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_1 optimizedBody476_159

def optimizedBody476_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_0 optimizedBody476_160

def oracle476 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 7
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 7 Flapjack.Spt.ln)))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2)))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 29)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 7 (Flapjack.Spt.ls 2)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 7
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 0)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 6
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))
                7
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 7
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))
              3
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 27)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1)) 7
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
              5
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 6
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7)) 1 (Flapjack.Spt.ls 25)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))
def optimized476 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(476, 5, optimizedBody476_161)
theorem optimize476_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source476, oracle476) = optimized476 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize476_eq
end InitECandidate.Proofs.WordStages
