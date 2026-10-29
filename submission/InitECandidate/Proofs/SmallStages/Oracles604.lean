import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source604
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles604
def optimizedBody604_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody604_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody604_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody604_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (4, 4)]

def optimizedBody604_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody604_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody604_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody604_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody604_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody604_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody604_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551328#64))

def optimizedBody604_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody604_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody604_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody604_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 4)]

def optimizedBody604_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_13 optimizedBody604_14

def optimizedBody604_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_15

def optimizedBody604_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody604_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 104#64))

def optimizedBody604_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody604_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody604_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody604_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody604_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody604_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody604_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody604_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 4)]

def optimizedBody604_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (46, 48)]

def optimizedBody604_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody604_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody604_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_19 optimizedBody604_29

def optimizedBody604_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 (Flapjack.WordStore.temp 0#5)

def optimizedBody604_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 44), (44, 46), (52, 48)]

def optimizedBody604_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50), (0, 44), (52, 52)]

def optimizedBody604_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50), (0, 44), (52, 52)]

def optimizedBody604_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_34 optimizedBody604_29

def optimizedBody604_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody604_33, 604, 3)) (some 599) ([2]) (some (2, optimizedBody604_35, 604, 4))

def optimizedBody604_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50), (0, 0), (52, 52)]

def optimizedBody604_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_37

def optimizedBody604_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_36 optimizedBody604_38

def optimizedBody604_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_32 optimizedBody604_39

def optimizedBody604_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_31 optimizedBody604_40

def optimizedBody604_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_41

def optimizedBody604_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody604_30 optimizedBody604_42

def optimizedBody604_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 50), (0, 0), (46, 52)]

def optimizedBody604_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_44

def optimizedBody604_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_43 optimizedBody604_45

def optimizedBody604_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_28 optimizedBody604_46

def optimizedBody604_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody604_27, 604, 2)) (some 597) ([2]) (some (2, optimizedBody604_47, 604, 5))

def optimizedBody604_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 46)]

def optimizedBody604_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_49

def optimizedBody604_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_48 optimizedBody604_50

def optimizedBody604_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_26 optimizedBody604_51

def optimizedBody604_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_25 optimizedBody604_52

def optimizedBody604_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_24 optimizedBody604_53

def optimizedBody604_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_23 optimizedBody604_54

def optimizedBody604_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_21 optimizedBody604_55

def optimizedBody604_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_56

def optimizedBody604_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 8) optimizedBody604_16 optimizedBody604_57

def optimizedBody604_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_58 optimizedBody604_50

def optimizedBody604_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_22 optimizedBody604_59

def optimizedBody604_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_21 optimizedBody604_60

def optimizedBody604_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_20 optimizedBody604_61

def optimizedBody604_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_19 optimizedBody604_62

def optimizedBody604_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_63

def optimizedBody604_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 8) optimizedBody604_16 optimizedBody604_64

def optimizedBody604_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_65 optimizedBody604_50

def optimizedBody604_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_12 optimizedBody604_66

def optimizedBody604_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_18 optimizedBody604_67

def optimizedBody604_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_17 optimizedBody604_68

def optimizedBody604_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_0 optimizedBody604_69

def optimizedBody604_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_70

def optimizedBody604_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 8) optimizedBody604_16 optimizedBody604_71

def optimizedBody604_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody604_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody604_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody604_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody604_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_76 optimizedBody604_29

def optimizedBody604_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody604_75, 604, 6)) (some 602) ([]) (some (2, optimizedBody604_77, 604, 7))

def optimizedBody604_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody604_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody604_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody604_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody604_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody604_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def optimizedBody604_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551328#64))

def optimizedBody604_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody604_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody604_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody604_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody604_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody604_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_89 optimizedBody604_90

def optimizedBody604_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_88 optimizedBody604_91

def optimizedBody604_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_87 optimizedBody604_92

def optimizedBody604_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_86 optimizedBody604_93

def optimizedBody604_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_85 optimizedBody604_94

def optimizedBody604_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_0 optimizedBody604_95

def optimizedBody604_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_84 optimizedBody604_96

