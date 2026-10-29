import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles584
def optimizedBody584_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody584_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody584_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody584_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody584_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody584_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody584_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_4 optimizedBody584_5

def optimizedBody584_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_3, 584, 2)) (some 472) ([2]) (some (2, optimizedBody584_6, 584, 3))

def optimizedBody584_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody584_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody584_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_9, 584, 4)) (some 574) ([]) (some (2, optimizedBody584_6, 584, 5))

def optimizedBody584_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody584_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody584_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody584_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody584_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (8, 8), (6, 6), (44, 44)]

def optimizedBody584_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_15, 584, 6)) (some 146) ([2, 4]) (some (2, optimizedBody584_6, 584, 7))

def optimizedBody584_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody584_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_3, 584, 8)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody584_6, 584, 9))

def optimizedBody584_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody584_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody584_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody584_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_21 optimizedBody584_5

def optimizedBody584_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_20, 584, 10)) (some 492) ([2]) (some (2, optimizedBody584_22, 584, 11))

def optimizedBody584_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody584_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody584_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody584_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_25 optimizedBody584_26

def optimizedBody584_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_24 optimizedBody584_27

def optimizedBody584_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_8 optimizedBody584_28

def optimizedBody584_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_23 optimizedBody584_29

def optimizedBody584_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_4 optimizedBody584_30

def optimizedBody584_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_19 optimizedBody584_31

def optimizedBody584_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_8 optimizedBody584_32

def optimizedBody584_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_33

def optimizedBody584_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_17 optimizedBody584_34

def optimizedBody584_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_8 optimizedBody584_35

def optimizedBody584_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_16 optimizedBody584_36

def optimizedBody584_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_14 optimizedBody584_37

def optimizedBody584_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_38

def optimizedBody584_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_12 optimizedBody584_39

def optimizedBody584_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_11 optimizedBody584_40

def optimizedBody584_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_8 optimizedBody584_41

def optimizedBody584_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_10 optimizedBody584_42

def optimizedBody584_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_3 optimizedBody584_43

def optimizedBody584_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_8 optimizedBody584_44

def optimizedBody584_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_7 optimizedBody584_45

def optimizedBody584_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_2 optimizedBody584_46

def optimizedBody584_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_1 optimizedBody584_47

def optimizedBody584_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_0 optimizedBody584_48

def oracle584 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.ls 22))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
def optimized584 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(584, 1, optimizedBody584_49)
end InitECandidate.Proofs.SmallStages.Oracles584
