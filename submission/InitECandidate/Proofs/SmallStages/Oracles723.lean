import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source723
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles723
def optimizedBody723_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody723_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody723_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody723_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody723_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551064#64))

def optimizedBody723_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody723_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody723_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody723_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody723_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody723_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_8 optimizedBody723_9

def optimizedBody723_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_7 optimizedBody723_10

def optimizedBody723_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_6 optimizedBody723_11

def optimizedBody723_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody723_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody723_12 optimizedBody723_13

def optimizedBody723_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0)]

def optimizedBody723_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody723_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody723_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody723_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_17 optimizedBody723_18

def optimizedBody723_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody723_16, 723, 2)) (some 713) ([]) (some (2, optimizedBody723_19, 723, 3))

def optimizedBody723_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 240#64)

def optimizedBody723_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody723_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody723_22, 723, 4)) (some 68) ([2]) (some (2, optimizedBody723_19, 723, 5))

def optimizedBody723_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody723_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551064#64)))

def optimizedBody723_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody723_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody723_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody723_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551096#64)))

def optimizedBody723_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 18446744073709551064#64))

def optimizedBody723_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551088#64)))

def optimizedBody723_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody723_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551072#64)))

def optimizedBody723_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody723_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551080#64)))

def optimizedBody723_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody723_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551072#64))

def optimizedBody723_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody723_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody723_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody723_16, 723, 6)) (some 78) ([2, 4]) (some (2, optimizedBody723_19, 723, 7))

def optimizedBody723_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody723_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody723_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody723_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551064#64))

def optimizedBody723_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody723_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))

def optimizedBody723_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody723_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 48#64)

def optimizedBody723_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody723_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody723_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody723_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_51 optimizedBody723_18

def optimizedBody723_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody723_50, 723, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody723_52, 723, 9))

def optimizedBody723_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_53 optimizedBody723_12

def optimizedBody723_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_49 optimizedBody723_54

def optimizedBody723_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_48 optimizedBody723_55

def optimizedBody723_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_47 optimizedBody723_56

def optimizedBody723_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_46 optimizedBody723_57

def optimizedBody723_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_0 optimizedBody723_58

def optimizedBody723_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_45 optimizedBody723_59

def optimizedBody723_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_44 optimizedBody723_60

def optimizedBody723_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_43 optimizedBody723_61

def optimizedBody723_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_42 optimizedBody723_62

def optimizedBody723_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_41 optimizedBody723_63

def optimizedBody723_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_6 optimizedBody723_64

def optimizedBody723_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_40 optimizedBody723_65

def optimizedBody723_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_39 optimizedBody723_66

def optimizedBody723_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_38 optimizedBody723_67

def optimizedBody723_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_37 optimizedBody723_68

def optimizedBody723_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_28 optimizedBody723_69

def optimizedBody723_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_27 optimizedBody723_70

def optimizedBody723_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_26 optimizedBody723_71

def optimizedBody723_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_36 optimizedBody723_72

def optimizedBody723_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_30 optimizedBody723_73

def optimizedBody723_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_28 optimizedBody723_74

def optimizedBody723_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_35 optimizedBody723_75

def optimizedBody723_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_28 optimizedBody723_76

def optimizedBody723_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_27 optimizedBody723_77

def optimizedBody723_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_26 optimizedBody723_78

def optimizedBody723_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_34 optimizedBody723_79

def optimizedBody723_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_30 optimizedBody723_80

def optimizedBody723_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_28 optimizedBody723_81

def optimizedBody723_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_33 optimizedBody723_82

def optimizedBody723_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_28 optimizedBody723_83

def optimizedBody723_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_27 optimizedBody723_84

def optimizedBody723_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_26 optimizedBody723_85

def optimizedBody723_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_32 optimizedBody723_86

def optimizedBody723_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_30 optimizedBody723_87

def optimizedBody723_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_28 optimizedBody723_88

def optimizedBody723_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_31 optimizedBody723_89

def optimizedBody723_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_28 optimizedBody723_90

def optimizedBody723_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_27 optimizedBody723_91

def optimizedBody723_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_26 optimizedBody723_92

def optimizedBody723_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_30 optimizedBody723_93

def optimizedBody723_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_28 optimizedBody723_94

def optimizedBody723_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_29 optimizedBody723_95

def optimizedBody723_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_28 optimizedBody723_96

def optimizedBody723_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_27 optimizedBody723_97

def optimizedBody723_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_26 optimizedBody723_98

def optimizedBody723_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_25 optimizedBody723_99

def optimizedBody723_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_24 optimizedBody723_100

def optimizedBody723_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_2 optimizedBody723_101

def optimizedBody723_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_1 optimizedBody723_102

def optimizedBody723_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_6 optimizedBody723_103

def optimizedBody723_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_23 optimizedBody723_104

def optimizedBody723_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_17 optimizedBody723_105

def optimizedBody723_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_21 optimizedBody723_106

def optimizedBody723_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_6 optimizedBody723_107

def optimizedBody723_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_20 optimizedBody723_108

def optimizedBody723_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_15 optimizedBody723_109

def optimizedBody723_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_6 optimizedBody723_110

def optimizedBody723_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_6 optimizedBody723_111

def optimizedBody723_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_14 optimizedBody723_112

def optimizedBody723_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_5 optimizedBody723_113

def optimizedBody723_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_4 optimizedBody723_114

def optimizedBody723_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_3 optimizedBody723_115

def optimizedBody723_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_2 optimizedBody723_116

def optimizedBody723_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_1 optimizedBody723_117

def optimizedBody723_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody723_0 optimizedBody723_118

def oracle723 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              2
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln))))
def optimized723 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(723, 1, optimizedBody723_119)
end InitECandidate.Proofs.SmallStages.Oracles723
