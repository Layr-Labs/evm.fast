import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles457
def optimizedBody457_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody457_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody457_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody457_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody457_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_3

def optimizedBody457_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody457_1, 457, 2)) (some 456) ([]) (some (2, optimizedBody457_4, 457, 3))

def optimizedBody457_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody457_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody457_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody457_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_8 optimizedBody457_3

def optimizedBody457_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody457_7, 457, 4)) (some 435) ([]) (some (2, optimizedBody457_9, 457, 5))

def optimizedBody457_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody457_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody457_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody457_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_12 optimizedBody457_13

def optimizedBody457_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_11 optimizedBody457_14

def optimizedBody457_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_6 optimizedBody457_15

def optimizedBody457_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_10 optimizedBody457_16

def optimizedBody457_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_1 optimizedBody457_17

def optimizedBody457_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_6 optimizedBody457_18

def optimizedBody457_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_5 optimizedBody457_19

def optimizedBody457_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_0 optimizedBody457_20

def oracle457 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
def optimized457 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(457, 1, optimizedBody457_21)
end InitECandidate.Proofs.SmallStages.Oracles457
