import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles383
def optimizedBody383_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (50, 4), (52, 2)]

def optimizedBody383_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (44, 44), (50, 50), (52, 52)]

def optimizedBody383_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (52, 52)]

def optimizedBody383_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody383_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_2 optimizedBody383_3

def optimizedBody383_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody383_1, 383, 2)) (some 379) ([2]) (some (2, optimizedBody383_4, 383, 3))

def optimizedBody383_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody383_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 4), (50, 50), (52, 52)]

def optimizedBody383_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody383_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody383_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_9 optimizedBody383_3

def optimizedBody383_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody383_8, 383, 4)) (some 69) ([]) (some (2, optimizedBody383_10, 383, 5))

def optimizedBody383_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 72#64)

def optimizedBody383_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody383_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48), (48, 50), (6, 52)]

def optimizedBody383_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (6, 52)]

def optimizedBody383_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_15 optimizedBody383_3

def optimizedBody383_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody383_14, 383, 6)) (some 68) ([2]) (some (2, optimizedBody383_16, 383, 7))

def optimizedBody383_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody383_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody383_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody383_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 6)]

def optimizedBody383_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody383_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody383_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody383_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody383_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_25 optimizedBody383_3

def optimizedBody383_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody383_24, 383, 8)) (some 381) ([2, 4, 6]) (some (2, optimizedBody383_26, 383, 9))

def optimizedBody383_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody383_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody383_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody383_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_30 optimizedBody383_3

def optimizedBody383_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody383_29, 383, 10)) (some 382) ([2, 4]) (some (2, optimizedBody383_31, 383, 11))

def optimizedBody383_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody383_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody383_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody383_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_35 optimizedBody383_3

def optimizedBody383_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody383_34, 383, 12)) (some 70) ([2]) (some (2, optimizedBody383_36, 383, 13))

def optimizedBody383_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody383_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody383_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody383_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_39 optimizedBody383_40

def optimizedBody383_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_38 optimizedBody383_41

def optimizedBody383_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_6 optimizedBody383_42

def optimizedBody383_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_37 optimizedBody383_43

def optimizedBody383_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_33 optimizedBody383_44

def optimizedBody383_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_6 optimizedBody383_45

def optimizedBody383_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_32 optimizedBody383_46

def optimizedBody383_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_28 optimizedBody383_47

def optimizedBody383_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_6 optimizedBody383_48

def optimizedBody383_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_27 optimizedBody383_49

def optimizedBody383_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_23 optimizedBody383_50

def optimizedBody383_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_22 optimizedBody383_51

def optimizedBody383_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_21 optimizedBody383_52

def optimizedBody383_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_20 optimizedBody383_53

def optimizedBody383_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_19 optimizedBody383_54

def optimizedBody383_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_18 optimizedBody383_55

def optimizedBody383_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_6 optimizedBody383_56

def optimizedBody383_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_17 optimizedBody383_57

def optimizedBody383_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_13 optimizedBody383_58

def optimizedBody383_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_12 optimizedBody383_59

def optimizedBody383_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_6 optimizedBody383_60

def optimizedBody383_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_11 optimizedBody383_61

def optimizedBody383_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_7 optimizedBody383_62

def optimizedBody383_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_6 optimizedBody383_63

def optimizedBody383_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_5 optimizedBody383_64

def optimizedBody383_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody383_0 optimizedBody383_65

def oracle383 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)) 25
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))) 22
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))) 22
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 26
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 25
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))))
def optimized383 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(383, 3, optimizedBody383_66)
end InitECandidate.Proofs.SmallStages.Oracles383
