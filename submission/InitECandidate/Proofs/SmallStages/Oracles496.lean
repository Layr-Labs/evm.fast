import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source496
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles496
def optimizedBody496_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody496_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody496_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody496_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody496_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody496_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 168#64))

def optimizedBody496_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody496_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody496_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody496_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody496_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody496_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody496_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_10 optimizedBody496_11

def optimizedBody496_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody496_9, 496, 2)) (some 190) ([2, 4, 6]) (some (2, optimizedBody496_12, 496, 3))

def optimizedBody496_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody496_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody496_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody496_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody496_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_16 optimizedBody496_17

def optimizedBody496_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_15 optimizedBody496_18

def optimizedBody496_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_14 optimizedBody496_19

def optimizedBody496_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_13 optimizedBody496_20

def optimizedBody496_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_8 optimizedBody496_21

def optimizedBody496_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_7 optimizedBody496_22

def optimizedBody496_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_6 optimizedBody496_23

def optimizedBody496_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_5 optimizedBody496_24

def optimizedBody496_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_4 optimizedBody496_25

def optimizedBody496_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_3 optimizedBody496_26

def optimizedBody496_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_2 optimizedBody496_27

def optimizedBody496_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_1 optimizedBody496_28

def optimizedBody496_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_0 optimizedBody496_29

def oracle496 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 0
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 1))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))
def optimized496 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(496, 2, optimizedBody496_30)
end InitECandidate.Proofs.SmallStages.Oracles496
