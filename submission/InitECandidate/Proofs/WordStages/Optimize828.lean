import InitECandidate.Proofs.WordStages.Optimize812
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source828
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody828_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody828_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody828_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody828_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody828_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody828_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody828_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody828_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody828_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody828_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 192#64)

def optimizedBody828_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody828_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13#64)

def optimizedBody828_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody828_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody828_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody828_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody828_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_14 optimizedBody828_15

def optimizedBody828_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_13 optimizedBody828_16

def optimizedBody828_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_12 optimizedBody828_17

def optimizedBody828_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_8 optimizedBody828_18

def optimizedBody828_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_11 optimizedBody828_19

def optimizedBody828_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_10 optimizedBody828_20

def optimizedBody828_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody828_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody828_21 optimizedBody828_22

def optimizedBody828_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 50000#64)

def optimizedBody828_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody828_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody828_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody828_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_27 optimizedBody828_15

def optimizedBody828_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody828_26, 828, 2)) (some 470) ([2]) (some (2, optimizedBody828_28, 828, 3))

def optimizedBody828_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody828_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody828_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody828_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_32 optimizedBody828_15

def optimizedBody828_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody828_31, 828, 4)) (some 68) ([2]) (some (2, optimizedBody828_33, 828, 5))

def optimizedBody828_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody828_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody828_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody828_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody828_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody828_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_39 optimizedBody828_15

def optimizedBody828_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody828_38, 828, 6)) (some 817) ([2, 4]) (some (2, optimizedBody828_40, 828, 7))

def optimizedBody828_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody828_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 13#64)

def optimizedBody828_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody828_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_44 optimizedBody828_17

def optimizedBody828_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_35 optimizedBody828_45

def optimizedBody828_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_43 optimizedBody828_46

def optimizedBody828_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_10 optimizedBody828_47

def optimizedBody828_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody828_48 optimizedBody828_22

def optimizedBody828_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody828_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody828_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody828_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody828_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody828_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody828_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody828_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody828_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody828_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody828_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody828_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_8 optimizedBody828_60

def optimizedBody828_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_42 optimizedBody828_61

def optimizedBody828_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_59 optimizedBody828_62

def optimizedBody828_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_35 optimizedBody828_63

def optimizedBody828_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_30 optimizedBody828_64

def optimizedBody828_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_58 optimizedBody828_65

def optimizedBody828_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_57 optimizedBody828_66

def optimizedBody828_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_0 optimizedBody828_67

def optimizedBody828_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_56 optimizedBody828_68

def optimizedBody828_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_55 optimizedBody828_69

def optimizedBody828_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_54 optimizedBody828_70

def optimizedBody828_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_53 optimizedBody828_71

def optimizedBody828_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_52 optimizedBody828_72

def optimizedBody828_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_51 optimizedBody828_73

def optimizedBody828_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_50 optimizedBody828_74

def optimizedBody828_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_10 optimizedBody828_75

def optimizedBody828_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_10 optimizedBody828_76

def optimizedBody828_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_49 optimizedBody828_77

def optimizedBody828_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_42 optimizedBody828_78

def optimizedBody828_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_35 optimizedBody828_79

def optimizedBody828_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_10 optimizedBody828_80

def optimizedBody828_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_41 optimizedBody828_81

def optimizedBody828_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_37 optimizedBody828_82

def optimizedBody828_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_36 optimizedBody828_83

def optimizedBody828_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_35 optimizedBody828_84

def optimizedBody828_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_10 optimizedBody828_85

def optimizedBody828_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_34 optimizedBody828_86

def optimizedBody828_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_27 optimizedBody828_87

def optimizedBody828_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_30 optimizedBody828_88

def optimizedBody828_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_10 optimizedBody828_89

def optimizedBody828_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_29 optimizedBody828_90

def optimizedBody828_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_25 optimizedBody828_91

def optimizedBody828_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_24 optimizedBody828_92

def optimizedBody828_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_10 optimizedBody828_93

def optimizedBody828_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_10 optimizedBody828_94

def optimizedBody828_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_23 optimizedBody828_95

def optimizedBody828_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_9 optimizedBody828_96

def optimizedBody828_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_8 optimizedBody828_97

def optimizedBody828_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_7 optimizedBody828_98

def optimizedBody828_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_6 optimizedBody828_99

def optimizedBody828_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_5 optimizedBody828_100

def optimizedBody828_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_4 optimizedBody828_101

def optimizedBody828_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_3 optimizedBody828_102

def optimizedBody828_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_2 optimizedBody828_103

def optimizedBody828_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_1 optimizedBody828_104

def optimizedBody828_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody828_0 optimizedBody828_105

def oracle828 : Option (Spt Nat) :=
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
def optimized828 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(828, 1, optimizedBody828_106)
theorem optimize828_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source828, oracle828) = optimized828 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize828_eq
end InitECandidate.Proofs.WordStages
