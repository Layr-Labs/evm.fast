import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles551
def optimizedBody551_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody551_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody551_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody551_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody551_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_2 optimizedBody551_3

def optimizedBody551_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody551_1, 551, 2)) (some 477) ([]) (some (2, optimizedBody551_4, 551, 3))

def optimizedBody551_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody551_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody551_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody551_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody551_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 18446744073709551336#64))

def optimizedBody551_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10)]

def optimizedBody551_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody551_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody551_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_13 optimizedBody551_3

def optimizedBody551_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody551_12, 551, 4)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody551_14, 551, 5))

def optimizedBody551_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody551_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody551_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody551_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody551_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody551_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody551_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4), (48, 2)]

def optimizedBody551_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody551_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody551_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_24 optimizedBody551_3

def optimizedBody551_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody551_23, 551, 6)) (some 549) ([2, 4]) (some (2, optimizedBody551_25, 551, 7))

def optimizedBody551_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody551_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody551_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody551_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody551_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody551_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_31 optimizedBody551_3

def optimizedBody551_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody551_30, 551, 8)) (some 472) ([2]) (some (2, optimizedBody551_32, 551, 9))

def optimizedBody551_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (0, 0)]

def optimizedBody551_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_34

def optimizedBody551_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_33 optimizedBody551_35

def optimizedBody551_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_24 optimizedBody551_36

def optimizedBody551_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_29 optimizedBody551_37

def optimizedBody551_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_38

def optimizedBody551_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2100#64)

def optimizedBody551_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody551_30, 551, 10)) (some 472) ([2]) (some (2, optimizedBody551_32, 551, 11))

def optimizedBody551_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 0)]

def optimizedBody551_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody551_30, 551, 12)) (some 550) ([2, 4]) (some (2, optimizedBody551_32, 551, 13))

def optimizedBody551_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_43 optimizedBody551_35

def optimizedBody551_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_42 optimizedBody551_44

def optimizedBody551_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_45

def optimizedBody551_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_41 optimizedBody551_46

def optimizedBody551_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_24 optimizedBody551_47

def optimizedBody551_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_40 optimizedBody551_48

def optimizedBody551_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_49

def optimizedBody551_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody551_39 optimizedBody551_50

def optimizedBody551_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def optimizedBody551_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody551_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody551_53, 551, 14)) (some 412) ([2, 4]) (some (2, optimizedBody551_4, 551, 15))

def optimizedBody551_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody551_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody551_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody551_56, 551, 16)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody551_4, 551, 17))

def optimizedBody551_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody551_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody551_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody551_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_60 optimizedBody551_3

def optimizedBody551_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody551_59, 551, 18)) (some 492) ([2]) (some (2, optimizedBody551_61, 551, 19))

def optimizedBody551_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody551_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody551_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_63 optimizedBody551_64

def optimizedBody551_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_28 optimizedBody551_65

def optimizedBody551_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_66

def optimizedBody551_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_62 optimizedBody551_67

def optimizedBody551_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_2 optimizedBody551_68

def optimizedBody551_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_58 optimizedBody551_69

def optimizedBody551_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_70

def optimizedBody551_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_57 optimizedBody551_71

def optimizedBody551_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_55 optimizedBody551_72

def optimizedBody551_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_73

def optimizedBody551_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_54 optimizedBody551_74

def optimizedBody551_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_52 optimizedBody551_75

def optimizedBody551_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_76

def optimizedBody551_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_51 optimizedBody551_77

def optimizedBody551_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_28 optimizedBody551_78

def optimizedBody551_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_27 optimizedBody551_79

def optimizedBody551_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_80

def optimizedBody551_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_26 optimizedBody551_81

def optimizedBody551_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_22 optimizedBody551_82

def optimizedBody551_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_21 optimizedBody551_83

def optimizedBody551_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_20 optimizedBody551_84

def optimizedBody551_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_19 optimizedBody551_85

def optimizedBody551_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_18 optimizedBody551_86

def optimizedBody551_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_17 optimizedBody551_87

def optimizedBody551_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_16 optimizedBody551_88

def optimizedBody551_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_89

def optimizedBody551_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_15 optimizedBody551_90

def optimizedBody551_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_11 optimizedBody551_91

def optimizedBody551_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_10 optimizedBody551_92

def optimizedBody551_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_9 optimizedBody551_93

def optimizedBody551_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_8 optimizedBody551_94

def optimizedBody551_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_7 optimizedBody551_95

def optimizedBody551_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_6 optimizedBody551_96

def optimizedBody551_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_5 optimizedBody551_97

def optimizedBody551_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody551_0 optimizedBody551_98

def oracle551 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 4
                (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 5 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
              22
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))))
            Flapjack.Spt.ln)))))
def optimized551 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(551, 1, optimizedBody551_99)
end InitECandidate.Proofs.SmallStages.Oracles551
