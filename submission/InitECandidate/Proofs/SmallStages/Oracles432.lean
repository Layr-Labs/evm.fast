import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source432
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles432
def optimizedBody432_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody432_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody432_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody432_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody432_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_2 optimizedBody432_3

def optimizedBody432_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody432_1, 432, 2)) (some 409) ([2]) (some (2, optimizedBody432_4, 432, 3))

def optimizedBody432_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody432_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody432_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (6, 46)]

def optimizedBody432_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46)]

def optimizedBody432_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_9 optimizedBody432_3

def optimizedBody432_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody432_8, 432, 4)) (some 397) ([2]) (some (2, optimizedBody432_10, 432, 5))

def optimizedBody432_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody432_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody432_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody432_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody432_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody432_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44)]

def optimizedBody432_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody432_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody432_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_19 optimizedBody432_3

def optimizedBody432_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody432_18, 432, 6)) (some 425) ([2, 4]) (some (2, optimizedBody432_20, 432, 7))

def optimizedBody432_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody432_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody432_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody432_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_23 optimizedBody432_24

def optimizedBody432_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_22 optimizedBody432_25

def optimizedBody432_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_6 optimizedBody432_26

def optimizedBody432_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_21 optimizedBody432_27

def optimizedBody432_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_17 optimizedBody432_28

def optimizedBody432_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_16 optimizedBody432_29

def optimizedBody432_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_15 optimizedBody432_30

def optimizedBody432_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_14 optimizedBody432_31

def optimizedBody432_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_13 optimizedBody432_32

def optimizedBody432_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_12 optimizedBody432_33

def optimizedBody432_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_6 optimizedBody432_34

def optimizedBody432_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_11 optimizedBody432_35

def optimizedBody432_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_7 optimizedBody432_36

def optimizedBody432_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_6 optimizedBody432_37

def optimizedBody432_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_5 optimizedBody432_38

def optimizedBody432_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_0 optimizedBody432_39

def oracle432 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) (Flapjack.Spt.ls 22)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
def optimized432 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(432, 2, optimizedBody432_40)
end InitECandidate.Proofs.SmallStages.Oracles432
