import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles413
def optimizedBody413_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody413_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody413_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody413_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody413_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody413_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody413_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (44, 0), (46, 4), (48, 6)]

def optimizedBody413_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (14, 44), (12, 46), (10, 48)]

def optimizedBody413_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (12, 46), (10, 48)]

def optimizedBody413_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody413_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_8 optimizedBody413_9

def optimizedBody413_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody413_7, 413, 2)) (some 187) ([2, 4]) (some (2, optimizedBody413_10, 413, 3))

def optimizedBody413_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody413_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody413_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody413_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody413_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody413_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody413_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody413_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4, 6, 8]

def optimizedBody413_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_18 optimizedBody413_19

def optimizedBody413_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_17 optimizedBody413_20

def optimizedBody413_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_16 optimizedBody413_21

def optimizedBody413_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_15 optimizedBody413_22

def optimizedBody413_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_14 optimizedBody413_23

def optimizedBody413_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_24

def optimizedBody413_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody413_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody413_25 optimizedBody413_26

def optimizedBody413_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody413_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody413_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody413_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody413_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody413_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 10), (6, 12), (44, 14), (46, 12), (48, 10)]

def optimizedBody413_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (12, 44), (46, 46), (10, 48)]

def optimizedBody413_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody413_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_35 optimizedBody413_9

def optimizedBody413_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody413_34, 413, 4)) (some 411) ([2, 4, 6]) (some (2, optimizedBody413_36, 413, 5))

def optimizedBody413_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody413_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody413_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody413_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody413_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody413_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6), (8, 8)]

def optimizedBody413_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody413_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_43 optimizedBody413_44

def optimizedBody413_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_42 optimizedBody413_45

def optimizedBody413_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_38 optimizedBody413_46

def optimizedBody413_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_41 optimizedBody413_47

def optimizedBody413_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_38 optimizedBody413_48

def optimizedBody413_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_40 optimizedBody413_49

def optimizedBody413_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_38 optimizedBody413_50

def optimizedBody413_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_39 optimizedBody413_51

def optimizedBody413_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_38 optimizedBody413_52

def optimizedBody413_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_53

def optimizedBody413_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody413_54 optimizedBody413_26

def optimizedBody413_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 12), (46, 46), (48, 10)]

def optimizedBody413_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody413_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody413_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_58 optimizedBody413_9

def optimizedBody413_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody413_57, 413, 6)) (some 398) ([2]) (some (2, optimizedBody413_59, 413, 7))

def optimizedBody413_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def optimizedBody413_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (6, 6), (10, 2), (0, 44)]

def optimizedBody413_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody413_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_63 optimizedBody413_9

def optimizedBody413_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody413_62, 413, 8)) (some 403) ([2, 4]) (some (2, optimizedBody413_64, 413, 9))

def optimizedBody413_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody413_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody413_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_66 optimizedBody413_67

def optimizedBody413_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_68

def optimizedBody413_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_65 optimizedBody413_69

def optimizedBody413_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_61 optimizedBody413_70

def optimizedBody413_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_71

def optimizedBody413_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_60 optimizedBody413_72

def optimizedBody413_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_56 optimizedBody413_73

def optimizedBody413_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_74

def optimizedBody413_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_75

def optimizedBody413_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_55 optimizedBody413_76

def optimizedBody413_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_14 optimizedBody413_77

def optimizedBody413_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_13 optimizedBody413_78

def optimizedBody413_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_79

def optimizedBody413_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_37 optimizedBody413_80

def optimizedBody413_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_33 optimizedBody413_81

def optimizedBody413_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_32 optimizedBody413_82

def optimizedBody413_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_31 optimizedBody413_83

def optimizedBody413_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_30 optimizedBody413_84

def optimizedBody413_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_29 optimizedBody413_85

def optimizedBody413_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_28 optimizedBody413_86

def optimizedBody413_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_87

def optimizedBody413_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_88

def optimizedBody413_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_27 optimizedBody413_89

def optimizedBody413_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_14 optimizedBody413_90

def optimizedBody413_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_13 optimizedBody413_91

def optimizedBody413_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_12 optimizedBody413_92

def optimizedBody413_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_11 optimizedBody413_93

def optimizedBody413_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_6 optimizedBody413_94

def optimizedBody413_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_5 optimizedBody413_95

def optimizedBody413_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_4 optimizedBody413_96

def optimizedBody413_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_3 optimizedBody413_97

def optimizedBody413_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_2 optimizedBody413_98

def optimizedBody413_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_1 optimizedBody413_99

def optimizedBody413_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_0 optimizedBody413_100

def oracle413 : Option (Spt Nat) :=
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
def optimized413 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(413, 3, optimizedBody413_101)
end InitECandidate.Proofs.SmallStages.Oracles413
