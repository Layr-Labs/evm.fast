import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source478
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles478
def optimizedBody478_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody478_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody478_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody478_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody478_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody478_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody478_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody478_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 232#64))

def optimizedBody478_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12)]

def optimizedBody478_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody478_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody478_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1024#64)

def optimizedBody478_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody478_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody478_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody478_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody478_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody478_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_6 optimizedBody478_16

def optimizedBody478_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_15 optimizedBody478_17

def optimizedBody478_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_14 optimizedBody478_18

def optimizedBody478_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_13 optimizedBody478_19

def optimizedBody478_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_12 optimizedBody478_20

def optimizedBody478_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_21

def optimizedBody478_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody478_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 2) optimizedBody478_22 optimizedBody478_23

def optimizedBody478_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody478_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1024#64)

def optimizedBody478_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14)]

def optimizedBody478_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_26 optimizedBody478_27

def optimizedBody478_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_28

def optimizedBody478_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_27

def optimizedBody478_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 14) optimizedBody478_29 optimizedBody478_30

def optimizedBody478_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 14 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody478_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 14), (50, 4), (52, 12), (54, 10), (58, 6)]

def optimizedBody478_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (58, 58)]

def optimizedBody478_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (58, 58)]

def optimizedBody478_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_35 optimizedBody478_16

def optimizedBody478_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody478_34, 478, 2)) (some 74) ([2]) (some (2, optimizedBody478_36, 478, 3))

def optimizedBody478_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody478_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody478_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody478_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody478_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody478_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody478_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody478_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody478_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 2), (58, 58)]

def optimizedBody478_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (8, 46), (14, 48), (4, 50), (12, 52), (10, 54), (16, 56), (6, 58)]

def optimizedBody478_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (14, 48), (4, 50), (12, 52), (10, 54), (16, 56), (6, 58)]

def optimizedBody478_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_48 optimizedBody478_16

def optimizedBody478_50 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody478_47, 478, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody478_49, 478, 5))

def optimizedBody478_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody478_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 18 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody478_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (16, 16)]

def optimizedBody478_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody478_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 232#64)))

def optimizedBody478_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody478_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody478_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8), (4, 4), (12, 12), (10, 10), (6, 6)]

def optimizedBody478_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_57 optimizedBody478_58

def optimizedBody478_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_56 optimizedBody478_59

def optimizedBody478_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_55 optimizedBody478_60

def optimizedBody478_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_4 optimizedBody478_61

def optimizedBody478_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_6 optimizedBody478_62

def optimizedBody478_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_54 optimizedBody478_63

def optimizedBody478_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_53 optimizedBody478_64

def optimizedBody478_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_52 optimizedBody478_65

def optimizedBody478_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_51 optimizedBody478_66

def optimizedBody478_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_3 optimizedBody478_67

def optimizedBody478_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_2 optimizedBody478_68

def optimizedBody478_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_1 optimizedBody478_69

def optimizedBody478_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_70

def optimizedBody478_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_50 optimizedBody478_71

def optimizedBody478_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_46 optimizedBody478_72

def optimizedBody478_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_45 optimizedBody478_73

def optimizedBody478_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_44 optimizedBody478_74

def optimizedBody478_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_43 optimizedBody478_75

def optimizedBody478_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_42 optimizedBody478_76

def optimizedBody478_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_41 optimizedBody478_77

def optimizedBody478_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_40 optimizedBody478_78

def optimizedBody478_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_39 optimizedBody478_79

def optimizedBody478_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_38 optimizedBody478_80

def optimizedBody478_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_81

def optimizedBody478_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_37 optimizedBody478_82

def optimizedBody478_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_33 optimizedBody478_83

def optimizedBody478_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_32 optimizedBody478_84

def optimizedBody478_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_10 optimizedBody478_85

def optimizedBody478_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_86

def optimizedBody478_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_31 optimizedBody478_87

def optimizedBody478_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_10 optimizedBody478_88

def optimizedBody478_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_11 optimizedBody478_89

def optimizedBody478_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_25 optimizedBody478_90

def optimizedBody478_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_10 optimizedBody478_91

def optimizedBody478_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_92

def optimizedBody478_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_93

def optimizedBody478_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_24 optimizedBody478_94

def optimizedBody478_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_11 optimizedBody478_95

def optimizedBody478_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_10 optimizedBody478_96

def optimizedBody478_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_97

def optimizedBody478_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_58

def optimizedBody478_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 14) optimizedBody478_98 optimizedBody478_99

def optimizedBody478_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody478_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 2) optimizedBody478_22 optimizedBody478_23

def optimizedBody478_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody478_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody478_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody478_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.reg 16)))

def optimizedBody478_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody478_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody478_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (4, 4)]

def optimizedBody478_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 14 8#64))

def optimizedBody478_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (6, 6)]

def optimizedBody478_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody478_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (8, 8)]

def optimizedBody478_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody478_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody478_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody478_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody478_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody478_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody478_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody478_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_13 optimizedBody478_120

def optimizedBody478_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_119 optimizedBody478_121

def optimizedBody478_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_118 optimizedBody478_122

def optimizedBody478_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_117 optimizedBody478_123

def optimizedBody478_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_116 optimizedBody478_124

def optimizedBody478_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_101 optimizedBody478_125

def optimizedBody478_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_115 optimizedBody478_126

def optimizedBody478_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_4 optimizedBody478_127

def optimizedBody478_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_6 optimizedBody478_128

def optimizedBody478_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_114 optimizedBody478_129

def optimizedBody478_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_113 optimizedBody478_130

def optimizedBody478_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_112 optimizedBody478_131

def optimizedBody478_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_111 optimizedBody478_132

def optimizedBody478_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_110 optimizedBody478_133

def optimizedBody478_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_109 optimizedBody478_134

def optimizedBody478_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_108 optimizedBody478_135

def optimizedBody478_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_107 optimizedBody478_136

def optimizedBody478_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_106 optimizedBody478_137

def optimizedBody478_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_105 optimizedBody478_138

def optimizedBody478_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_104 optimizedBody478_139

def optimizedBody478_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_3 optimizedBody478_140

def optimizedBody478_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_2 optimizedBody478_141

def optimizedBody478_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_1 optimizedBody478_142

def optimizedBody478_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_103 optimizedBody478_143

def optimizedBody478_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_101 optimizedBody478_144

def optimizedBody478_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_145

def optimizedBody478_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_146

def optimizedBody478_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_102 optimizedBody478_147

def optimizedBody478_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_11 optimizedBody478_148

def optimizedBody478_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_101 optimizedBody478_149

def optimizedBody478_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_9 optimizedBody478_150

def optimizedBody478_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_100 optimizedBody478_151

def optimizedBody478_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_8 optimizedBody478_152

def optimizedBody478_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_7 optimizedBody478_153

def optimizedBody478_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_6 optimizedBody478_154

def optimizedBody478_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_5 optimizedBody478_155

def optimizedBody478_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_4 optimizedBody478_156

def optimizedBody478_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_3 optimizedBody478_157

def optimizedBody478_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_2 optimizedBody478_158

def optimizedBody478_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_1 optimizedBody478_159

def optimizedBody478_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_0 optimizedBody478_160

def oracle478 : Option (Spt Nat) :=
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
def optimized478 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(478, 5, optimizedBody478_161)
end InitECandidate.Proofs.SmallStages.Oracles478
