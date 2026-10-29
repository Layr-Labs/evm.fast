import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source833
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles833
def optimizedBody833_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody833_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody833_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody833_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody833_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody833_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody833_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody833_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody833_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody833_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 256#64)

def optimizedBody833_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody833_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody833_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody833_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody833_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody833_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody833_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_14 optimizedBody833_15

def optimizedBody833_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_13 optimizedBody833_16

def optimizedBody833_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_12 optimizedBody833_17

def optimizedBody833_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_8 optimizedBody833_18

def optimizedBody833_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_11 optimizedBody833_19

def optimizedBody833_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_10 optimizedBody833_20

def optimizedBody833_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody833_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody833_21 optimizedBody833_22

def optimizedBody833_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 375#64)

def optimizedBody833_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody833_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody833_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody833_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_27 optimizedBody833_15

def optimizedBody833_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody833_26, 833, 2)) (some 472) ([2]) (some (2, optimizedBody833_28, 833, 3))

def optimizedBody833_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody833_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody833_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody833_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_32 optimizedBody833_15

def optimizedBody833_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody833_31, 833, 4)) (some 68) ([2]) (some (2, optimizedBody833_33, 833, 5))

def optimizedBody833_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody833_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody833_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody833_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody833_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody833_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_39 optimizedBody833_15

def optimizedBody833_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody833_38, 833, 6)) (some 822) ([2, 4]) (some (2, optimizedBody833_40, 833, 7))

def optimizedBody833_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody833_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody833_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody833_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_44 optimizedBody833_17

def optimizedBody833_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_35 optimizedBody833_45

def optimizedBody833_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_43 optimizedBody833_46

def optimizedBody833_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_10 optimizedBody833_47

def optimizedBody833_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody833_48 optimizedBody833_22

def optimizedBody833_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody833_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody833_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody833_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody833_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody833_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody833_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody833_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody833_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody833_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody833_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody833_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_8 optimizedBody833_60

def optimizedBody833_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_42 optimizedBody833_61

def optimizedBody833_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_59 optimizedBody833_62

def optimizedBody833_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_35 optimizedBody833_63

def optimizedBody833_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_30 optimizedBody833_64

def optimizedBody833_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_58 optimizedBody833_65

def optimizedBody833_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_57 optimizedBody833_66

def optimizedBody833_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_0 optimizedBody833_67

def optimizedBody833_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_56 optimizedBody833_68

def optimizedBody833_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_55 optimizedBody833_69

def optimizedBody833_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_54 optimizedBody833_70

def optimizedBody833_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_53 optimizedBody833_71

def optimizedBody833_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_52 optimizedBody833_72

def optimizedBody833_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_51 optimizedBody833_73

def optimizedBody833_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_50 optimizedBody833_74

def optimizedBody833_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_10 optimizedBody833_75

def optimizedBody833_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_10 optimizedBody833_76

def optimizedBody833_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_49 optimizedBody833_77

def optimizedBody833_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_42 optimizedBody833_78

def optimizedBody833_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_35 optimizedBody833_79

def optimizedBody833_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_10 optimizedBody833_80

def optimizedBody833_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_41 optimizedBody833_81

def optimizedBody833_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_37 optimizedBody833_82

def optimizedBody833_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_36 optimizedBody833_83

def optimizedBody833_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_35 optimizedBody833_84

def optimizedBody833_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_10 optimizedBody833_85

def optimizedBody833_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_34 optimizedBody833_86

def optimizedBody833_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_27 optimizedBody833_87

def optimizedBody833_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_30 optimizedBody833_88

def optimizedBody833_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_10 optimizedBody833_89

def optimizedBody833_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_29 optimizedBody833_90

def optimizedBody833_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_25 optimizedBody833_91

def optimizedBody833_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_24 optimizedBody833_92

def optimizedBody833_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_10 optimizedBody833_93

def optimizedBody833_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_10 optimizedBody833_94

def optimizedBody833_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_23 optimizedBody833_95

def optimizedBody833_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_9 optimizedBody833_96

def optimizedBody833_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_8 optimizedBody833_97

def optimizedBody833_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_7 optimizedBody833_98

def optimizedBody833_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_6 optimizedBody833_99

def optimizedBody833_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_5 optimizedBody833_100

def optimizedBody833_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_4 optimizedBody833_101

def optimizedBody833_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_3 optimizedBody833_102

def optimizedBody833_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_2 optimizedBody833_103

def optimizedBody833_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_1 optimizedBody833_104

def optimizedBody833_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody833_0 optimizedBody833_105

def oracle833 : Option (Spt Nat) :=
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
def optimized833 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(833, 1, optimizedBody833_106)
end InitECandidate.Proofs.SmallStages.Oracles833
