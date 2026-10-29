import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source861
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles861
def optimizedBody861_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody861_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody861_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody861_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody861_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_2 optimizedBody861_3

def optimizedBody861_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody861_1, 861, 2)) (some 187) ([2, 4]) (some (2, optimizedBody861_4, 861, 3))

def optimizedBody861_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody861_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody861_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody861_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody861_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody861_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody861_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551488#64))

def optimizedBody861_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody861_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody861_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_13 optimizedBody861_14

def optimizedBody861_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_12 optimizedBody861_15

def optimizedBody861_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_11 optimizedBody861_16

def optimizedBody861_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_10 optimizedBody861_17

def optimizedBody861_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_9 optimizedBody861_18

def optimizedBody861_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_19

def optimizedBody861_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody861_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody861_20 optimizedBody861_21

def optimizedBody861_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6)]

def optimizedBody861_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody861_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody861_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_25 optimizedBody861_3

def optimizedBody861_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody861_24, 861, 4)) (some 401) ([2]) (some (2, optimizedBody861_26, 861, 5))

def optimizedBody861_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody861_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody861_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_28 optimizedBody861_29

def optimizedBody861_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_30

def optimizedBody861_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_27 optimizedBody861_31

def optimizedBody861_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_23 optimizedBody861_32

def optimizedBody861_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_33

def optimizedBody861_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_34

def optimizedBody861_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_22 optimizedBody861_35

def optimizedBody861_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_8 optimizedBody861_36

def optimizedBody861_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_7 optimizedBody861_37

def optimizedBody861_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_38

def optimizedBody861_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_5 optimizedBody861_39

def optimizedBody861_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_0 optimizedBody861_40

def oracle861 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
          Flapjack.Spt.ln))))
def optimized861 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(861, 3, optimizedBody861_41)
end InitECandidate.Proofs.SmallStages.Oracles861
