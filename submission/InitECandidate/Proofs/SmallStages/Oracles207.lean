import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source207
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles207
def optimizedBody207_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody207_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (16, 46), (12, 48), (10, 50), (14, 52)]

def optimizedBody207_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (16, 46), (12, 48), (10, 50), (14, 52)]

def optimizedBody207_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody207_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_2 optimizedBody207_3

def optimizedBody207_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody207_1, 207, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody207_4, 207, 3))

def optimizedBody207_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody207_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody207_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody207_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody207_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody207_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody207_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody207_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody207_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody207_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_13 optimizedBody207_14

def optimizedBody207_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_12 optimizedBody207_15

def optimizedBody207_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_11 optimizedBody207_16

def optimizedBody207_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_10 optimizedBody207_17

def optimizedBody207_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_9 optimizedBody207_18

def optimizedBody207_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_6 optimizedBody207_19

def optimizedBody207_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody207_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody207_20 optimizedBody207_21

def optimizedBody207_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14), (12, 12), (10, 10)]

def optimizedBody207_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 18446744073709551615#64)

def optimizedBody207_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18446744073709551615#64)

def optimizedBody207_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18446744073709551615#64)

def optimizedBody207_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744069414583343#64)

def optimizedBody207_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody207_29 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody207_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_28 optimizedBody207_29

def optimizedBody207_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_27 optimizedBody207_30

def optimizedBody207_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_26 optimizedBody207_31

def optimizedBody207_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_25 optimizedBody207_32

def optimizedBody207_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_24 optimizedBody207_33

def optimizedBody207_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_23 optimizedBody207_34

def optimizedBody207_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_6 optimizedBody207_35

def optimizedBody207_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_6 optimizedBody207_36

def optimizedBody207_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_22 optimizedBody207_37

def optimizedBody207_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_8 optimizedBody207_38

def optimizedBody207_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_7 optimizedBody207_39

def optimizedBody207_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_6 optimizedBody207_40

def optimizedBody207_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_5 optimizedBody207_41

def optimizedBody207_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody207_0 optimizedBody207_42

def oracle207 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))))
def optimized207 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(207, 5, optimizedBody207_43)
end InitECandidate.Proofs.SmallStages.Oracles207
