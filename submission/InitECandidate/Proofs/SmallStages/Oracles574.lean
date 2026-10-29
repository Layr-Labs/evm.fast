import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source574
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles574
def optimizedBody574_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody574_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody574_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody574_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody574_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody574_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody574_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody574_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody574_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody574_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_7 optimizedBody574_8

def optimizedBody574_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_6 optimizedBody574_9

def optimizedBody574_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_5 optimizedBody574_10

def optimizedBody574_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_4 optimizedBody574_11

def optimizedBody574_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_3 optimizedBody574_12

def optimizedBody574_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_2 optimizedBody574_13

def optimizedBody574_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_1 optimizedBody574_14

def optimizedBody574_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody574_0 optimizedBody574_15

def oracle574 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 0
        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
      Flapjack.Spt.ln))
def optimized574 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(574, 1, optimizedBody574_16)
end InitECandidate.Proofs.SmallStages.Oracles574
