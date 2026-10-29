import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source839
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles839
def optimizedBody839_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody839_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody839_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody839_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody839_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody839_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody839_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody839_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody839_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody839_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 128#64)

def optimizedBody839_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody839_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody839_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody839_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody839_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody839_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody839_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_14 optimizedBody839_15

def optimizedBody839_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_13 optimizedBody839_16

def optimizedBody839_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_12 optimizedBody839_17

def optimizedBody839_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_18

def optimizedBody839_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_11 optimizedBody839_19

def optimizedBody839_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_20

def optimizedBody839_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody839_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody839_21 optimizedBody839_22

def optimizedBody839_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23800#64)

def optimizedBody839_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody839_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody839_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody839_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_27 optimizedBody839_15

def optimizedBody839_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody839_26, 839, 2)) (some 472) ([2]) (some (2, optimizedBody839_28, 839, 3))

def optimizedBody839_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody839_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody839_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody839_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_32 optimizedBody839_15

def optimizedBody839_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody839_31, 839, 4)) (some 68) ([2]) (some (2, optimizedBody839_33, 839, 5))

def optimizedBody839_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody839_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody839_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody839_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody839_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody839_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_39 optimizedBody839_15

def optimizedBody839_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody839_38, 839, 6)) (some 828) ([2, 4]) (some (2, optimizedBody839_40, 839, 7))

def optimizedBody839_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody839_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody839_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody839_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_44 optimizedBody839_17

def optimizedBody839_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_35 optimizedBody839_45

def optimizedBody839_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_43 optimizedBody839_46

def optimizedBody839_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_47

def optimizedBody839_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody839_48 optimizedBody839_22

def optimizedBody839_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody839_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody839_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody839_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody839_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody839_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody839_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody839_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody839_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody839_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody839_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody839_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_60

def optimizedBody839_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_42 optimizedBody839_61

def optimizedBody839_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_59 optimizedBody839_62

def optimizedBody839_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_35 optimizedBody839_63

def optimizedBody839_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_30 optimizedBody839_64

def optimizedBody839_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_58 optimizedBody839_65

def optimizedBody839_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_57 optimizedBody839_66

def optimizedBody839_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_0 optimizedBody839_67

def optimizedBody839_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_56 optimizedBody839_68

def optimizedBody839_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_55 optimizedBody839_69

def optimizedBody839_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_54 optimizedBody839_70

def optimizedBody839_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_53 optimizedBody839_71

def optimizedBody839_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_52 optimizedBody839_72

def optimizedBody839_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_51 optimizedBody839_73

def optimizedBody839_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_50 optimizedBody839_74

def optimizedBody839_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_75

def optimizedBody839_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_76

def optimizedBody839_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_49 optimizedBody839_77

def optimizedBody839_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_42 optimizedBody839_78

def optimizedBody839_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_35 optimizedBody839_79

def optimizedBody839_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_80

def optimizedBody839_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_41 optimizedBody839_81

def optimizedBody839_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_37 optimizedBody839_82

def optimizedBody839_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_36 optimizedBody839_83

def optimizedBody839_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_35 optimizedBody839_84

def optimizedBody839_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_85

def optimizedBody839_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_34 optimizedBody839_86

def optimizedBody839_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_27 optimizedBody839_87

def optimizedBody839_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_30 optimizedBody839_88

def optimizedBody839_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_89

def optimizedBody839_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_29 optimizedBody839_90

def optimizedBody839_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_25 optimizedBody839_91

def optimizedBody839_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_24 optimizedBody839_92

def optimizedBody839_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_93

def optimizedBody839_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_94

def optimizedBody839_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_23 optimizedBody839_95

def optimizedBody839_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_9 optimizedBody839_96

def optimizedBody839_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_97

def optimizedBody839_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_7 optimizedBody839_98

def optimizedBody839_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_6 optimizedBody839_99

def optimizedBody839_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_5 optimizedBody839_100

def optimizedBody839_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_4 optimizedBody839_101

def optimizedBody839_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_3 optimizedBody839_102

def optimizedBody839_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_2 optimizedBody839_103

def optimizedBody839_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_1 optimizedBody839_104

def optimizedBody839_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_0 optimizedBody839_105

def oracle839 : Option (Spt Nat) :=
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
def optimized839 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(839, 1, optimizedBody839_106)
end InitECandidate.Proofs.SmallStages.Oracles839
