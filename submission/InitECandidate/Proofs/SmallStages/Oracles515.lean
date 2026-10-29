import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source515
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles515
def optimizedBody515_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody515_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody515_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody515_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody515_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_2 optimizedBody515_3

def optimizedBody515_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_1, 515, 2)) (some 477) ([]) (some (2, optimizedBody515_4, 515, 3))

def optimizedBody515_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody515_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody515_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6), (50, 0), (52, 8)]

def optimizedBody515_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody515_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody515_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_10 optimizedBody515_3

def optimizedBody515_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_9, 515, 4)) (some 472) ([2]) (some (2, optimizedBody515_11, 515, 5))

def optimizedBody515_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody515_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody515_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_14, 515, 6)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody515_4, 515, 7))

def optimizedBody515_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody515_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody515_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_17, 515, 8)) (some 480) ([2]) (some (2, optimizedBody515_4, 515, 9))

def optimizedBody515_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody515_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody515_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody515_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_21 optimizedBody515_3

def optimizedBody515_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_20, 515, 10)) (some 492) ([2]) (some (2, optimizedBody515_22, 515, 11))

def optimizedBody515_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody515_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody515_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody515_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_25 optimizedBody515_26

def optimizedBody515_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_24 optimizedBody515_27

def optimizedBody515_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_28

def optimizedBody515_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_23 optimizedBody515_29

def optimizedBody515_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_2 optimizedBody515_30

def optimizedBody515_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_19 optimizedBody515_31

def optimizedBody515_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_32

def optimizedBody515_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_18 optimizedBody515_33

def optimizedBody515_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_16 optimizedBody515_34

def optimizedBody515_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_35

def optimizedBody515_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_15 optimizedBody515_36

def optimizedBody515_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_13 optimizedBody515_37

def optimizedBody515_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_38

def optimizedBody515_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_12 optimizedBody515_39

def optimizedBody515_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_8 optimizedBody515_40

def optimizedBody515_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_7 optimizedBody515_41

def optimizedBody515_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_42

def optimizedBody515_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_5 optimizedBody515_43

def optimizedBody515_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_0 optimizedBody515_44

def oracle515 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22 Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26 Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))))
def optimized515 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(515, 1, optimizedBody515_45)
end InitECandidate.Proofs.SmallStages.Oracles515
