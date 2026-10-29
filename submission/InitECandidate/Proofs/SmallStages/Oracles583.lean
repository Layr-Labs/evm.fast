import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles583
def optimizedBody583_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody583_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody583_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody583_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody583_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody583_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody583_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_4 optimizedBody583_5

def optimizedBody583_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody583_3, 583, 2)) (some 472) ([2]) (some (2, optimizedBody583_6, 583, 3))

def optimizedBody583_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody583_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody583_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody583_9, 583, 4)) (some 574) ([]) (some (2, optimizedBody583_6, 583, 5))

def optimizedBody583_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody583_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody583_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody583_3, 583, 6)) (some 479) ([2]) (some (2, optimizedBody583_6, 583, 7))

def optimizedBody583_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody583_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody583_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody583_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_16 optimizedBody583_5

def optimizedBody583_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody583_15, 583, 8)) (some 492) ([2]) (some (2, optimizedBody583_17, 583, 9))

def optimizedBody583_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody583_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody583_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody583_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_20 optimizedBody583_21

def optimizedBody583_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_19 optimizedBody583_22

def optimizedBody583_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_8 optimizedBody583_23

def optimizedBody583_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_18 optimizedBody583_24

def optimizedBody583_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_4 optimizedBody583_25

def optimizedBody583_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_14 optimizedBody583_26

def optimizedBody583_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_8 optimizedBody583_27

def optimizedBody583_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_13 optimizedBody583_28

def optimizedBody583_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_4 optimizedBody583_29

def optimizedBody583_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_12 optimizedBody583_30

def optimizedBody583_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_11 optimizedBody583_31

def optimizedBody583_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_8 optimizedBody583_32

def optimizedBody583_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_10 optimizedBody583_33

def optimizedBody583_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_3 optimizedBody583_34

def optimizedBody583_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_8 optimizedBody583_35

def optimizedBody583_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_7 optimizedBody583_36

def optimizedBody583_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_2 optimizedBody583_37

def optimizedBody583_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_1 optimizedBody583_38

def optimizedBody583_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody583_0 optimizedBody583_39

def oracle583 : Option (Spt Nat) :=
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
def optimized583 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(583, 1, optimizedBody583_40)
end InitECandidate.Proofs.SmallStages.Oracles583
