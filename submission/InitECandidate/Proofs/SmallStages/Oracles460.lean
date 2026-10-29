import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source460
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles460
def optimizedBody460_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody460_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (10, 46)]

def optimizedBody460_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46)]

def optimizedBody460_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody460_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_2 optimizedBody460_3

def optimizedBody460_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody460_1, 460, 2)) (some 197) ([2]) (some (2, optimizedBody460_4, 460, 3))

def optimizedBody460_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody460_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4), (2, 0)]

def optimizedBody460_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 2#64)

def optimizedBody460_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody460_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 4), (48, 2)]

def optimizedBody460_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46), (6, 48)]

def optimizedBody460_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (6, 48)]

def optimizedBody460_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_12 optimizedBody460_3

def optimizedBody460_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody460_11, 460, 4)) (some 459) ([2, 4, 6, 8, 10]) (some (2, optimizedBody460_13, 460, 5))

def optimizedBody460_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (4, 4)]

def optimizedBody460_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody460_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_15 optimizedBody460_16

def optimizedBody460_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_6 optimizedBody460_17

def optimizedBody460_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_14 optimizedBody460_18

def optimizedBody460_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_10 optimizedBody460_19

def optimizedBody460_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_20

def optimizedBody460_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_8 optimizedBody460_21

def optimizedBody460_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_7 optimizedBody460_22

def optimizedBody460_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_6 optimizedBody460_23

def optimizedBody460_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_5 optimizedBody460_24

def optimizedBody460_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_0 optimizedBody460_25

def oracle460 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) (Flapjack.Spt.ls 22))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
def optimized460 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(460, 3, optimizedBody460_26)
end InitECandidate.Proofs.SmallStages.Oracles460
