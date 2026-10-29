import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source239
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles239
def optimizedBody239_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 0), (24, 2), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22)]

def optimizedBody239_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 27#64)

def optimizedBody239_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody239_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody239_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 28#64)

def optimizedBody239_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody239_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody239_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody239_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_6 optimizedBody239_7

def optimizedBody239_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_5 optimizedBody239_8

def optimizedBody239_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_9

def optimizedBody239_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody239_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody239_10 optimizedBody239_11

def optimizedBody239_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 4)]

def optimizedBody239_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_13

def optimizedBody239_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_14

def optimizedBody239_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_12 optimizedBody239_15

def optimizedBody239_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_4 optimizedBody239_16

def optimizedBody239_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_3 optimizedBody239_17

def optimizedBody239_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_18

def optimizedBody239_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody239_19 optimizedBody239_14

def optimizedBody239_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (46, 16), (48, 8), (50, 50), (52, 20), (54, 12), (56, 24), (58, 18), (60, 10), (62, 6), (64, 22), (66, 14)]

def optimizedBody239_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody239_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody239_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody239_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_23 optimizedBody239_24

def optimizedBody239_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody239_22, 239, 2)) (some 69) ([]) (some (2, optimizedBody239_25, 239, 3))

def optimizedBody239_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody239_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 0)]

def optimizedBody239_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 2), (44, 44), (14, 46), (6, 48), (0, 50), (18, 52), (10, 54), (20, 56), (16, 58), (8, 60), (4, 62), (48, 64),
    (12, 66), (50, 68)]

def optimizedBody239_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (6, 48), (0, 50), (18, 52), (10, 54), (20, 56), (16, 58), (8, 60), (4, 62), (48, 64),
    (12, 66), (50, 68)]

def optimizedBody239_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_30 optimizedBody239_24

def optimizedBody239_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody239_29, 239, 4)) (some 68) ([2]) (some (2, optimizedBody239_31, 239, 5))

def optimizedBody239_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(0, 0), (18, 18), (16, 16), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 20)]

def optimizedBody239_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 0 (Flapjack.WordRegImm.imm 18446744073709551589#64)))

def optimizedBody239_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (44, 44),
    (46, 22), (48, 48), (50, 50)]

def optimizedBody239_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (48, 50)]

def optimizedBody239_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (48, 50)]

def optimizedBody239_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_37 optimizedBody239_24

def optimizedBody239_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody239_36, 239, 6)) (some 237) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22]) (some (2, optimizedBody239_38, 239, 7))

def optimizedBody239_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody239_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody239_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 0), (48, 48)]

def optimizedBody239_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48)]

def optimizedBody239_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody239_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_44 optimizedBody239_24

def optimizedBody239_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody239_43, 239, 8)) (some 238) ([2, 4]) (some (2, optimizedBody239_45, 239, 9))

def optimizedBody239_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0)]

def optimizedBody239_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_47

def optimizedBody239_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_46 optimizedBody239_48

def optimizedBody239_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_42 optimizedBody239_49

def optimizedBody239_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_50

def optimizedBody239_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 0), (0, 48)]

def optimizedBody239_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_52

def optimizedBody239_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody239_51 optimizedBody239_53

def optimizedBody239_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody239_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody239_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody239_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_57 optimizedBody239_24

def optimizedBody239_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody239_56, 239, 10)) (some 70) ([2]) (some (2, optimizedBody239_58, 239, 11))

def optimizedBody239_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody239_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_60 optimizedBody239_7

def optimizedBody239_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_61

def optimizedBody239_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_59 optimizedBody239_62

def optimizedBody239_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_55 optimizedBody239_63

def optimizedBody239_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_64

def optimizedBody239_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_54 optimizedBody239_65

def optimizedBody239_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_41 optimizedBody239_66

def optimizedBody239_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_40 optimizedBody239_67

def optimizedBody239_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_68

def optimizedBody239_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_39 optimizedBody239_69

def optimizedBody239_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_35 optimizedBody239_70

def optimizedBody239_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_34 optimizedBody239_71

def optimizedBody239_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_33 optimizedBody239_72

def optimizedBody239_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_73

def optimizedBody239_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_32 optimizedBody239_74

def optimizedBody239_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_28 optimizedBody239_75

def optimizedBody239_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_27 optimizedBody239_76

def optimizedBody239_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_77

def optimizedBody239_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_26 optimizedBody239_78

def optimizedBody239_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_21 optimizedBody239_79

def optimizedBody239_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_80

def optimizedBody239_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_20 optimizedBody239_81

def optimizedBody239_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_1 optimizedBody239_82

def optimizedBody239_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_0 optimizedBody239_83

def oracle239 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln) 6
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 30)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.ls 3)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 8
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 4
                (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 1 (Flapjack.Spt.ls 28))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 25 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
              12
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln) 9
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                1 (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 5
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 29)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln) 7
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                11 Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 3
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 32 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 33 (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))))))
def optimized239 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(239, 12, optimizedBody239_84)
end InitECandidate.Proofs.SmallStages.Oracles239
