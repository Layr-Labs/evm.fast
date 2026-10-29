import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source466
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles466
def optimizedBody466_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody466_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 2 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody466_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody466_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody466_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody466_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody466_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody466_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_5 optimizedBody466_6

def optimizedBody466_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_4 optimizedBody466_7

def optimizedBody466_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def optimizedBody466_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody466_8 optimizedBody466_9

def optimizedBody466_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody466_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody466_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody466_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody466_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody466_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody466_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody466_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_16 optimizedBody466_17

def optimizedBody466_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody466_15, 466, 2)) (some 465) ([2, 4]) (some (2, optimizedBody466_18, 466, 3))

def optimizedBody466_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody466_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_20 optimizedBody466_6

def optimizedBody466_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_4 optimizedBody466_21

def optimizedBody466_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_19 optimizedBody466_22

def optimizedBody466_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_14 optimizedBody466_23

def optimizedBody466_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_13 optimizedBody466_24

def optimizedBody466_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_2 optimizedBody466_25

def optimizedBody466_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_12 optimizedBody466_26

def optimizedBody466_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_11 optimizedBody466_27

def optimizedBody466_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_4 optimizedBody466_28

def optimizedBody466_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_4 optimizedBody466_29

def optimizedBody466_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_10 optimizedBody466_30

def optimizedBody466_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_3 optimizedBody466_31

def optimizedBody466_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_2 optimizedBody466_32

def optimizedBody466_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_1 optimizedBody466_33

def optimizedBody466_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody466_0 optimizedBody466_34

def oracle466 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 2))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))
def optimized466 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(466, 2, optimizedBody466_35)
end InitECandidate.Proofs.SmallStages.Oracles466
