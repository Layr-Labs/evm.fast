import InitECandidate.Proofs.WordStages.Optimize805
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source821
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody821_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody821_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody821_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody821_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody821_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody821_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody821_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody821_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody821_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody821_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 256#64)

def optimizedBody821_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody821_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody821_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody821_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody821_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody821_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody821_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_14 optimizedBody821_15

def optimizedBody821_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_13 optimizedBody821_16

def optimizedBody821_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_12 optimizedBody821_17

def optimizedBody821_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_8 optimizedBody821_18

def optimizedBody821_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_11 optimizedBody821_19

def optimizedBody821_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_20

def optimizedBody821_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody821_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody821_21 optimizedBody821_22

def optimizedBody821_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 375#64)

def optimizedBody821_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody821_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody821_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody821_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_27 optimizedBody821_15

def optimizedBody821_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody821_26, 821, 2)) (some 470) ([2]) (some (2, optimizedBody821_28, 821, 3))

def optimizedBody821_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody821_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody821_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody821_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_32 optimizedBody821_15

def optimizedBody821_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody821_31, 821, 4)) (some 68) ([2]) (some (2, optimizedBody821_33, 821, 5))

def optimizedBody821_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody821_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody821_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody821_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody821_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody821_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_39 optimizedBody821_15

def optimizedBody821_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody821_38, 821, 6)) (some 810) ([2, 4]) (some (2, optimizedBody821_40, 821, 7))

def optimizedBody821_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody821_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody821_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody821_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_44 optimizedBody821_17

def optimizedBody821_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_35 optimizedBody821_45

def optimizedBody821_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_43 optimizedBody821_46

def optimizedBody821_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_47

def optimizedBody821_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody821_48 optimizedBody821_22

def optimizedBody821_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody821_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody821_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody821_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody821_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody821_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody821_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody821_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody821_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody821_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody821_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody821_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_8 optimizedBody821_60

def optimizedBody821_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_42 optimizedBody821_61

def optimizedBody821_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_59 optimizedBody821_62

def optimizedBody821_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_35 optimizedBody821_63

def optimizedBody821_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_30 optimizedBody821_64

def optimizedBody821_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_58 optimizedBody821_65

def optimizedBody821_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_57 optimizedBody821_66

def optimizedBody821_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_0 optimizedBody821_67

def optimizedBody821_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_56 optimizedBody821_68

def optimizedBody821_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_55 optimizedBody821_69

def optimizedBody821_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_54 optimizedBody821_70

def optimizedBody821_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_53 optimizedBody821_71

def optimizedBody821_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_52 optimizedBody821_72

def optimizedBody821_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_51 optimizedBody821_73

def optimizedBody821_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_50 optimizedBody821_74

def optimizedBody821_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_75

def optimizedBody821_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_76

def optimizedBody821_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_49 optimizedBody821_77

def optimizedBody821_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_42 optimizedBody821_78

def optimizedBody821_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_35 optimizedBody821_79

def optimizedBody821_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_80

def optimizedBody821_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_41 optimizedBody821_81

def optimizedBody821_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_37 optimizedBody821_82

def optimizedBody821_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_36 optimizedBody821_83

def optimizedBody821_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_35 optimizedBody821_84

def optimizedBody821_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_85

def optimizedBody821_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_34 optimizedBody821_86

def optimizedBody821_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_27 optimizedBody821_87

def optimizedBody821_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_30 optimizedBody821_88

def optimizedBody821_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_89

def optimizedBody821_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_29 optimizedBody821_90

def optimizedBody821_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_25 optimizedBody821_91

def optimizedBody821_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_24 optimizedBody821_92

def optimizedBody821_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_93

def optimizedBody821_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_94

def optimizedBody821_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_23 optimizedBody821_95

def optimizedBody821_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_9 optimizedBody821_96

def optimizedBody821_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_8 optimizedBody821_97

def optimizedBody821_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_7 optimizedBody821_98

def optimizedBody821_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_6 optimizedBody821_99

def optimizedBody821_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_5 optimizedBody821_100

def optimizedBody821_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_4 optimizedBody821_101

def optimizedBody821_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_3 optimizedBody821_102

def optimizedBody821_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_2 optimizedBody821_103

def optimizedBody821_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_1 optimizedBody821_104

def optimizedBody821_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_0 optimizedBody821_105

def oracle821 : Option (Spt Nat) :=
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
def optimized821 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(821, 1, optimizedBody821_106)
theorem optimize821_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source821, oracle821) = optimized821 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize821_eq
end InitECandidate.Proofs.WordStages
