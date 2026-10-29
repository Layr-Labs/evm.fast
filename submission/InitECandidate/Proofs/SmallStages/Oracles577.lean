import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source577
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles577
def optimizedBody577_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody577_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody577_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody577_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody577_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody577_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody577_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_4 optimizedBody577_5

def optimizedBody577_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody577_3, 577, 2)) (some 472) ([2]) (some (2, optimizedBody577_6, 577, 3))

def optimizedBody577_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody577_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody577_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody577_9, 577, 4)) (some 574) ([]) (some (2, optimizedBody577_6, 577, 5))

def optimizedBody577_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody577_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody577_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (8, 8), (6, 6), (44, 44)]

def optimizedBody577_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody577_13, 577, 6)) (some 282) ([2]) (some (2, optimizedBody577_6, 577, 7))

def optimizedBody577_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody577_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody577_3, 577, 8)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody577_6, 577, 9))

def optimizedBody577_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody577_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody577_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody577_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_19 optimizedBody577_5

def optimizedBody577_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody577_18, 577, 10)) (some 492) ([2]) (some (2, optimizedBody577_20, 577, 11))

def optimizedBody577_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody577_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody577_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody577_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_23 optimizedBody577_24

def optimizedBody577_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_22 optimizedBody577_25

def optimizedBody577_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_8 optimizedBody577_26

def optimizedBody577_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_21 optimizedBody577_27

def optimizedBody577_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_4 optimizedBody577_28

def optimizedBody577_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_17 optimizedBody577_29

def optimizedBody577_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_8 optimizedBody577_30

def optimizedBody577_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_16 optimizedBody577_31

def optimizedBody577_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_15 optimizedBody577_32

def optimizedBody577_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_8 optimizedBody577_33

def optimizedBody577_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_14 optimizedBody577_34

def optimizedBody577_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_4 optimizedBody577_35

def optimizedBody577_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_12 optimizedBody577_36

def optimizedBody577_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_11 optimizedBody577_37

def optimizedBody577_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_8 optimizedBody577_38

def optimizedBody577_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_10 optimizedBody577_39

def optimizedBody577_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_3 optimizedBody577_40

def optimizedBody577_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_8 optimizedBody577_41

def optimizedBody577_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_7 optimizedBody577_42

def optimizedBody577_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_2 optimizedBody577_43

def optimizedBody577_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_1 optimizedBody577_44

def optimizedBody577_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody577_0 optimizedBody577_45

def oracle577 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 0
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))
def optimized577 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(577, 1, optimizedBody577_46)
end InitECandidate.Proofs.SmallStages.Oracles577
