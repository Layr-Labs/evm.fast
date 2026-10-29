import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles480
def optimizedBody480_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody480_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody480_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody480_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody480_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody480_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody480_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0)]

def optimizedBody480_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody480_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody480_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody480_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_8 optimizedBody480_9

def optimizedBody480_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_7, 480, 2)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody480_10, 480, 3))

def optimizedBody480_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody480_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_2 optimizedBody480_12

def optimizedBody480_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_11 optimizedBody480_13

def optimizedBody480_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_14

def optimizedBody480_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_5 optimizedBody480_15

def optimizedBody480_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_1 optimizedBody480_16

def optimizedBody480_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_4 optimizedBody480_17

def optimizedBody480_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_3 optimizedBody480_18

def optimizedBody480_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_2 optimizedBody480_19

def optimizedBody480_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody480_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_7, 480, 4)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody480_10, 480, 5))

def optimizedBody480_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_22 optimizedBody480_13

def optimizedBody480_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_23

def optimizedBody480_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_21 optimizedBody480_24

def optimizedBody480_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_1 optimizedBody480_25

def optimizedBody480_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_4 optimizedBody480_26

def optimizedBody480_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_3 optimizedBody480_27

def optimizedBody480_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_2 optimizedBody480_28

def optimizedBody480_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody480_20 optimizedBody480_29

def optimizedBody480_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody480_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody480_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_31 optimizedBody480_32

def optimizedBody480_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_21 optimizedBody480_33

def optimizedBody480_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_2 optimizedBody480_34

def optimizedBody480_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_30 optimizedBody480_35

def optimizedBody480_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_1 optimizedBody480_36

def optimizedBody480_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_0 optimizedBody480_37

def oracle480 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 2
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 1
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 4)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))
def optimized480 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(480, 2, optimizedBody480_38)
end InitECandidate.Proofs.SmallStages.Oracles480
