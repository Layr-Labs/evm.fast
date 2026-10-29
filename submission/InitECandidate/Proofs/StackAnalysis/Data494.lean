import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody494_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody494_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody494_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody494_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody494_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody494_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 168#64))

def optimizedBody494_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody494_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody494_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody494_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody494_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody494_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody494_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_10 optimizedBody494_11

def optimizedBody494_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody494_9, 494, 2)) (some 192) ([2, 4, 6]) (some (2, optimizedBody494_12, 494, 3))

def optimizedBody494_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody494_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody494_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody494_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody494_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_16 optimizedBody494_17

def optimizedBody494_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_15 optimizedBody494_18

def optimizedBody494_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_14 optimizedBody494_19

def optimizedBody494_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_13 optimizedBody494_20

def optimizedBody494_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_8 optimizedBody494_21

def optimizedBody494_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_7 optimizedBody494_22

def optimizedBody494_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_6 optimizedBody494_23

def optimizedBody494_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_5 optimizedBody494_24

def optimizedBody494_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_4 optimizedBody494_25

def optimizedBody494_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_3 optimizedBody494_26

def optimizedBody494_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_2 optimizedBody494_27

def optimizedBody494_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_1 optimizedBody494_28

def optimizedBody494_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_0 optimizedBody494_29

def optimized494 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(494, 2, optimizedBody494_30)
end InitECandidate.Proofs.StackAnalysis
