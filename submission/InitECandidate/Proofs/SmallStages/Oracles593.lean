import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source593
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles593
def optimizedBody593_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (48, 2)]

def optimizedBody593_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (48, 48)]

def optimizedBody593_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody593_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody593_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_2 optimizedBody593_3

def optimizedBody593_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody593_1, 593, 2)) (some 567) ([2]) (some (2, optimizedBody593_4, 593, 3))

def optimizedBody593_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody593_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48)]

def optimizedBody593_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (46, 46), (4, 48)]

def optimizedBody593_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (46, 46), (4, 48)]

def optimizedBody593_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_9 optimizedBody593_3

def optimizedBody593_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody593_8, 593, 4)) (some 470) ([2, 4]) (some (2, optimizedBody593_10, 593, 5))

def optimizedBody593_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody593_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody593_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody593_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody593_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6)]

def optimizedBody593_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4, 6]

def optimizedBody593_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_16 optimizedBody593_17

def optimizedBody593_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_15 optimizedBody593_18

def optimizedBody593_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_14 optimizedBody593_19

def optimizedBody593_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_13 optimizedBody593_20

def optimizedBody593_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_21

def optimizedBody593_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody593_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody593_22 optimizedBody593_23

def optimizedBody593_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody593_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 8), (46, 46)]

def optimizedBody593_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody593_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody593_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_28 optimizedBody593_3

def optimizedBody593_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody593_27, 593, 6)) (some 68) ([2]) (some (2, optimizedBody593_29, 593, 7))

def optimizedBody593_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody593_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody593_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody593_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2)]

def optimizedBody593_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody593_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody593_35, 593, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody593_29, 593, 9))

def optimizedBody593_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0)]

def optimizedBody593_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (4, 46)]

def optimizedBody593_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46)]

def optimizedBody593_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_39 optimizedBody593_3

def optimizedBody593_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody593_38, 593, 10)) (some 495) ([2]) (some (2, optimizedBody593_40, 593, 11))

def optimizedBody593_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody593_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody593_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 100#64)

def optimizedBody593_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_44 optimizedBody593_18

def optimizedBody593_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_14 optimizedBody593_45

def optimizedBody593_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_43 optimizedBody593_46

def optimizedBody593_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_47

def optimizedBody593_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 4)]

def optimizedBody593_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody593_48 optimizedBody593_49

def optimizedBody593_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3000#64)

def optimizedBody593_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6)]

def optimizedBody593_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_52 optimizedBody593_17

def optimizedBody593_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_51 optimizedBody593_53

def optimizedBody593_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_12 optimizedBody593_54

def optimizedBody593_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_43 optimizedBody593_55

def optimizedBody593_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_56

def optimizedBody593_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_57

def optimizedBody593_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_50 optimizedBody593_58

def optimizedBody593_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_13 optimizedBody593_59

def optimizedBody593_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_42 optimizedBody593_60

def optimizedBody593_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_61

def optimizedBody593_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_41 optimizedBody593_62

def optimizedBody593_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_37 optimizedBody593_63

def optimizedBody593_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_64

def optimizedBody593_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_36 optimizedBody593_65

def optimizedBody593_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_34 optimizedBody593_66

def optimizedBody593_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_33 optimizedBody593_67

def optimizedBody593_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_32 optimizedBody593_68

def optimizedBody593_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_31 optimizedBody593_69

def optimizedBody593_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_70

def optimizedBody593_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_30 optimizedBody593_71

def optimizedBody593_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_26 optimizedBody593_72

def optimizedBody593_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_25 optimizedBody593_73

def optimizedBody593_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_74

def optimizedBody593_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_75

def optimizedBody593_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_24 optimizedBody593_76

def optimizedBody593_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_13 optimizedBody593_77

def optimizedBody593_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_12 optimizedBody593_78

def optimizedBody593_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_79

def optimizedBody593_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_11 optimizedBody593_80

def optimizedBody593_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_7 optimizedBody593_81

def optimizedBody593_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_6 optimizedBody593_82

def optimizedBody593_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_5 optimizedBody593_83

def optimizedBody593_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody593_0 optimizedBody593_84

def oracle593 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 24
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 24
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))))
def optimized593 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(593, 2, optimizedBody593_85)
end InitECandidate.Proofs.SmallStages.Oracles593
