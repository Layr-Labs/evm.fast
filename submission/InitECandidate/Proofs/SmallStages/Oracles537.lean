import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source537
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles537
def optimizedBody537_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody537_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody537_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody537_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody537_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_2 optimizedBody537_3

def optimizedBody537_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody537_1, 537, 2)) (some 477) ([]) (some (2, optimizedBody537_4, 537, 3))

def optimizedBody537_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody537_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody537_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody537_1, 537, 4)) (some 472) ([2]) (some (2, optimizedBody537_4, 537, 5))

def optimizedBody537_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody537_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody537_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody537_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_11 optimizedBody537_3

def optimizedBody537_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody537_10, 537, 6)) (some 492) ([2]) (some (2, optimizedBody537_12, 537, 7))

def optimizedBody537_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody537_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody537_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody537_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_15 optimizedBody537_16

def optimizedBody537_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_14 optimizedBody537_17

def optimizedBody537_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_6 optimizedBody537_18

def optimizedBody537_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_13 optimizedBody537_19

def optimizedBody537_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_2 optimizedBody537_20

def optimizedBody537_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_9 optimizedBody537_21

def optimizedBody537_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_6 optimizedBody537_22

def optimizedBody537_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_8 optimizedBody537_23

def optimizedBody537_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_2 optimizedBody537_24

def optimizedBody537_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_7 optimizedBody537_25

def optimizedBody537_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_6 optimizedBody537_26

def optimizedBody537_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_5 optimizedBody537_27

def optimizedBody537_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_0 optimizedBody537_28

def oracle537 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 22
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized537 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(537, 1, optimizedBody537_29)
end InitECandidate.Proofs.SmallStages.Oracles537
