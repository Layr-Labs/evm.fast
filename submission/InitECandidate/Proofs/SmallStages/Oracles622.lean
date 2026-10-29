import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source622
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles622
def optimizedBody622_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 16), (50, 12), (52, 10), (48, 14)]

def optimizedBody622_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (50, 50), (52, 52), (4, 48)]

def optimizedBody622_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (50, 50), (52, 52), (4, 48)]

def optimizedBody622_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody622_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_2 optimizedBody622_3

def optimizedBody622_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody622_1, 622, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody622_4, 622, 3))

def optimizedBody622_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody622_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody622_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody622_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody622_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2300#64)

def optimizedBody622_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0)]

def optimizedBody622_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_10 optimizedBody622_11

def optimizedBody622_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_12

def optimizedBody622_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 2)]

def optimizedBody622_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_14

def optimizedBody622_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 8) optimizedBody622_13 optimizedBody622_15

def optimizedBody622_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52), (54, 4)]

def optimizedBody622_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (10, 46), (46, 48), (0, 50), (12, 52), (6, 54)]

def optimizedBody622_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (46, 48), (0, 50), (12, 52), (6, 54)]

def optimizedBody622_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_19 optimizedBody622_3

def optimizedBody622_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody622_18, 622, 4)) (some 465) ([2, 4]) (some (2, optimizedBody622_20, 622, 5))

def optimizedBody622_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody622_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 12), (4, 10), (44, 44), (46, 46), (48, 12)]

def optimizedBody622_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody622_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody622_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_25 optimizedBody622_3

def optimizedBody622_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody622_24, 622, 6)) (some 465) ([2, 4]) (some (2, optimizedBody622_26, 622, 7))

def optimizedBody622_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 6)]

def optimizedBody622_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (16, 44), (18, 46)]

def optimizedBody622_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (18, 46)]

def optimizedBody622_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_30 optimizedBody622_3

def optimizedBody622_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody622_29, 622, 8)) (some 465) ([2, 4]) (some (2, optimizedBody622_31, 622, 9))

def optimizedBody622_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 18), (4, 4)]

def optimizedBody622_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4]

def optimizedBody622_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_33 optimizedBody622_34

def optimizedBody622_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_35

def optimizedBody622_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_32 optimizedBody622_36

def optimizedBody622_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_28 optimizedBody622_37

def optimizedBody622_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_38

def optimizedBody622_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_27 optimizedBody622_39

def optimizedBody622_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_23 optimizedBody622_40

def optimizedBody622_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_41

def optimizedBody622_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (8, 46), (0, 0), (12, 12), (6, 6), (14, 44)]

def optimizedBody622_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody622_42 optimizedBody622_43

def optimizedBody622_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody622_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody622_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody622_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody622_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody622_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody622_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (0, 0)]

def optimizedBody622_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 0)]

def optimizedBody622_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_52

def optimizedBody622_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def optimizedBody622_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_54

def optimizedBody622_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 12) optimizedBody622_53 optimizedBody622_55

def optimizedBody622_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody622_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody622_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody622_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody622_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody622_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4]

def optimizedBody622_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_61 optimizedBody622_62

def optimizedBody622_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_60 optimizedBody622_63

def optimizedBody622_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_59 optimizedBody622_64

def optimizedBody622_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_58 optimizedBody622_65

def optimizedBody622_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_57 optimizedBody622_66

def optimizedBody622_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_67

def optimizedBody622_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_56 optimizedBody622_68

def optimizedBody622_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_51 optimizedBody622_69

def optimizedBody622_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_50 optimizedBody622_70

def optimizedBody622_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_49 optimizedBody622_71

def optimizedBody622_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_8 optimizedBody622_72

def optimizedBody622_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_48 optimizedBody622_73

def optimizedBody622_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_47 optimizedBody622_74

def optimizedBody622_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_46 optimizedBody622_75

def optimizedBody622_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_45 optimizedBody622_76

def optimizedBody622_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_77

def optimizedBody622_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_78

def optimizedBody622_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_44 optimizedBody622_79

def optimizedBody622_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_22 optimizedBody622_80

def optimizedBody622_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_81

def optimizedBody622_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_21 optimizedBody622_82

def optimizedBody622_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_17 optimizedBody622_83

def optimizedBody622_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_84

def optimizedBody622_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_16 optimizedBody622_85

def optimizedBody622_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_9 optimizedBody622_86

def optimizedBody622_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_8 optimizedBody622_87

def optimizedBody622_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_7 optimizedBody622_88

def optimizedBody622_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_6 optimizedBody622_89

def optimizedBody622_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_5 optimizedBody622_90

def optimizedBody622_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody622_0 optimizedBody622_91

def oracle622 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 25
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 22 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 26))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23)) 23 Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)) 22 Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))
def optimized622 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(622, 9, optimizedBody622_92)
end InitECandidate.Proofs.SmallStages.Oracles622
