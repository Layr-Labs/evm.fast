import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source580
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles580
def optimizedBody580_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody580_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody580_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody580_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody580_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody580_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody580_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_4 optimizedBody580_5

def optimizedBody580_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody580_3, 580, 2)) (some 472) ([2]) (some (2, optimizedBody580_6, 580, 3))

def optimizedBody580_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody580_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody580_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody580_9, 580, 4)) (some 574) ([]) (some (2, optimizedBody580_6, 580, 5))

def optimizedBody580_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody580_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody580_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody580_3, 580, 6)) (some 479) ([2]) (some (2, optimizedBody580_6, 580, 7))

def optimizedBody580_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody580_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody580_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody580_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_16 optimizedBody580_5

def optimizedBody580_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody580_15, 580, 8)) (some 492) ([2]) (some (2, optimizedBody580_17, 580, 9))

def optimizedBody580_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody580_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody580_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody580_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_20 optimizedBody580_21

def optimizedBody580_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_19 optimizedBody580_22

def optimizedBody580_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_8 optimizedBody580_23

def optimizedBody580_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_18 optimizedBody580_24

def optimizedBody580_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_4 optimizedBody580_25

def optimizedBody580_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_14 optimizedBody580_26

def optimizedBody580_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_8 optimizedBody580_27

def optimizedBody580_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_13 optimizedBody580_28

def optimizedBody580_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_4 optimizedBody580_29

def optimizedBody580_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_12 optimizedBody580_30

def optimizedBody580_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_11 optimizedBody580_31

def optimizedBody580_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_8 optimizedBody580_32

def optimizedBody580_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_10 optimizedBody580_33

def optimizedBody580_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_3 optimizedBody580_34

def optimizedBody580_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_8 optimizedBody580_35

def optimizedBody580_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_7 optimizedBody580_36

def optimizedBody580_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_2 optimizedBody580_37

def optimizedBody580_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_1 optimizedBody580_38

def optimizedBody580_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody580_0 optimizedBody580_39

def oracle580 : Option (Spt Nat) :=
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
def optimized580 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(580, 1, optimizedBody580_40)
end InitECandidate.Proofs.SmallStages.Oracles580
