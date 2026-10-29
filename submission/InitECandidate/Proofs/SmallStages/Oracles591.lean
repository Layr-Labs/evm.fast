import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source591
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles591
def optimizedBody591_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2)]

def optimizedBody591_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46)]

def optimizedBody591_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody591_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody591_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_2 optimizedBody591_3

def optimizedBody591_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody591_1, 591, 2)) (some 470) ([2, 4]) (some (2, optimizedBody591_4, 591, 3))

def optimizedBody591_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody591_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody591_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody591_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody591_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody591_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_9 optimizedBody591_10

def optimizedBody591_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_8 optimizedBody591_11

def optimizedBody591_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_12

def optimizedBody591_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody591_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody591_13 optimizedBody591_14

def optimizedBody591_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody591_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody591_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_17 optimizedBody591_11

def optimizedBody591_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_16 optimizedBody591_18

def optimizedBody591_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_19

def optimizedBody591_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_20

def optimizedBody591_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_15 optimizedBody591_21

def optimizedBody591_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_8 optimizedBody591_22

def optimizedBody591_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_7 optimizedBody591_23

def optimizedBody591_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_24

def optimizedBody591_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_5 optimizedBody591_25

def optimizedBody591_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_0 optimizedBody591_26

def oracle591 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
def optimized591 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(591, 3, optimizedBody591_27)
end InitECandidate.Proofs.SmallStages.Oracles591
