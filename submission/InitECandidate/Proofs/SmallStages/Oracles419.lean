import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source419
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles419
def optimizedBody419_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody419_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody419_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody419_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody419_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_2 optimizedBody419_3

def optimizedBody419_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody419_1, 419, 2)) (some 408) ([2]) (some (2, optimizedBody419_4, 419, 3))

def optimizedBody419_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody419_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody419_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody419_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody419_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody419_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody419_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_10 optimizedBody419_11

def optimizedBody419_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_9 optimizedBody419_12

def optimizedBody419_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_6 optimizedBody419_13

def optimizedBody419_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody419_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody419_14 optimizedBody419_15

def optimizedBody419_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 4)]

def optimizedBody419_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody419_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody419_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_19 optimizedBody419_3

def optimizedBody419_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody419_18, 419, 4)) (some 418) ([2]) (some (2, optimizedBody419_20, 419, 5))

def optimizedBody419_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody419_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody419_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_22 optimizedBody419_23

def optimizedBody419_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_6 optimizedBody419_24

def optimizedBody419_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_21 optimizedBody419_25

def optimizedBody419_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_17 optimizedBody419_26

def optimizedBody419_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_6 optimizedBody419_27

def optimizedBody419_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_6 optimizedBody419_28

def optimizedBody419_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_16 optimizedBody419_29

def optimizedBody419_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_8 optimizedBody419_30

def optimizedBody419_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_7 optimizedBody419_31

def optimizedBody419_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_6 optimizedBody419_32

def optimizedBody419_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_5 optimizedBody419_33

def optimizedBody419_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody419_0 optimizedBody419_34

def oracle419 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized419 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(419, 2, optimizedBody419_35)
end InitECandidate.Proofs.SmallStages.Oracles419
