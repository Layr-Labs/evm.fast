import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source764
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles764
def optimizedBody764_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (50, 2)]

def optimizedBody764_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody764_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody764_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody764_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_2 optimizedBody764_3

def optimizedBody764_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody764_1, 764, 2)) (some 69) ([]) (some (2, optimizedBody764_4, 764, 3))

def optimizedBody764_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody764_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody764_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody764_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (48, 48), (50, 50)]

def optimizedBody764_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50)]

def optimizedBody764_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_10 optimizedBody764_3

def optimizedBody764_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody764_9, 764, 4)) (some 68) ([2]) (some (2, optimizedBody764_11, 764, 5))

def optimizedBody764_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody764_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody764_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 2)]

def optimizedBody764_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (6, 50), (52, 52)]

def optimizedBody764_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50), (52, 52)]

def optimizedBody764_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_17 optimizedBody764_3

def optimizedBody764_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody764_16, 764, 6)) (some 752) ([2, 4]) (some (2, optimizedBody764_18, 764, 7))

def optimizedBody764_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody764_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody764_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody764_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody764_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 6), (52, 52)]

def optimizedBody764_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (0, 50), (50, 52)]

def optimizedBody764_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50), (50, 52)]

def optimizedBody764_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_26 optimizedBody764_3

def optimizedBody764_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody764_25, 764, 8)) (some 739) ([2, 4]) (some (2, optimizedBody764_27, 764, 9))

def optimizedBody764_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody764_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody764_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody764_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody764_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_32 optimizedBody764_3

def optimizedBody764_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody764_31, 764, 10)) (some 739) ([2, 4]) (some (2, optimizedBody764_33, 764, 11))

def optimizedBody764_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody764_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody764_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody764_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_37 optimizedBody764_3

def optimizedBody764_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody764_36, 764, 12)) (some 739) ([2, 4]) (some (2, optimizedBody764_38, 764, 13))

def optimizedBody764_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody764_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody764_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody764_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_42 optimizedBody764_3

def optimizedBody764_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody764_41, 764, 14)) (some 70) ([2]) (some (2, optimizedBody764_43, 764, 15))

def optimizedBody764_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody764_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody764_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody764_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_46 optimizedBody764_47

def optimizedBody764_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_45 optimizedBody764_48

def optimizedBody764_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_6 optimizedBody764_49

def optimizedBody764_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_44 optimizedBody764_50

def optimizedBody764_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_40 optimizedBody764_51

def optimizedBody764_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_6 optimizedBody764_52

def optimizedBody764_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_39 optimizedBody764_53

def optimizedBody764_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_35 optimizedBody764_54

def optimizedBody764_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_6 optimizedBody764_55

def optimizedBody764_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_34 optimizedBody764_56

def optimizedBody764_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_30 optimizedBody764_57

def optimizedBody764_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_29 optimizedBody764_58

def optimizedBody764_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_22 optimizedBody764_59

def optimizedBody764_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_6 optimizedBody764_60

def optimizedBody764_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_28 optimizedBody764_61

def optimizedBody764_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_24 optimizedBody764_62

def optimizedBody764_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_23 optimizedBody764_63

def optimizedBody764_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_22 optimizedBody764_64

def optimizedBody764_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_21 optimizedBody764_65

def optimizedBody764_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_20 optimizedBody764_66

def optimizedBody764_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_6 optimizedBody764_67

def optimizedBody764_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_19 optimizedBody764_68

def optimizedBody764_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_15 optimizedBody764_69

def optimizedBody764_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_14 optimizedBody764_70

def optimizedBody764_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_13 optimizedBody764_71

def optimizedBody764_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_6 optimizedBody764_72

def optimizedBody764_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_12 optimizedBody764_73

def optimizedBody764_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_8 optimizedBody764_74

def optimizedBody764_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_7 optimizedBody764_75

def optimizedBody764_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_6 optimizedBody764_76

def optimizedBody764_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_5 optimizedBody764_77

def optimizedBody764_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_0 optimizedBody764_78

def oracle764 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 24 (Flapjack.Spt.ls 0)) 22
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 3)) 25
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 25 (Flapjack.Spt.ls 24)) 23
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 26)) 23
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              25 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 (Flapjack.Spt.ls 25)) 22 Flapjack.Spt.ln))))))
def optimized764 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(764, 3, optimizedBody764_79)
end InitECandidate.Proofs.SmallStages.Oracles764
