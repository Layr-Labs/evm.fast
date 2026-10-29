import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody307_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (0, 0), (8, 2)]

def optimizedBody307_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody307_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody307_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody307_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551472#64))

def optimizedBody307_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody307_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8)]

def optimizedBody307_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody307_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody307_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody307_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_8 optimizedBody307_9

def optimizedBody307_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody307_7, 307, 2)) (some 288) ([2, 4, 6]) (some (2, optimizedBody307_10, 307, 3))

def optimizedBody307_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody307_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody307_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551472#64))

def optimizedBody307_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 64#64)

def optimizedBody307_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody307_17 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 306) ([0, 2, 4, 6]) (none)

def optimizedBody307_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_16 optimizedBody307_17

def optimizedBody307_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_15 optimizedBody307_18

def optimizedBody307_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_14 optimizedBody307_19

def optimizedBody307_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_3 optimizedBody307_20

def optimizedBody307_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_2 optimizedBody307_21

def optimizedBody307_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_1 optimizedBody307_22

def optimizedBody307_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_13 optimizedBody307_23

def optimizedBody307_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_12 optimizedBody307_24

def optimizedBody307_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_11 optimizedBody307_25

def optimizedBody307_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_6 optimizedBody307_26

def optimizedBody307_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_5 optimizedBody307_27

def optimizedBody307_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_4 optimizedBody307_28

def optimizedBody307_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_3 optimizedBody307_29

def optimizedBody307_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_2 optimizedBody307_30

def optimizedBody307_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_1 optimizedBody307_31

def optimizedBody307_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody307_0 optimizedBody307_32

def optimized307 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(307, 3, optimizedBody307_33)
end InitECandidate.Proofs.StackAnalysis
