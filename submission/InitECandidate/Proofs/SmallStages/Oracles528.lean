import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source528
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles528
def optimizedBody528_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody528_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44)]

def optimizedBody528_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody528_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody528_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_2 optimizedBody528_3

def optimizedBody528_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody528_1, 528, 2)) (some 477) ([]) (some (2, optimizedBody528_4, 528, 3))

def optimizedBody528_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody528_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 0), (50, 6), (56, 8), (60, 4)]

def optimizedBody528_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody528_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody528_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_9 optimizedBody528_3

def optimizedBody528_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody528_8, 528, 4)) (some 477) ([]) (some (2, optimizedBody528_10, 528, 5))

def optimizedBody528_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody528_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 8), (48, 48), (50, 50), (52, 0), (54, 6), (56, 56), (58, 4), (60, 60)]

def optimizedBody528_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (46, 48), (48, 50), (0, 52), (6, 54), (50, 56), (4, 58), (52, 60)]

def optimizedBody528_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (46, 48), (48, 50), (0, 52), (6, 54), (50, 56), (4, 58), (52, 60)]

def optimizedBody528_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_15 optimizedBody528_3

def optimizedBody528_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody528_14, 528, 6)) (some 472) ([2]) (some (2, optimizedBody528_16, 528, 7))

def optimizedBody528_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody528_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody528_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody528_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_20 optimizedBody528_3

def optimizedBody528_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody528_19, 528, 8)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody528_21, 528, 9))

def optimizedBody528_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody528_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody528_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody528_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44)]

def optimizedBody528_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 46)]

def optimizedBody528_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 46)]

def optimizedBody528_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_28 optimizedBody528_3

def optimizedBody528_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody528_27, 528, 10)) (some 492) ([2]) (some (2, optimizedBody528_29, 528, 11))

def optimizedBody528_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody528_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody528_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_31 optimizedBody528_32

def optimizedBody528_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_24 optimizedBody528_33

def optimizedBody528_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_34

def optimizedBody528_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_30 optimizedBody528_35

def optimizedBody528_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_26 optimizedBody528_36

def optimizedBody528_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_25 optimizedBody528_37

def optimizedBody528_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_38

def optimizedBody528_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (6, 6), (8, 8), (4, 4), (44, 44)]

def optimizedBody528_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) optimizedBody528_39 optimizedBody528_40

def optimizedBody528_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0)]

def optimizedBody528_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46)]

def optimizedBody528_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody528_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_44 optimizedBody528_3

def optimizedBody528_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody528_43, 528, 12)) (some 488) ([2, 4, 6, 8]) (some (2, optimizedBody528_45, 528, 13))

def optimizedBody528_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody528_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody528_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody528_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody528_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody528_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_51 optimizedBody528_3

def optimizedBody528_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_50 optimizedBody528_52

def optimizedBody528_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_49 optimizedBody528_53

def optimizedBody528_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_31 optimizedBody528_54

def optimizedBody528_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_48 optimizedBody528_55

def optimizedBody528_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_56

def optimizedBody528_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody528_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody528_57 optimizedBody528_58

def optimizedBody528_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody528_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody528_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody528_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody528_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody528_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody528_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody528_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_31 optimizedBody528_66

def optimizedBody528_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_24 optimizedBody528_67

def optimizedBody528_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_65 optimizedBody528_68

def optimizedBody528_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_64 optimizedBody528_69

def optimizedBody528_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_63 optimizedBody528_70

def optimizedBody528_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_62 optimizedBody528_71

def optimizedBody528_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_61 optimizedBody528_72

def optimizedBody528_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_60 optimizedBody528_73

def optimizedBody528_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_74

def optimizedBody528_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_75

def optimizedBody528_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_59 optimizedBody528_76

def optimizedBody528_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_24 optimizedBody528_77

def optimizedBody528_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_47 optimizedBody528_78

def optimizedBody528_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_79

def optimizedBody528_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_46 optimizedBody528_80

def optimizedBody528_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_42 optimizedBody528_81

def optimizedBody528_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_82

def optimizedBody528_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_83

def optimizedBody528_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_41 optimizedBody528_84

def optimizedBody528_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_24 optimizedBody528_85

def optimizedBody528_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_23 optimizedBody528_86

def optimizedBody528_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_87

def optimizedBody528_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_22 optimizedBody528_88

def optimizedBody528_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_18 optimizedBody528_89

def optimizedBody528_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_90

def optimizedBody528_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_17 optimizedBody528_91

def optimizedBody528_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_13 optimizedBody528_92

def optimizedBody528_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_12 optimizedBody528_93

def optimizedBody528_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_94

def optimizedBody528_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_11 optimizedBody528_95

def optimizedBody528_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_7 optimizedBody528_96

def optimizedBody528_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_6 optimizedBody528_97

def optimizedBody528_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_5 optimizedBody528_98

def optimizedBody528_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody528_0 optimizedBody528_99

def oracle528 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 Flapjack.Spt.ln) 28
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 5)) Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              22
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 1)) 24
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
                2 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln) 25
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 30 Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 30 Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))))
def optimized528 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(528, 1, optimizedBody528_100)
end InitECandidate.Proofs.SmallStages.Oracles528
