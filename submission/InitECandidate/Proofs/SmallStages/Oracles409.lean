import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source409
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles409
def optimizedBody409_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody409_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody409_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody409_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody409_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_2 optimizedBody409_3

def optimizedBody409_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody409_1, 409, 2)) (some 408) ([2]) (some (2, optimizedBody409_4, 409, 3))

def optimizedBody409_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody409_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody409_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody409_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody409_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody409_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody409_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_11 optimizedBody409_3

def optimizedBody409_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody409_10, 409, 4)) (some 396) ([]) (some (2, optimizedBody409_12, 409, 5))

def optimizedBody409_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody409_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_14

def optimizedBody409_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_13 optimizedBody409_15

def optimizedBody409_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_9 optimizedBody409_16

def optimizedBody409_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_17

def optimizedBody409_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody409_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_19

def optimizedBody409_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody409_18 optimizedBody409_20

def optimizedBody409_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody409_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody409_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_22 optimizedBody409_23

def optimizedBody409_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_24

def optimizedBody409_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_21 optimizedBody409_25

def optimizedBody409_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_8 optimizedBody409_26

def optimizedBody409_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_7 optimizedBody409_27

def optimizedBody409_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_28

def optimizedBody409_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_5 optimizedBody409_29

def optimizedBody409_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_0 optimizedBody409_30

def oracle409 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) (Flapjack.Spt.ls 22)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized409 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(409, 2, optimizedBody409_31)
end InitECandidate.Proofs.SmallStages.Oracles409
