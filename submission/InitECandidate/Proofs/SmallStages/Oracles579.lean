import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles579
def optimizedBody579_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody579_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody579_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody579_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody579_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody579_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody579_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_4 optimizedBody579_5

def optimizedBody579_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody579_3, 579, 2)) (some 472) ([2]) (some (2, optimizedBody579_6, 579, 3))

def optimizedBody579_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody579_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody579_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody579_9, 579, 4)) (some 574) ([]) (some (2, optimizedBody579_6, 579, 5))

def optimizedBody579_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody579_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody579_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (8, 8), (6, 6), (44, 44)]

def optimizedBody579_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody579_13, 579, 6)) (some 469) ([2]) (some (2, optimizedBody579_6, 579, 7))

def optimizedBody579_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody579_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody579_3, 579, 8)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody579_6, 579, 9))

def optimizedBody579_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody579_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody579_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody579_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_19 optimizedBody579_5

def optimizedBody579_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody579_18, 579, 10)) (some 492) ([2]) (some (2, optimizedBody579_20, 579, 11))

def optimizedBody579_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody579_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody579_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody579_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_23 optimizedBody579_24

def optimizedBody579_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_22 optimizedBody579_25

def optimizedBody579_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_8 optimizedBody579_26

def optimizedBody579_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_21 optimizedBody579_27

def optimizedBody579_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_4 optimizedBody579_28

def optimizedBody579_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_17 optimizedBody579_29

def optimizedBody579_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_8 optimizedBody579_30

def optimizedBody579_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_16 optimizedBody579_31

def optimizedBody579_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_15 optimizedBody579_32

def optimizedBody579_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_8 optimizedBody579_33

def optimizedBody579_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_14 optimizedBody579_34

def optimizedBody579_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_4 optimizedBody579_35

def optimizedBody579_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_12 optimizedBody579_36

def optimizedBody579_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_11 optimizedBody579_37

def optimizedBody579_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_8 optimizedBody579_38

def optimizedBody579_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_10 optimizedBody579_39

def optimizedBody579_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_3 optimizedBody579_40

def optimizedBody579_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_8 optimizedBody579_41

def optimizedBody579_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_7 optimizedBody579_42

def optimizedBody579_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_2 optimizedBody579_43

def optimizedBody579_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_1 optimizedBody579_44

def optimizedBody579_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody579_0 optimizedBody579_45

def oracle579 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 0
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))
def optimized579 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(579, 1, optimizedBody579_46)
end InitECandidate.Proofs.SmallStages.Oracles579
