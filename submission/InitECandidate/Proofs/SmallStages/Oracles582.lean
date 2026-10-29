import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source582
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles582
def optimizedBody582_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody582_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody582_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody582_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody582_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody582_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody582_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_4 optimizedBody582_5

def optimizedBody582_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody582_3, 582, 2)) (some 472) ([2]) (some (2, optimizedBody582_6, 582, 3))

def optimizedBody582_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody582_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody582_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody582_9, 582, 4)) (some 574) ([]) (some (2, optimizedBody582_6, 582, 5))

def optimizedBody582_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody582_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody582_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody582_3, 582, 6)) (some 479) ([2]) (some (2, optimizedBody582_6, 582, 7))

def optimizedBody582_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody582_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody582_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody582_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_16 optimizedBody582_5

def optimizedBody582_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody582_15, 582, 8)) (some 492) ([2]) (some (2, optimizedBody582_17, 582, 9))

def optimizedBody582_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody582_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody582_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody582_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_20 optimizedBody582_21

def optimizedBody582_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_19 optimizedBody582_22

def optimizedBody582_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_8 optimizedBody582_23

def optimizedBody582_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_18 optimizedBody582_24

def optimizedBody582_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_4 optimizedBody582_25

def optimizedBody582_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_14 optimizedBody582_26

def optimizedBody582_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_8 optimizedBody582_27

def optimizedBody582_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_13 optimizedBody582_28

def optimizedBody582_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_4 optimizedBody582_29

def optimizedBody582_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_12 optimizedBody582_30

def optimizedBody582_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_11 optimizedBody582_31

def optimizedBody582_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_8 optimizedBody582_32

def optimizedBody582_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_10 optimizedBody582_33

def optimizedBody582_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_3 optimizedBody582_34

def optimizedBody582_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_8 optimizedBody582_35

def optimizedBody582_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_7 optimizedBody582_36

def optimizedBody582_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_2 optimizedBody582_37

def optimizedBody582_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_1 optimizedBody582_38

def optimizedBody582_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody582_0 optimizedBody582_39

def oracle582 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 22
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 22 Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized582 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(582, 1, optimizedBody582_40)
end InitECandidate.Proofs.SmallStages.Oracles582
