import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source401
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles401
def optimizedBody401_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody401_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody401_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody401_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody401_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_2 optimizedBody401_3

def optimizedBody401_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_1, 401, 2)) (some 400) ([2]) (some (2, optimizedBody401_4, 401, 3))

def optimizedBody401_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody401_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody401_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody401_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody401_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody401_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody401_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551488#64))

def optimizedBody401_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody401_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody401_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_13 optimizedBody401_14

def optimizedBody401_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_12 optimizedBody401_15

def optimizedBody401_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_11 optimizedBody401_16

def optimizedBody401_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_10 optimizedBody401_17

def optimizedBody401_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_9 optimizedBody401_18

def optimizedBody401_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_19

def optimizedBody401_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody401_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody401_20 optimizedBody401_21

def optimizedBody401_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody401_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_23 optimizedBody401_15

def optimizedBody401_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_7 optimizedBody401_24

def optimizedBody401_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_25

def optimizedBody401_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_26

def optimizedBody401_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_22 optimizedBody401_27

def optimizedBody401_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_8 optimizedBody401_28

def optimizedBody401_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_7 optimizedBody401_29

def optimizedBody401_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_30

def optimizedBody401_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_5 optimizedBody401_31

def optimizedBody401_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_0 optimizedBody401_32

def oracle401 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized401 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(401, 2, optimizedBody401_33)
end InitECandidate.Proofs.SmallStages.Oracles401
