import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source464
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles464
def optimizedBody464_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 0), (10, 2), (4, 4)]

def optimizedBody464_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody464_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody464_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody464_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody464_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody464_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody464_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody464_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody464_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_7 optimizedBody464_8

def optimizedBody464_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_6 optimizedBody464_9

def optimizedBody464_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_5 optimizedBody464_10

def optimizedBody464_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody464_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody464_11 optimizedBody464_12

def optimizedBody464_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10)]

def optimizedBody464_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_14 optimizedBody464_8

def optimizedBody464_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_5 optimizedBody464_15

def optimizedBody464_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_5 optimizedBody464_16

def optimizedBody464_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_13 optimizedBody464_17

def optimizedBody464_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_4 optimizedBody464_18

def optimizedBody464_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_3 optimizedBody464_19

def optimizedBody464_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_2 optimizedBody464_20

def optimizedBody464_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_1 optimizedBody464_21

def optimizedBody464_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_0 optimizedBody464_22

def oracle464 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 3))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
      Flapjack.Spt.ln))
def optimized464 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(464, 5, optimizedBody464_23)
end InitECandidate.Proofs.SmallStages.Oracles464
