import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source867
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles867
def optimizedBody867_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody867_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody867_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody867_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody867_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody867_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody867_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody867_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_5 optimizedBody867_6

def optimizedBody867_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_4 optimizedBody867_7

def optimizedBody867_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_3 optimizedBody867_8

def optimizedBody867_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody867_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody867_9 optimizedBody867_10

def optimizedBody867_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody867_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_12 optimizedBody867_7

def optimizedBody867_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_3 optimizedBody867_13

def optimizedBody867_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_3 optimizedBody867_14

def optimizedBody867_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_11 optimizedBody867_15

def optimizedBody867_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_2 optimizedBody867_16

def optimizedBody867_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_1 optimizedBody867_17

def optimizedBody867_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_0 optimizedBody867_18

def oracle867 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
      Flapjack.Spt.ln))
def optimized867 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(867, 2, optimizedBody867_19)
end InitECandidate.Proofs.SmallStages.Oracles867
