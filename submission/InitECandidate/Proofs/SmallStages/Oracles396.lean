import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source396
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles396
def optimizedBody396_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody396_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody396_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody396_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody396_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 18446744073709551480#64))

def optimizedBody396_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody396_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody396_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody396_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody396_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody396_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0)]

def optimizedBody396_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody396_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody396_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody396_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_12 optimizedBody396_13

def optimizedBody396_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody396_11, 396, 2)) (some 395) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody396_14, 396, 3))

def optimizedBody396_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody396_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody396_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody396_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_17 optimizedBody396_18

def optimizedBody396_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_16 optimizedBody396_19

def optimizedBody396_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_15 optimizedBody396_20

def optimizedBody396_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_10 optimizedBody396_21

def optimizedBody396_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_9 optimizedBody396_22

def optimizedBody396_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_8 optimizedBody396_23

def optimizedBody396_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_7 optimizedBody396_24

def optimizedBody396_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_6 optimizedBody396_25

def optimizedBody396_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_5 optimizedBody396_26

def optimizedBody396_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_4 optimizedBody396_27

def optimizedBody396_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_3 optimizedBody396_28

def optimizedBody396_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_2 optimizedBody396_29

def optimizedBody396_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_1 optimizedBody396_30

def optimizedBody396_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody396_0 optimizedBody396_31

def oracle396 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
def optimized396 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(396, 1, optimizedBody396_32)
end InitECandidate.Proofs.SmallStages.Oracles396
