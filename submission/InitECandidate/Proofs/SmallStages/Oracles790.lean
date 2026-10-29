import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source790
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles790
def optimizedBody790_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody790_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody790_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody790_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody790_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_2 optimizedBody790_3

def optimizedBody790_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody790_1, 790, 2)) (some 741) ([2]) (some (2, optimizedBody790_4, 790, 3))

def optimizedBody790_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody790_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody790_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody790_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody790_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody790_1, 790, 4)) (some 741) ([2]) (some (2, optimizedBody790_4, 790, 5))

def optimizedBody790_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody790_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody790_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody790_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody790_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_14 optimizedBody790_3

def optimizedBody790_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody790_13, 790, 6)) (some 740) ([2]) (some (2, optimizedBody790_15, 790, 7))

def optimizedBody790_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody790_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody790_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody790_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_18 optimizedBody790_19

def optimizedBody790_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_17 optimizedBody790_20

def optimizedBody790_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_6 optimizedBody790_21

def optimizedBody790_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_16 optimizedBody790_22

def optimizedBody790_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_12 optimizedBody790_23

def optimizedBody790_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_11 optimizedBody790_24

def optimizedBody790_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_7 optimizedBody790_25

def optimizedBody790_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_6 optimizedBody790_26

def optimizedBody790_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_10 optimizedBody790_27

def optimizedBody790_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_9 optimizedBody790_28

def optimizedBody790_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_8 optimizedBody790_29

def optimizedBody790_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_7 optimizedBody790_30

def optimizedBody790_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_6 optimizedBody790_31

def optimizedBody790_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_5 optimizedBody790_32

def optimizedBody790_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody790_0 optimizedBody790_33

def oracle790 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 22))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
def optimized790 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(790, 2, optimizedBody790_34)
end InitECandidate.Proofs.SmallStages.Oracles790
