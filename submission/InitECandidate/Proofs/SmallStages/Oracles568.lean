import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source568
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles568
def optimizedBody568_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody568_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody568_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody568_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody568_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_2 optimizedBody568_3

def optimizedBody568_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_1, 568, 2)) (some 477) ([]) (some (2, optimizedBody568_4, 568, 3))

def optimizedBody568_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody568_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody568_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody568_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_8, 568, 4)) (some 468) ([2, 4, 6, 8]) (some (2, optimizedBody568_4, 568, 5))

def optimizedBody568_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0)]

def optimizedBody568_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody568_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody568_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_12 optimizedBody568_3

def optimizedBody568_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_11, 568, 6)) (some 497) ([2]) (some (2, optimizedBody568_13, 568, 7))

def optimizedBody568_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody568_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 100#64)))

def optimizedBody568_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48)]

def optimizedBody568_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody568_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody568_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_19 optimizedBody568_3

def optimizedBody568_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_18, 568, 8)) (some 472) ([2]) (some (2, optimizedBody568_20, 568, 9))

def optimizedBody568_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0)]

def optimizedBody568_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody568_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody568_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_24 optimizedBody568_3

def optimizedBody568_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_23, 568, 10)) (some 498) ([2, 4]) (some (2, optimizedBody568_25, 568, 11))

def optimizedBody568_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody568_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (44, 44)]

def optimizedBody568_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_28, 568, 12)) (some 567) ([2]) (some (2, optimizedBody568_4, 568, 13))

def optimizedBody568_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44)]

def optimizedBody568_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody568_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_31, 568, 14)) (some 479) ([2]) (some (2, optimizedBody568_4, 568, 15))

def optimizedBody568_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody568_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody568_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody568_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_35 optimizedBody568_3

def optimizedBody568_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_34, 568, 16)) (some 492) ([2]) (some (2, optimizedBody568_36, 568, 17))

def optimizedBody568_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody568_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody568_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody568_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_39 optimizedBody568_40

def optimizedBody568_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_38 optimizedBody568_41

def optimizedBody568_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_6 optimizedBody568_42

def optimizedBody568_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_37 optimizedBody568_43

def optimizedBody568_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_2 optimizedBody568_44

def optimizedBody568_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_33 optimizedBody568_45

def optimizedBody568_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_6 optimizedBody568_46

def optimizedBody568_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_32 optimizedBody568_47

def optimizedBody568_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_30 optimizedBody568_48

def optimizedBody568_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_6 optimizedBody568_49

def optimizedBody568_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_29 optimizedBody568_50

def optimizedBody568_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_27 optimizedBody568_51

def optimizedBody568_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_6 optimizedBody568_52

def optimizedBody568_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_26 optimizedBody568_53

def optimizedBody568_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_22 optimizedBody568_54

def optimizedBody568_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_6 optimizedBody568_55

def optimizedBody568_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_21 optimizedBody568_56

def optimizedBody568_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_17 optimizedBody568_57

def optimizedBody568_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_16 optimizedBody568_58

def optimizedBody568_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_15 optimizedBody568_59

def optimizedBody568_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_6 optimizedBody568_60

def optimizedBody568_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_14 optimizedBody568_61

def optimizedBody568_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_10 optimizedBody568_62

def optimizedBody568_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_6 optimizedBody568_63

def optimizedBody568_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_9 optimizedBody568_64

def optimizedBody568_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_7 optimizedBody568_65

def optimizedBody568_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_6 optimizedBody568_66

def optimizedBody568_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_5 optimizedBody568_67

def optimizedBody568_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_0 optimizedBody568_68

def oracle568 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 4
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls 22))))))
def optimized568 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(568, 1, optimizedBody568_69)
end InitECandidate.Proofs.SmallStages.Oracles568
