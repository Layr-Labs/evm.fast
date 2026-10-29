import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source526
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles526
def optimizedBody526_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody526_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody526_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody526_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody526_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody526_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody526_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody526_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody526_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody526_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody526_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody526_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody526_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody526_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody526_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_12 optimizedBody526_13

def optimizedBody526_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody526_11, 526, 2)) (some 492) ([2]) (some (2, optimizedBody526_14, 526, 3))

def optimizedBody526_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody526_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody526_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody526_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_7 optimizedBody526_18

def optimizedBody526_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_17 optimizedBody526_19

def optimizedBody526_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_16 optimizedBody526_20

def optimizedBody526_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_15 optimizedBody526_21

def optimizedBody526_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_10 optimizedBody526_22

def optimizedBody526_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_9 optimizedBody526_23

def optimizedBody526_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_8 optimizedBody526_24

def optimizedBody526_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_7 optimizedBody526_25

def optimizedBody526_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_26

def optimizedBody526_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_5 optimizedBody526_27

def optimizedBody526_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_4 optimizedBody526_28

def optimizedBody526_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_3 optimizedBody526_29

def optimizedBody526_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_2 optimizedBody526_30

def optimizedBody526_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_1 optimizedBody526_31

def optimizedBody526_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_0 optimizedBody526_32

def oracle526 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 1
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))
def optimized526 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(526, 1, optimizedBody526_33)
end InitECandidate.Proofs.SmallStages.Oracles526
