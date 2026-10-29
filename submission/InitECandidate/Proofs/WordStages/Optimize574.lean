import InitECandidate.Proofs.WordStages.Optimize558
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source574
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody574_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody574_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody574_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody574_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody574_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_2 optimizedBody574_3

def optimizedBody574_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody574_1, 574, 2)) (some 475) ([]) (some (2, optimizedBody574_4, 574, 3))

def optimizedBody574_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody574_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody574_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 4), (50, 6), (52, 8)]

def optimizedBody574_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 46), (4, 48), (6, 50), (8, 52)]

def optimizedBody574_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (4, 48), (6, 50), (8, 52)]

def optimizedBody574_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_10 optimizedBody574_3

def optimizedBody574_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody574_9, 574, 4)) (some 470) ([2]) (some (2, optimizedBody574_11, 574, 5))

def optimizedBody574_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody574_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody574_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody574_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody574_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody574_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody574_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody574_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody574_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (48, 2)]

def optimizedBody574_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody574_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody574_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_23 optimizedBody574_3

def optimizedBody574_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody574_22, 574, 6)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody574_24, 574, 7))

def optimizedBody574_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody574_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody574_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody574_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody574_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody574_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody574_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody574_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody574_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody574_33, 574, 8)) (some 146) ([2, 4]) (some (2, optimizedBody574_4, 574, 9))

def optimizedBody574_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody574_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody574_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody574_36, 574, 10)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody574_4, 574, 11))

def optimizedBody574_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44)]

def optimizedBody574_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_38

def optimizedBody574_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_37 optimizedBody574_39

def optimizedBody574_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_35 optimizedBody574_40

def optimizedBody574_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_41

def optimizedBody574_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_34 optimizedBody574_42

def optimizedBody574_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_32 optimizedBody574_43

def optimizedBody574_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_31 optimizedBody574_44

def optimizedBody574_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_30 optimizedBody574_45

def optimizedBody574_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_29 optimizedBody574_46

def optimizedBody574_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_19 optimizedBody574_47

def optimizedBody574_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_28 optimizedBody574_48

def optimizedBody574_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_27 optimizedBody574_49

def optimizedBody574_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_50

def optimizedBody574_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody574_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody574_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody574_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody574_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody574_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody574_36, 574, 12)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody574_4, 574, 13))

def optimizedBody574_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_57 optimizedBody574_39

def optimizedBody574_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_56 optimizedBody574_58

def optimizedBody574_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_55 optimizedBody574_59

def optimizedBody574_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_54 optimizedBody574_60

def optimizedBody574_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_53 optimizedBody574_61

def optimizedBody574_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_52 optimizedBody574_62

def optimizedBody574_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_63

def optimizedBody574_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 6) optimizedBody574_51 optimizedBody574_64

def optimizedBody574_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody574_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody574_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody574_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_68 optimizedBody574_3

def optimizedBody574_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody574_67, 574, 14)) (some 490) ([2]) (some (2, optimizedBody574_69, 574, 15))

def optimizedBody574_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody574_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody574_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_71 optimizedBody574_72

def optimizedBody574_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_55 optimizedBody574_73

def optimizedBody574_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_74

def optimizedBody574_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_70 optimizedBody574_75

def optimizedBody574_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_2 optimizedBody574_76

def optimizedBody574_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_66 optimizedBody574_77

def optimizedBody574_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_78

def optimizedBody574_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_65 optimizedBody574_79

def optimizedBody574_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_26 optimizedBody574_80

def optimizedBody574_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_81

def optimizedBody574_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_25 optimizedBody574_82

def optimizedBody574_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_21 optimizedBody574_83

def optimizedBody574_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_20 optimizedBody574_84

def optimizedBody574_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_19 optimizedBody574_85

def optimizedBody574_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_18 optimizedBody574_86

def optimizedBody574_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_17 optimizedBody574_87

def optimizedBody574_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_16 optimizedBody574_88

def optimizedBody574_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_15 optimizedBody574_89

def optimizedBody574_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_14 optimizedBody574_90

def optimizedBody574_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_13 optimizedBody574_91

def optimizedBody574_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_92

def optimizedBody574_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_12 optimizedBody574_93

def optimizedBody574_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_8 optimizedBody574_94

def optimizedBody574_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_7 optimizedBody574_95

def optimizedBody574_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_96

def optimizedBody574_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_5 optimizedBody574_97

def optimizedBody574_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_0 optimizedBody574_98

def oracle574 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 3)) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) 1 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 25 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))))
def optimized574 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(574, 1, optimizedBody574_99)
theorem optimize574_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source574, oracle574) = optimized574 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize574_eq
end InitECandidate.Proofs.WordStages
