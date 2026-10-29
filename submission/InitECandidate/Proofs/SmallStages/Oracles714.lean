import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source714
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles714
def optimizedBody714_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (12, 12), (0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody714_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody714_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody714_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody714_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody714_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody714_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody714_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody714_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody714_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody714_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody714_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody714_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody714_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody714_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_8 optimizedBody714_13

def optimizedBody714_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_12 optimizedBody714_14

def optimizedBody714_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_11 optimizedBody714_15

def optimizedBody714_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody714_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody714_16 optimizedBody714_17

def optimizedBody714_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody714_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_19 optimizedBody714_14

def optimizedBody714_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_11 optimizedBody714_20

def optimizedBody714_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_11 optimizedBody714_21

def optimizedBody714_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_18 optimizedBody714_22

def optimizedBody714_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_10 optimizedBody714_23

def optimizedBody714_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_9 optimizedBody714_24

def optimizedBody714_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_8 optimizedBody714_25

def optimizedBody714_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_7 optimizedBody714_26

def optimizedBody714_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_6 optimizedBody714_27

def optimizedBody714_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_5 optimizedBody714_28

def optimizedBody714_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_4 optimizedBody714_29

def optimizedBody714_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_3 optimizedBody714_30

def optimizedBody714_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_2 optimizedBody714_31

def optimizedBody714_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_1 optimizedBody714_32

def optimizedBody714_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody714_0 optimizedBody714_33

def oracle714 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 0
            (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 4)))))
      Flapjack.Spt.ln))
def optimized714 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(714, 7, optimizedBody714_34)
end InitECandidate.Proofs.SmallStages.Oracles714
