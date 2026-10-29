import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source576
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles576
def optimizedBody576_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody576_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody576_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody576_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody576_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_2 optimizedBody576_3

def optimizedBody576_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_1, 576, 2)) (some 477) ([]) (some (2, optimizedBody576_4, 576, 3))

def optimizedBody576_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody576_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody576_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 4), (50, 6), (52, 8)]

def optimizedBody576_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 46), (4, 48), (6, 50), (8, 52)]

def optimizedBody576_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (4, 48), (6, 50), (8, 52)]

def optimizedBody576_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_10 optimizedBody576_3

def optimizedBody576_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_9, 576, 4)) (some 472) ([2]) (some (2, optimizedBody576_11, 576, 5))

def optimizedBody576_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody576_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody576_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody576_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody576_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody576_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody576_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody576_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody576_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (48, 2)]

def optimizedBody576_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody576_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody576_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_23 optimizedBody576_3

def optimizedBody576_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_22, 576, 6)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody576_24, 576, 7))

def optimizedBody576_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody576_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody576_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody576_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody576_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody576_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody576_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody576_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody576_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_33, 576, 8)) (some 146) ([2, 4]) (some (2, optimizedBody576_4, 576, 9))

def optimizedBody576_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody576_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody576_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_36, 576, 10)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody576_4, 576, 11))

def optimizedBody576_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44)]

def optimizedBody576_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_38

def optimizedBody576_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_37 optimizedBody576_39

def optimizedBody576_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_35 optimizedBody576_40

def optimizedBody576_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_41

def optimizedBody576_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_34 optimizedBody576_42

def optimizedBody576_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_32 optimizedBody576_43

def optimizedBody576_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_31 optimizedBody576_44

def optimizedBody576_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_30 optimizedBody576_45

def optimizedBody576_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_29 optimizedBody576_46

def optimizedBody576_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_19 optimizedBody576_47

def optimizedBody576_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_28 optimizedBody576_48

def optimizedBody576_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_27 optimizedBody576_49

def optimizedBody576_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_50

def optimizedBody576_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody576_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody576_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody576_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody576_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody576_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_36, 576, 12)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody576_4, 576, 13))

def optimizedBody576_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_57 optimizedBody576_39

def optimizedBody576_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_56 optimizedBody576_58

def optimizedBody576_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_55 optimizedBody576_59

def optimizedBody576_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_54 optimizedBody576_60

def optimizedBody576_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_53 optimizedBody576_61

def optimizedBody576_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_52 optimizedBody576_62

def optimizedBody576_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_63

def optimizedBody576_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 6) optimizedBody576_51 optimizedBody576_64

def optimizedBody576_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody576_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody576_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody576_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_68 optimizedBody576_3

def optimizedBody576_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_67, 576, 14)) (some 492) ([2]) (some (2, optimizedBody576_69, 576, 15))

def optimizedBody576_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody576_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody576_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_71 optimizedBody576_72

def optimizedBody576_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_55 optimizedBody576_73

def optimizedBody576_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_74

def optimizedBody576_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_70 optimizedBody576_75

def optimizedBody576_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_2 optimizedBody576_76

def optimizedBody576_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_66 optimizedBody576_77

def optimizedBody576_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_78

def optimizedBody576_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_65 optimizedBody576_79

def optimizedBody576_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_26 optimizedBody576_80

def optimizedBody576_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_81

def optimizedBody576_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_25 optimizedBody576_82

def optimizedBody576_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_21 optimizedBody576_83

def optimizedBody576_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_20 optimizedBody576_84

def optimizedBody576_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_19 optimizedBody576_85

def optimizedBody576_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_18 optimizedBody576_86

def optimizedBody576_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_17 optimizedBody576_87

def optimizedBody576_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_16 optimizedBody576_88

def optimizedBody576_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_15 optimizedBody576_89

def optimizedBody576_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_14 optimizedBody576_90

def optimizedBody576_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_13 optimizedBody576_91

def optimizedBody576_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_92

def optimizedBody576_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_12 optimizedBody576_93

def optimizedBody576_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_8 optimizedBody576_94

def optimizedBody576_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_7 optimizedBody576_95

def optimizedBody576_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_96

def optimizedBody576_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_5 optimizedBody576_97

def optimizedBody576_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_0 optimizedBody576_98

def oracle576 : Option (Spt Nat) :=
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
def optimized576 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(576, 1, optimizedBody576_99)
end InitECandidate.Proofs.SmallStages.Oracles576
