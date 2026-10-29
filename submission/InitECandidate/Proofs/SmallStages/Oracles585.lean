import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source585
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles585
def optimizedBody585_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody585_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody585_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody585_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody585_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody585_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody585_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_4 optimizedBody585_5

def optimizedBody585_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody585_3, 585, 2)) (some 472) ([2]) (some (2, optimizedBody585_6, 585, 3))

def optimizedBody585_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody585_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody585_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody585_9, 585, 4)) (some 574) ([]) (some (2, optimizedBody585_6, 585, 5))

def optimizedBody585_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody585_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody585_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody585_3, 585, 6)) (some 479) ([2]) (some (2, optimizedBody585_6, 585, 7))

def optimizedBody585_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody585_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody585_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody585_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_16 optimizedBody585_5

def optimizedBody585_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody585_15, 585, 8)) (some 492) ([2]) (some (2, optimizedBody585_17, 585, 9))

def optimizedBody585_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody585_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody585_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody585_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_20 optimizedBody585_21

def optimizedBody585_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_19 optimizedBody585_22

def optimizedBody585_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_8 optimizedBody585_23

def optimizedBody585_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_18 optimizedBody585_24

def optimizedBody585_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_4 optimizedBody585_25

def optimizedBody585_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_14 optimizedBody585_26

def optimizedBody585_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_8 optimizedBody585_27

def optimizedBody585_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_13 optimizedBody585_28

def optimizedBody585_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_4 optimizedBody585_29

def optimizedBody585_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_12 optimizedBody585_30

def optimizedBody585_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_11 optimizedBody585_31

def optimizedBody585_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_8 optimizedBody585_32

def optimizedBody585_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_10 optimizedBody585_33

def optimizedBody585_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_3 optimizedBody585_34

def optimizedBody585_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_8 optimizedBody585_35

def optimizedBody585_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_7 optimizedBody585_36

def optimizedBody585_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_2 optimizedBody585_37

def optimizedBody585_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_1 optimizedBody585_38

def optimizedBody585_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody585_0 optimizedBody585_39

def oracle585 : Option (Spt Nat) :=
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
def optimized585 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(585, 1, optimizedBody585_40)
end InitECandidate.Proofs.SmallStages.Oracles585
