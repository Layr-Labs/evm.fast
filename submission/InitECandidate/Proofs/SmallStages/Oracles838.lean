import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source838
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles838
def optimizedBody838_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody838_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody838_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody838_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody838_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody838_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody838_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody838_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody838_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody838_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 64#64)

def optimizedBody838_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody838_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody838_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody838_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody838_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody838_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody838_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_14 optimizedBody838_15

def optimizedBody838_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_13 optimizedBody838_16

def optimizedBody838_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_12 optimizedBody838_17

def optimizedBody838_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_8 optimizedBody838_18

def optimizedBody838_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_11 optimizedBody838_19

def optimizedBody838_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_20

def optimizedBody838_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody838_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody838_21 optimizedBody838_22

def optimizedBody838_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5500#64)

def optimizedBody838_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody838_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody838_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody838_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_27 optimizedBody838_15

def optimizedBody838_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody838_26, 838, 2)) (some 472) ([2]) (some (2, optimizedBody838_28, 838, 3))

def optimizedBody838_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody838_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody838_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody838_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_32 optimizedBody838_15

def optimizedBody838_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody838_31, 838, 4)) (some 68) ([2]) (some (2, optimizedBody838_33, 838, 5))

def optimizedBody838_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody838_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody838_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody838_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody838_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody838_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_39 optimizedBody838_15

def optimizedBody838_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody838_38, 838, 6)) (some 827) ([2, 4]) (some (2, optimizedBody838_40, 838, 7))

def optimizedBody838_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody838_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody838_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody838_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_44 optimizedBody838_17

def optimizedBody838_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_35 optimizedBody838_45

def optimizedBody838_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_43 optimizedBody838_46

def optimizedBody838_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_47

def optimizedBody838_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody838_48 optimizedBody838_22

def optimizedBody838_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody838_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody838_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody838_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody838_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody838_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody838_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody838_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody838_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody838_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody838_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody838_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_8 optimizedBody838_60

def optimizedBody838_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_42 optimizedBody838_61

def optimizedBody838_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_59 optimizedBody838_62

def optimizedBody838_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_35 optimizedBody838_63

def optimizedBody838_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_30 optimizedBody838_64

def optimizedBody838_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_58 optimizedBody838_65

def optimizedBody838_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_57 optimizedBody838_66

def optimizedBody838_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_0 optimizedBody838_67

def optimizedBody838_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_56 optimizedBody838_68

def optimizedBody838_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_55 optimizedBody838_69

def optimizedBody838_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_54 optimizedBody838_70

def optimizedBody838_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_53 optimizedBody838_71

def optimizedBody838_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_52 optimizedBody838_72

def optimizedBody838_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_51 optimizedBody838_73

def optimizedBody838_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_50 optimizedBody838_74

def optimizedBody838_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_75

def optimizedBody838_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_76

def optimizedBody838_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_49 optimizedBody838_77

def optimizedBody838_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_42 optimizedBody838_78

def optimizedBody838_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_35 optimizedBody838_79

def optimizedBody838_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_80

def optimizedBody838_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_41 optimizedBody838_81

def optimizedBody838_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_37 optimizedBody838_82

def optimizedBody838_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_36 optimizedBody838_83

def optimizedBody838_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_35 optimizedBody838_84

def optimizedBody838_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_85

def optimizedBody838_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_34 optimizedBody838_86

def optimizedBody838_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_27 optimizedBody838_87

def optimizedBody838_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_30 optimizedBody838_88

def optimizedBody838_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_89

def optimizedBody838_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_29 optimizedBody838_90

def optimizedBody838_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_25 optimizedBody838_91

def optimizedBody838_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_24 optimizedBody838_92

def optimizedBody838_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_93

def optimizedBody838_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_94

def optimizedBody838_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_23 optimizedBody838_95

def optimizedBody838_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_9 optimizedBody838_96

def optimizedBody838_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_8 optimizedBody838_97

def optimizedBody838_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_7 optimizedBody838_98

def optimizedBody838_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_99

def optimizedBody838_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_5 optimizedBody838_100

def optimizedBody838_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_4 optimizedBody838_101

def optimizedBody838_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_3 optimizedBody838_102

def optimizedBody838_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_2 optimizedBody838_103

def optimizedBody838_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_1 optimizedBody838_104

def optimizedBody838_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_0 optimizedBody838_105

def oracle838 : Option (Spt Nat) :=
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
def optimized838 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(838, 1, optimizedBody838_106)
end InitECandidate.Proofs.SmallStages.Oracles838
