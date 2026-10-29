import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source550
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles550
def optimizedBody550_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody550_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody550_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody550_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody550_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_2 optimizedBody550_3

def optimizedBody550_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_1, 550, 2)) (some 394) ([2, 4]) (some (2, optimizedBody550_4, 550, 3))

def optimizedBody550_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody550_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody550_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody550_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody550_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody550_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody550_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody550_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody550_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody550_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody550_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody550_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_16 optimizedBody550_3

def optimizedBody550_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_15, 550, 4)) (some 190) ([2, 4, 6]) (some (2, optimizedBody550_17, 550, 5))

def optimizedBody550_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody550_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody550_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody550_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_20 optimizedBody550_21

def optimizedBody550_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_19 optimizedBody550_22

def optimizedBody550_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_23

def optimizedBody550_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_18 optimizedBody550_24

def optimizedBody550_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_14 optimizedBody550_25

def optimizedBody550_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_13 optimizedBody550_26

def optimizedBody550_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_12 optimizedBody550_27

def optimizedBody550_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_11 optimizedBody550_28

def optimizedBody550_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_10 optimizedBody550_29

def optimizedBody550_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_9 optimizedBody550_30

def optimizedBody550_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_8 optimizedBody550_31

def optimizedBody550_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_7 optimizedBody550_32

def optimizedBody550_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_33

def optimizedBody550_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_5 optimizedBody550_34

def optimizedBody550_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_0 optimizedBody550_35

def oracle550 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 3))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
def optimized550 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(550, 3, optimizedBody550_36)
end InitECandidate.Proofs.SmallStages.Oracles550
