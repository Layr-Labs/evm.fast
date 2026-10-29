import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody547_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody547_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody547_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody547_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody547_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_2 optimizedBody547_3

def optimizedBody547_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody547_1, 547, 2)) (some 392) ([2, 4]) (some (2, optimizedBody547_4, 547, 3))

def optimizedBody547_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody547_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody547_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody547_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody547_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody547_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody547_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody547_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody547_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody547_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_14 optimizedBody547_3

def optimizedBody547_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody547_13, 547, 4)) (some 187) ([2, 4]) (some (2, optimizedBody547_15, 547, 5))

def optimizedBody547_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody547_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody547_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_17 optimizedBody547_18

def optimizedBody547_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_6 optimizedBody547_19

def optimizedBody547_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_16 optimizedBody547_20

def optimizedBody547_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_12 optimizedBody547_21

def optimizedBody547_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_11 optimizedBody547_22

def optimizedBody547_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_10 optimizedBody547_23

def optimizedBody547_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_9 optimizedBody547_24

def optimizedBody547_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_8 optimizedBody547_25

def optimizedBody547_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_7 optimizedBody547_26

def optimizedBody547_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_6 optimizedBody547_27

def optimizedBody547_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_5 optimizedBody547_28

def optimizedBody547_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_0 optimizedBody547_29

def optimized547 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(547, 3, optimizedBody547_30)
end InitECandidate.Proofs.StackAnalysis
