import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles542
def optimizedBody542_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody542_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody542_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody542_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody542_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody542_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody542_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody542_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody542_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody542_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody542_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody542_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def optimizedBody542_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody542_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody542_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody542_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody542_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody542_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_6 optimizedBody542_16

def optimizedBody542_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_15 optimizedBody542_17

def optimizedBody542_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_14 optimizedBody542_18

def optimizedBody542_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_13 optimizedBody542_19

def optimizedBody542_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_12 optimizedBody542_20

def optimizedBody542_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_11 optimizedBody542_21

def optimizedBody542_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_10 optimizedBody542_22

def optimizedBody542_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody542_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 8) optimizedBody542_23 optimizedBody542_24

def optimizedBody542_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody542_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_26 optimizedBody542_17

def optimizedBody542_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_10 optimizedBody542_27

def optimizedBody542_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_10 optimizedBody542_28

def optimizedBody542_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_25 optimizedBody542_29

def optimizedBody542_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_9 optimizedBody542_30

def optimizedBody542_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_8 optimizedBody542_31

def optimizedBody542_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_7 optimizedBody542_32

def optimizedBody542_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_6 optimizedBody542_33

def optimizedBody542_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_5 optimizedBody542_34

def optimizedBody542_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_4 optimizedBody542_35

def optimizedBody542_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_3 optimizedBody542_36

def optimizedBody542_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_2 optimizedBody542_37

def optimizedBody542_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_1 optimizedBody542_38

def optimizedBody542_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_0 optimizedBody542_39

def oracle542 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 4)))))
      Flapjack.Spt.ln))
def optimized542 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(542, 1, optimizedBody542_40)
end InitECandidate.Proofs.SmallStages.Oracles542