def optimizedBody604_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_0 optimizedBody604_97

def optimizedBody604_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_83 optimizedBody604_98

def optimizedBody604_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_82 optimizedBody604_99

def optimizedBody604_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_81 optimizedBody604_100

def optimizedBody604_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_21 optimizedBody604_101

def optimizedBody604_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_80 optimizedBody604_102

def optimizedBody604_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_0 optimizedBody604_103

def optimizedBody604_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_104

def optimizedBody604_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 46)]

def optimizedBody604_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody604_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody604_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_108 optimizedBody604_29

def optimizedBody604_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody604_107, 604, 9)) (some 599) ([2]) (some (2, optimizedBody604_109, 604, 10))

def optimizedBody604_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody604_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_111

def optimizedBody604_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_110 optimizedBody604_112

def optimizedBody604_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_76 optimizedBody604_113

def optimizedBody604_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_31 optimizedBody604_114

def optimizedBody604_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_115

def optimizedBody604_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody604_30 optimizedBody604_116

def optimizedBody604_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_117 optimizedBody604_112

def optimizedBody604_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_76 optimizedBody604_118

def optimizedBody604_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody604_106, 604, 8)) (some 603) ([]) (some (2, optimizedBody604_119, 604, 11))

def optimizedBody604_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_120 optimizedBody604_112

def optimizedBody604_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_75 optimizedBody604_121

def optimizedBody604_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_122

def optimizedBody604_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody604_105 optimizedBody604_123

def optimizedBody604_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_124 optimizedBody604_112

def optimizedBody604_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_6 optimizedBody604_125

def optimizedBody604_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_79 optimizedBody604_126

def optimizedBody604_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_10 optimizedBody604_127

def optimizedBody604_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_9 optimizedBody604_128

def optimizedBody604_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_8 optimizedBody604_129

def optimizedBody604_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_7 optimizedBody604_130

def optimizedBody604_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_131

def optimizedBody604_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_78 optimizedBody604_132

def optimizedBody604_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_75 optimizedBody604_133

def optimizedBody604_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_134

def optimizedBody604_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_106

def optimizedBody604_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody604_135 optimizedBody604_136

def optimizedBody604_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4)]

def optimizedBody604_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody604_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_138 optimizedBody604_139

def optimizedBody604_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_140

def optimizedBody604_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_137 optimizedBody604_141

def optimizedBody604_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_74 optimizedBody604_142

def optimizedBody604_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_73 optimizedBody604_143

def optimizedBody604_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_144

def optimizedBody604_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_72 optimizedBody604_145

def optimizedBody604_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_12 optimizedBody604_146

def optimizedBody604_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_11 optimizedBody604_147

def optimizedBody604_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_10 optimizedBody604_148

def optimizedBody604_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_9 optimizedBody604_149

def optimizedBody604_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_8 optimizedBody604_150

def optimizedBody604_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_7 optimizedBody604_151

def optimizedBody604_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_6 optimizedBody604_152

def optimizedBody604_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_153

def optimizedBody604_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody604_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_155

def optimizedBody604_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody604_154 optimizedBody604_156

def optimizedBody604_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_138

def optimizedBody604_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_157 optimizedBody604_158

def optimizedBody604_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_5 optimizedBody604_159

def optimizedBody604_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_4 optimizedBody604_160

def optimizedBody604_162 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody604_161 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody604_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody604_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody604_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_163 optimizedBody604_164

def optimizedBody604_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_74 optimizedBody604_165

def optimizedBody604_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_166

def optimizedBody604_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_162 optimizedBody604_167

def optimizedBody604_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_3 optimizedBody604_168

def optimizedBody604_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_169

def optimizedBody604_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_1 optimizedBody604_170

def optimizedBody604_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_0 optimizedBody604_171

def oracle604 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.ls 0)))
                Flapjack.Spt.ln)
              0
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            22
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                4
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 0)))
              3
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4 (Flapjack.Spt.ls 26)))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 1))) 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)))))
            2
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs Flapjack.Spt.ln 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))) 0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))))
def optimized604 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(604, 1, optimizedBody604_172)
end InitECandidate.Proofs.SmallStages.Oracles604
