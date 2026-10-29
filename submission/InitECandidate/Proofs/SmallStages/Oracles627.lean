import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source627
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles627
def optimizedBody627_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody627_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody627_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody627_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody627_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody627_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody627_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_4 optimizedBody627_5

def optimizedBody627_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody627_3, 627, 2)) (some 68) ([2]) (some (2, optimizedBody627_6, 627, 3))

def optimizedBody627_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody627_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody627_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 96#64)

def optimizedBody627_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 2), (46, 46)]

def optimizedBody627_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (0, 46)]

def optimizedBody627_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody627_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_13 optimizedBody627_5

def optimizedBody627_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody627_12, 627, 4)) (some 78) ([2, 4]) (some (2, optimizedBody627_14, 627, 5))

def optimizedBody627_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody627_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody627_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 2)]

def optimizedBody627_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody627_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 0)]

def optimizedBody627_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (44, 48), (0, 50)]

def optimizedBody627_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (44, 48), (0, 50)]

def optimizedBody627_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_22 optimizedBody627_5

def optimizedBody627_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody627_21, 627, 6)) (some 417) ([2]) (some (2, optimizedBody627_23, 627, 7))

def optimizedBody627_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody627_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody627_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44)]

def optimizedBody627_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody627_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12#64)

def optimizedBody627_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody627_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody627_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody627_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody627_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody627_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody627_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody627_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody627_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody627_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody627_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody627_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody627_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody627_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody627_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody627_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551352#64))

def optimizedBody627_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody627_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_46

def optimizedBody627_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_40 optimizedBody627_47

def optimizedBody627_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_39 optimizedBody627_48

def optimizedBody627_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_45 optimizedBody627_49

def optimizedBody627_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_44 optimizedBody627_50

def optimizedBody627_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_43 optimizedBody627_51

def optimizedBody627_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_42 optimizedBody627_52

def optimizedBody627_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_41 optimizedBody627_53

def optimizedBody627_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_54

def optimizedBody627_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_40 optimizedBody627_55

def optimizedBody627_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_39 optimizedBody627_56

def optimizedBody627_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_38 optimizedBody627_57

def optimizedBody627_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_58

def optimizedBody627_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_37 optimizedBody627_59

def optimizedBody627_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_60

def optimizedBody627_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_36 optimizedBody627_61

def optimizedBody627_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_35 optimizedBody627_62

def optimizedBody627_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_34 optimizedBody627_63

def optimizedBody627_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_64

def optimizedBody627_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_32 optimizedBody627_65

def optimizedBody627_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_66

def optimizedBody627_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_30 optimizedBody627_67

def optimizedBody627_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_25 optimizedBody627_68

def optimizedBody627_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_29 optimizedBody627_69

def optimizedBody627_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_28 optimizedBody627_70

def optimizedBody627_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_27 optimizedBody627_71

def optimizedBody627_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_72

def optimizedBody627_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 44), (10, 0)]

def optimizedBody627_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody627_73 optimizedBody627_74

def optimizedBody627_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 8), (46, 46)]

def optimizedBody627_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody627_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody627_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_78 optimizedBody627_5

def optimizedBody627_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody627_77, 627, 8)) (some 610) ([2]) (some (2, optimizedBody627_79, 627, 9))

def optimizedBody627_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (0, 0)]

def optimizedBody627_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_81

def optimizedBody627_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_80 optimizedBody627_82

def optimizedBody627_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_76 optimizedBody627_83

def optimizedBody627_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_84

def optimizedBody627_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_85

def optimizedBody627_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_75 optimizedBody627_86

def optimizedBody627_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_26 optimizedBody627_87

def optimizedBody627_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_25 optimizedBody627_88

def optimizedBody627_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_89

def optimizedBody627_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_24 optimizedBody627_90

def optimizedBody627_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_20 optimizedBody627_91

def optimizedBody627_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_19 optimizedBody627_92

def optimizedBody627_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_18 optimizedBody627_93

def optimizedBody627_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_94

def optimizedBody627_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody627_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 48)]

def optimizedBody627_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 48)]

def optimizedBody627_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_98 optimizedBody627_5

def optimizedBody627_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody627_97, 627, 10)) (some 608) ([2]) (some (2, optimizedBody627_99, 627, 11))

def optimizedBody627_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_100 optimizedBody627_82

def optimizedBody627_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_96 optimizedBody627_101

def optimizedBody627_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_102

def optimizedBody627_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody627_95 optimizedBody627_103

def optimizedBody627_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (0, 0)]

def optimizedBody627_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 64#64))

def optimizedBody627_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody627_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody627_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody627_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 160#64))

def optimizedBody627_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody627_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 120#64))

def optimizedBody627_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody627_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 128#64))

def optimizedBody627_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody627_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody627_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody627_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody627_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2), (48, 0)]

def optimizedBody627_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 44), (0, 46), (4, 48)]

def optimizedBody627_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (4, 48)]

def optimizedBody627_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_121 optimizedBody627_5

def optimizedBody627_123 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody627_120, 627, 12)) (some 475) ([2]) (some (2, optimizedBody627_122, 627, 13))

def optimizedBody627_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody627_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 200#64))

def optimizedBody627_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody627_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody627_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody627_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody627_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody627_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody627_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody627_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody627_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody627_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody627_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody627_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody627_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_26 optimizedBody627_137

def optimizedBody627_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_138

def optimizedBody627_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_137

def optimizedBody627_141 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 6) optimizedBody627_139 optimizedBody627_140

def optimizedBody627_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody627_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody627_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_129 optimizedBody627_143

