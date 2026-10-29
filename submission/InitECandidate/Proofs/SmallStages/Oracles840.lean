import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source840
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles840
def optimizedBody840_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody840_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody840_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody840_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody840_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody840_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody840_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody840_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody840_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody840_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 192#64)

def optimizedBody840_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody840_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13#64)

def optimizedBody840_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody840_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody840_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody840_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody840_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_14 optimizedBody840_15

def optimizedBody840_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_13 optimizedBody840_16

def optimizedBody840_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_12 optimizedBody840_17

def optimizedBody840_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_8 optimizedBody840_18

def optimizedBody840_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_11 optimizedBody840_19

def optimizedBody840_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_20

def optimizedBody840_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody840_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody840_21 optimizedBody840_22

def optimizedBody840_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 50000#64)

def optimizedBody840_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody840_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody840_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody840_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_27 optimizedBody840_15

def optimizedBody840_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody840_26, 840, 2)) (some 472) ([2]) (some (2, optimizedBody840_28, 840, 3))

def optimizedBody840_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody840_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody840_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody840_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_32 optimizedBody840_15

def optimizedBody840_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody840_31, 840, 4)) (some 68) ([2]) (some (2, optimizedBody840_33, 840, 5))

def optimizedBody840_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody840_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody840_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody840_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody840_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody840_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_39 optimizedBody840_15

def optimizedBody840_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody840_38, 840, 6)) (some 829) ([2, 4]) (some (2, optimizedBody840_40, 840, 7))

def optimizedBody840_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody840_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 13#64)

def optimizedBody840_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody840_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_44 optimizedBody840_17

def optimizedBody840_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_35 optimizedBody840_45

def optimizedBody840_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_43 optimizedBody840_46

def optimizedBody840_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_47

def optimizedBody840_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody840_48 optimizedBody840_22

def optimizedBody840_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody840_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody840_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody840_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody840_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody840_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody840_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody840_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody840_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody840_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody840_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody840_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_8 optimizedBody840_60

def optimizedBody840_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_42 optimizedBody840_61

def optimizedBody840_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_59 optimizedBody840_62

def optimizedBody840_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_35 optimizedBody840_63

def optimizedBody840_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_30 optimizedBody840_64

def optimizedBody840_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_58 optimizedBody840_65

def optimizedBody840_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_57 optimizedBody840_66

def optimizedBody840_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_0 optimizedBody840_67

def optimizedBody840_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_56 optimizedBody840_68

def optimizedBody840_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_55 optimizedBody840_69

def optimizedBody840_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_54 optimizedBody840_70

def optimizedBody840_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_53 optimizedBody840_71

def optimizedBody840_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_52 optimizedBody840_72

def optimizedBody840_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_51 optimizedBody840_73

def optimizedBody840_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_50 optimizedBody840_74

def optimizedBody840_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_75

def optimizedBody840_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_76

def optimizedBody840_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_49 optimizedBody840_77

def optimizedBody840_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_42 optimizedBody840_78

def optimizedBody840_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_35 optimizedBody840_79

def optimizedBody840_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_80

def optimizedBody840_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_41 optimizedBody840_81

def optimizedBody840_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_37 optimizedBody840_82

def optimizedBody840_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_36 optimizedBody840_83

def optimizedBody840_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_35 optimizedBody840_84

def optimizedBody840_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_85

def optimizedBody840_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_34 optimizedBody840_86

def optimizedBody840_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_27 optimizedBody840_87

def optimizedBody840_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_30 optimizedBody840_88

def optimizedBody840_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_89

def optimizedBody840_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_29 optimizedBody840_90

def optimizedBody840_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_25 optimizedBody840_91

def optimizedBody840_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_24 optimizedBody840_92

def optimizedBody840_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_93

def optimizedBody840_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_94

def optimizedBody840_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_23 optimizedBody840_95

def optimizedBody840_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_9 optimizedBody840_96

def optimizedBody840_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_8 optimizedBody840_97

def optimizedBody840_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_7 optimizedBody840_98

def optimizedBody840_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_6 optimizedBody840_99

def optimizedBody840_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_5 optimizedBody840_100

def optimizedBody840_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_4 optimizedBody840_101

def optimizedBody840_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_3 optimizedBody840_102

def optimizedBody840_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_2 optimizedBody840_103

def optimizedBody840_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_1 optimizedBody840_104

def optimizedBody840_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_0 optimizedBody840_105

def oracle840 : Option (Spt Nat) :=
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
def optimized840 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(840, 1, optimizedBody840_106)
end InitECandidate.Proofs.SmallStages.Oracles840
