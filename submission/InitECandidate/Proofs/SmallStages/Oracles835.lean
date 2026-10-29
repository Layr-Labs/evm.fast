import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source835
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles835
def optimizedBody835_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody835_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody835_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody835_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody835_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody835_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody835_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody835_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody835_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody835_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 512#64)

def optimizedBody835_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody835_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody835_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody835_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody835_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody835_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody835_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_14 optimizedBody835_15

def optimizedBody835_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_13 optimizedBody835_16

def optimizedBody835_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_12 optimizedBody835_17

def optimizedBody835_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_8 optimizedBody835_18

def optimizedBody835_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_11 optimizedBody835_19

def optimizedBody835_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_20

def optimizedBody835_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody835_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody835_21 optimizedBody835_22

def optimizedBody835_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 600#64)

def optimizedBody835_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody835_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody835_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody835_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_27 optimizedBody835_15

def optimizedBody835_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody835_26, 835, 2)) (some 472) ([2]) (some (2, optimizedBody835_28, 835, 3))

def optimizedBody835_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody835_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody835_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody835_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_32 optimizedBody835_15

def optimizedBody835_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody835_31, 835, 4)) (some 68) ([2]) (some (2, optimizedBody835_33, 835, 5))

def optimizedBody835_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody835_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody835_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody835_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody835_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody835_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_39 optimizedBody835_15

def optimizedBody835_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody835_38, 835, 6)) (some 824) ([2, 4]) (some (2, optimizedBody835_40, 835, 7))

def optimizedBody835_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody835_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody835_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody835_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_44 optimizedBody835_17

def optimizedBody835_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_35 optimizedBody835_45

def optimizedBody835_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_43 optimizedBody835_46

def optimizedBody835_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_47

def optimizedBody835_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody835_48 optimizedBody835_22

def optimizedBody835_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody835_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody835_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody835_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody835_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody835_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody835_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody835_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody835_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody835_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody835_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody835_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_8 optimizedBody835_60

def optimizedBody835_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_42 optimizedBody835_61

def optimizedBody835_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_59 optimizedBody835_62

def optimizedBody835_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_35 optimizedBody835_63

def optimizedBody835_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_30 optimizedBody835_64

def optimizedBody835_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_58 optimizedBody835_65

def optimizedBody835_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_57 optimizedBody835_66

def optimizedBody835_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_0 optimizedBody835_67

def optimizedBody835_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_56 optimizedBody835_68

def optimizedBody835_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_55 optimizedBody835_69

def optimizedBody835_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_54 optimizedBody835_70

def optimizedBody835_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_53 optimizedBody835_71

def optimizedBody835_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_52 optimizedBody835_72

def optimizedBody835_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_51 optimizedBody835_73

def optimizedBody835_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_50 optimizedBody835_74

def optimizedBody835_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_75

def optimizedBody835_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_76

def optimizedBody835_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_49 optimizedBody835_77

def optimizedBody835_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_42 optimizedBody835_78

def optimizedBody835_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_35 optimizedBody835_79

def optimizedBody835_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_80

def optimizedBody835_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_41 optimizedBody835_81

def optimizedBody835_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_37 optimizedBody835_82

def optimizedBody835_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_36 optimizedBody835_83

def optimizedBody835_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_35 optimizedBody835_84

def optimizedBody835_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_85

def optimizedBody835_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_34 optimizedBody835_86

def optimizedBody835_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_27 optimizedBody835_87

def optimizedBody835_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_30 optimizedBody835_88

def optimizedBody835_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_89

def optimizedBody835_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_29 optimizedBody835_90

def optimizedBody835_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_25 optimizedBody835_91

def optimizedBody835_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_24 optimizedBody835_92

def optimizedBody835_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_93

def optimizedBody835_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_94

def optimizedBody835_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_23 optimizedBody835_95

def optimizedBody835_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_9 optimizedBody835_96

def optimizedBody835_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_8 optimizedBody835_97

def optimizedBody835_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_7 optimizedBody835_98

def optimizedBody835_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_99

def optimizedBody835_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_5 optimizedBody835_100

def optimizedBody835_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_4 optimizedBody835_101

def optimizedBody835_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_3 optimizedBody835_102

def optimizedBody835_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_2 optimizedBody835_103

def optimizedBody835_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_1 optimizedBody835_104

def optimizedBody835_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_0 optimizedBody835_105

def oracle835 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
              2 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))
def optimized835 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(835, 1, optimizedBody835_106)
end InitECandidate.Proofs.SmallStages.Oracles835
