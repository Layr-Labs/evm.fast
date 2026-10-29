import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source384
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles384
def optimizedBody384_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (52, 6)]

def optimizedBody384_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody384_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody384_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody384_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_2 optimizedBody384_3

def optimizedBody384_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody384_1, 384, 2)) (some 69) ([]) (some (2, optimizedBody384_4, 384, 3))

def optimizedBody384_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody384_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 72#64)

def optimizedBody384_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody384_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48), (48, 50), (50, 52)]

def optimizedBody384_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (48, 50), (50, 52)]

def optimizedBody384_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_3

def optimizedBody384_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody384_9, 384, 4)) (some 68) ([2]) (some (2, optimizedBody384_11, 384, 5))

def optimizedBody384_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody384_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody384_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody384_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 6)]

def optimizedBody384_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody384_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody384_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody384_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody384_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_20 optimizedBody384_3

def optimizedBody384_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody384_19, 384, 6)) (some 381) ([2, 4, 6]) (some (2, optimizedBody384_21, 384, 7))

def optimizedBody384_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody384_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody384_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody384_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_25 optimizedBody384_3

def optimizedBody384_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody384_24, 384, 8)) (some 382) ([2, 4]) (some (2, optimizedBody384_26, 384, 9))

def optimizedBody384_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody384_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody384_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody384_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_30 optimizedBody384_3

def optimizedBody384_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody384_29, 384, 10)) (some 70) ([2]) (some (2, optimizedBody384_31, 384, 11))

def optimizedBody384_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody384_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody384_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody384_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_34 optimizedBody384_35

def optimizedBody384_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_33 optimizedBody384_36

def optimizedBody384_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_6 optimizedBody384_37

def optimizedBody384_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_32 optimizedBody384_38

def optimizedBody384_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_28 optimizedBody384_39

def optimizedBody384_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_6 optimizedBody384_40

def optimizedBody384_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_27 optimizedBody384_41

def optimizedBody384_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_23 optimizedBody384_42

def optimizedBody384_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_6 optimizedBody384_43

def optimizedBody384_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_22 optimizedBody384_44

def optimizedBody384_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_18 optimizedBody384_45

def optimizedBody384_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_17 optimizedBody384_46

def optimizedBody384_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_16 optimizedBody384_47

def optimizedBody384_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_15 optimizedBody384_48

def optimizedBody384_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_14 optimizedBody384_49

def optimizedBody384_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_13 optimizedBody384_50

def optimizedBody384_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_6 optimizedBody384_51

def optimizedBody384_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_12 optimizedBody384_52

def optimizedBody384_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_8 optimizedBody384_53

def optimizedBody384_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_7 optimizedBody384_54

def optimizedBody384_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_6 optimizedBody384_55

def optimizedBody384_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_5 optimizedBody384_56

def optimizedBody384_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_0 optimizedBody384_57

def oracle384 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln) 23
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26 Flapjack.Spt.ln) 26 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 24 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))))
def optimized384 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(384, 4, optimizedBody384_58)
end InitECandidate.Proofs.SmallStages.Oracles384
