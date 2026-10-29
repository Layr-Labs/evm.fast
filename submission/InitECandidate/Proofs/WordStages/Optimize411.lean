import InitECandidate.Proofs.WordStages.Optimize395
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source411
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody411_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody411_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody411_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody411_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody411_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody411_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody411_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (44, 0), (46, 4), (48, 6)]

def optimizedBody411_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (14, 44), (12, 46), (10, 48)]

def optimizedBody411_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (12, 46), (10, 48)]

def optimizedBody411_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody411_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_8 optimizedBody411_9

def optimizedBody411_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody411_7, 411, 2)) (some 187) ([2, 4]) (some (2, optimizedBody411_10, 411, 3))

def optimizedBody411_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody411_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody411_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody411_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody411_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody411_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody411_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody411_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4, 6, 8]

def optimizedBody411_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_18 optimizedBody411_19

def optimizedBody411_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_17 optimizedBody411_20

def optimizedBody411_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_16 optimizedBody411_21

def optimizedBody411_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_15 optimizedBody411_22

def optimizedBody411_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_14 optimizedBody411_23

def optimizedBody411_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_24

def optimizedBody411_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody411_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody411_25 optimizedBody411_26

def optimizedBody411_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody411_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody411_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody411_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody411_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody411_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 10), (6, 12), (44, 14), (46, 12), (48, 10)]

def optimizedBody411_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (12, 44), (46, 46), (10, 48)]

def optimizedBody411_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody411_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_35 optimizedBody411_9

def optimizedBody411_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody411_34, 411, 4)) (some 409) ([2, 4, 6]) (some (2, optimizedBody411_36, 411, 5))

def optimizedBody411_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody411_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody411_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody411_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody411_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody411_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6), (8, 8)]

def optimizedBody411_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody411_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_43 optimizedBody411_44

def optimizedBody411_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_42 optimizedBody411_45

def optimizedBody411_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_38 optimizedBody411_46

def optimizedBody411_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_41 optimizedBody411_47

def optimizedBody411_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_38 optimizedBody411_48

def optimizedBody411_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_40 optimizedBody411_49

def optimizedBody411_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_38 optimizedBody411_50

def optimizedBody411_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_39 optimizedBody411_51

def optimizedBody411_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_38 optimizedBody411_52

def optimizedBody411_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_53

def optimizedBody411_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody411_54 optimizedBody411_26

def optimizedBody411_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 12), (46, 46), (48, 10)]

def optimizedBody411_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody411_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody411_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_58 optimizedBody411_9

def optimizedBody411_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody411_57, 411, 6)) (some 396) ([2]) (some (2, optimizedBody411_59, 411, 7))

def optimizedBody411_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def optimizedBody411_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (6, 6), (10, 2), (0, 44)]

def optimizedBody411_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody411_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_63 optimizedBody411_9

def optimizedBody411_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody411_62, 411, 8)) (some 401) ([2, 4]) (some (2, optimizedBody411_64, 411, 9))

def optimizedBody411_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody411_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody411_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_66 optimizedBody411_67

def optimizedBody411_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_68

def optimizedBody411_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_65 optimizedBody411_69

def optimizedBody411_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_61 optimizedBody411_70

def optimizedBody411_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_71

def optimizedBody411_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_60 optimizedBody411_72

def optimizedBody411_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_56 optimizedBody411_73

def optimizedBody411_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_74

def optimizedBody411_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_75

def optimizedBody411_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_55 optimizedBody411_76

def optimizedBody411_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_14 optimizedBody411_77

def optimizedBody411_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_13 optimizedBody411_78

def optimizedBody411_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_79

def optimizedBody411_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_37 optimizedBody411_80

def optimizedBody411_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_33 optimizedBody411_81

def optimizedBody411_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_32 optimizedBody411_82

def optimizedBody411_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_31 optimizedBody411_83

def optimizedBody411_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_30 optimizedBody411_84

def optimizedBody411_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_29 optimizedBody411_85

def optimizedBody411_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_28 optimizedBody411_86

def optimizedBody411_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_87

def optimizedBody411_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_88

def optimizedBody411_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_27 optimizedBody411_89

def optimizedBody411_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_14 optimizedBody411_90

def optimizedBody411_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_13 optimizedBody411_91

def optimizedBody411_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_12 optimizedBody411_92

def optimizedBody411_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_11 optimizedBody411_93

def optimizedBody411_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_6 optimizedBody411_94

def optimizedBody411_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_5 optimizedBody411_95

def optimizedBody411_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_4 optimizedBody411_96

def optimizedBody411_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_3 optimizedBody411_97

def optimizedBody411_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_2 optimizedBody411_98

def optimizedBody411_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_1 optimizedBody411_99

def optimizedBody411_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody411_0 optimizedBody411_100

def oracle411 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
              2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 2))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 22)) 5
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)))
              3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) 24 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))))
def optimized411 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(411, 3, optimizedBody411_101)
theorem optimize411_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source411, oracle411) = optimized411 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize411_eq
end InitECandidate.Proofs.WordStages
