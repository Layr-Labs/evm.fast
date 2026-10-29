import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source821
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles821
def optimizedBody821_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody821_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody821_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody821_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody821_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_2 optimizedBody821_3

def optimizedBody821_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody821_1, 821, 2)) (some 713) ([]) (some (2, optimizedBody821_4, 821, 3))

def optimizedBody821_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody821_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody821_1, 821, 4)) (some 723) ([]) (some (2, optimizedBody821_4, 821, 5))

def optimizedBody821_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody821_1, 821, 6)) (some 744) ([]) (some (2, optimizedBody821_4, 821, 7))

def optimizedBody821_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody821_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody821_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_10 optimizedBody821_3

def optimizedBody821_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody821_9, 821, 8)) (some 777) ([]) (some (2, optimizedBody821_11, 821, 9))

def optimizedBody821_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody821_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody821_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody821_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_14 optimizedBody821_15

def optimizedBody821_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_13 optimizedBody821_16

def optimizedBody821_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_6 optimizedBody821_17

def optimizedBody821_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_12 optimizedBody821_18

def optimizedBody821_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_1 optimizedBody821_19

def optimizedBody821_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_6 optimizedBody821_20

def optimizedBody821_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_8 optimizedBody821_21

def optimizedBody821_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_1 optimizedBody821_22

def optimizedBody821_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_6 optimizedBody821_23

def optimizedBody821_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_7 optimizedBody821_24

def optimizedBody821_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_1 optimizedBody821_25

def optimizedBody821_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_6 optimizedBody821_26

def optimizedBody821_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_5 optimizedBody821_27

def optimizedBody821_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody821_0 optimizedBody821_28

def oracle821 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.ls 22))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.ls 22)))))
def optimized821 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(821, 1, optimizedBody821_29)
end InitECandidate.Proofs.SmallStages.Oracles821
