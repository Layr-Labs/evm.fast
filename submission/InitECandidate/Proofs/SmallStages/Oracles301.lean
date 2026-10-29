import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source301
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles301
def optimizedBody301_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody301_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody301_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody301_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody301_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody301_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody301_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody301_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody301_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody301_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody301_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody301_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody301_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_5 optimizedBody301_11

def optimizedBody301_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_12

def optimizedBody301_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_9 optimizedBody301_13

def optimizedBody301_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_5 optimizedBody301_14

def optimizedBody301_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_8 optimizedBody301_15

def optimizedBody301_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_7 optimizedBody301_16

def optimizedBody301_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_5 optimizedBody301_17

def optimizedBody301_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_4 optimizedBody301_18

def optimizedBody301_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_3 optimizedBody301_19

def optimizedBody301_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_2 optimizedBody301_20

def optimizedBody301_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_6 optimizedBody301_21

def optimizedBody301_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_5 optimizedBody301_22

def optimizedBody301_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_4 optimizedBody301_23

def optimizedBody301_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_3 optimizedBody301_24

def optimizedBody301_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_2 optimizedBody301_25

def optimizedBody301_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_1 optimizedBody301_26

def optimizedBody301_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_0 optimizedBody301_27

def oracle301 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 0
          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
      Flapjack.Spt.ln))
def optimized301 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(301, 2, optimizedBody301_28)
end InitECandidate.Proofs.SmallStages.Oracles301