def optimizedBody627_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_128 optimizedBody627_144

def optimizedBody627_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_142 optimizedBody627_145

def optimizedBody627_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_25 optimizedBody627_146

def optimizedBody627_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_147

def optimizedBody627_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_141 optimizedBody627_148

def optimizedBody627_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_131 optimizedBody627_149

def optimizedBody627_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_150

def optimizedBody627_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_136 optimizedBody627_151

def optimizedBody627_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_152

def optimizedBody627_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_129 optimizedBody627_153

def optimizedBody627_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_128 optimizedBody627_154

def optimizedBody627_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_135 optimizedBody627_155

def optimizedBody627_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_156

def optimizedBody627_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_134 optimizedBody627_157

def optimizedBody627_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_25 optimizedBody627_158

def optimizedBody627_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_129 optimizedBody627_159

def optimizedBody627_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_128 optimizedBody627_160

def optimizedBody627_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_133 optimizedBody627_161

def optimizedBody627_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_162

def optimizedBody627_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_132 optimizedBody627_163

def optimizedBody627_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_25 optimizedBody627_164

def optimizedBody627_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_165

def optimizedBody627_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_143

def optimizedBody627_168 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody627_166 optimizedBody627_167

def optimizedBody627_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody627_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 208#64))

def optimizedBody627_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody627_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 224#64))

def optimizedBody627_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody627_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody627_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody627_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody627_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_175 optimizedBody627_176

def optimizedBody627_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_174 optimizedBody627_177

def optimizedBody627_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_173 optimizedBody627_178

def optimizedBody627_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_172 optimizedBody627_179

def optimizedBody627_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_180

def optimizedBody627_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_171 optimizedBody627_181

def optimizedBody627_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_25 optimizedBody627_182

def optimizedBody627_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_129 optimizedBody627_183

def optimizedBody627_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_128 optimizedBody627_184

def optimizedBody627_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_170 optimizedBody627_185

def optimizedBody627_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_186

def optimizedBody627_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_169 optimizedBody627_187

def optimizedBody627_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_25 optimizedBody627_188

def optimizedBody627_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_189

def optimizedBody627_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_168 optimizedBody627_190

def optimizedBody627_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_131 optimizedBody627_191

def optimizedBody627_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_130 optimizedBody627_192

def optimizedBody627_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_193

def optimizedBody627_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_129 optimizedBody627_194

def optimizedBody627_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_128 optimizedBody627_195

def optimizedBody627_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_127 optimizedBody627_196

def optimizedBody627_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_126 optimizedBody627_197

def optimizedBody627_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_125 optimizedBody627_198

def optimizedBody627_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_199

def optimizedBody627_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_124 optimizedBody627_200

def optimizedBody627_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_25 optimizedBody627_201

def optimizedBody627_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_202

def optimizedBody627_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_123 optimizedBody627_203

def optimizedBody627_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_119 optimizedBody627_204

def optimizedBody627_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_36 optimizedBody627_205

def optimizedBody627_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_35 optimizedBody627_206

def optimizedBody627_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_118 optimizedBody627_207

def optimizedBody627_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_208

def optimizedBody627_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_117 optimizedBody627_209

def optimizedBody627_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_210

def optimizedBody627_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_36 optimizedBody627_211

def optimizedBody627_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_35 optimizedBody627_212

def optimizedBody627_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_116 optimizedBody627_213

def optimizedBody627_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_214

def optimizedBody627_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_115 optimizedBody627_215

def optimizedBody627_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_216

def optimizedBody627_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_36 optimizedBody627_217

def optimizedBody627_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_35 optimizedBody627_218

def optimizedBody627_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_114 optimizedBody627_219

def optimizedBody627_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_220

def optimizedBody627_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_113 optimizedBody627_221

def optimizedBody627_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_222

def optimizedBody627_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_36 optimizedBody627_223

def optimizedBody627_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_35 optimizedBody627_224

def optimizedBody627_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_112 optimizedBody627_225

def optimizedBody627_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_226

def optimizedBody627_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_111 optimizedBody627_227

def optimizedBody627_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_228

def optimizedBody627_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_36 optimizedBody627_229

def optimizedBody627_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_35 optimizedBody627_230

def optimizedBody627_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_110 optimizedBody627_231

def optimizedBody627_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_31 optimizedBody627_232

def optimizedBody627_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_109 optimizedBody627_233

def optimizedBody627_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_33 optimizedBody627_234

def optimizedBody627_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_108 optimizedBody627_235

def optimizedBody627_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_107 optimizedBody627_236

def optimizedBody627_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_106 optimizedBody627_237

def optimizedBody627_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_105 optimizedBody627_238

def optimizedBody627_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_239

def optimizedBody627_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_104 optimizedBody627_240

def optimizedBody627_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_17 optimizedBody627_241

def optimizedBody627_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_16 optimizedBody627_242

def optimizedBody627_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_9 optimizedBody627_243

def optimizedBody627_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_244

def optimizedBody627_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_15 optimizedBody627_245

def optimizedBody627_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_11 optimizedBody627_246

def optimizedBody627_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_10 optimizedBody627_247

def optimizedBody627_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_9 optimizedBody627_248

def optimizedBody627_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_8 optimizedBody627_249

def optimizedBody627_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_7 optimizedBody627_250

def optimizedBody627_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_251

def optimizedBody627_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_1 optimizedBody627_252

def optimizedBody627_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_0 optimizedBody627_253

def oracle627 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))
            2
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                24
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 3))))
              22
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 2)))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 2))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
              23
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 0)))))
            0
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.ls 25))
              22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.ls 24))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln)
              23 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))))
def optimized627 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(627, 2, optimizedBody627_254)
end InitECandidate.Proofs.SmallStages.Oracles627
