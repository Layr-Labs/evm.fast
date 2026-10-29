import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody877_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody877_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody877_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 0), (44, 4)]

def optimizedBody877_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (6, 46)]

def optimizedBody877_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 46)]

def optimizedBody877_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody877_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody877_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_5 optimizedBody877_6

def optimizedBody877_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody877_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 (Flapjack.WordStore.temp 0#5)

def optimizedBody877_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody877_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody877_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody877_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody877_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551080#64)))

def optimizedBody877_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody877_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody877_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody877_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_16 optimizedBody877_17

def optimizedBody877_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_15 optimizedBody877_18

def optimizedBody877_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_14 optimizedBody877_19

def optimizedBody877_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_13 optimizedBody877_20

def optimizedBody877_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_12 optimizedBody877_21

def optimizedBody877_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_11 optimizedBody877_22

def optimizedBody877_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_10 optimizedBody877_23

def optimizedBody877_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_9 optimizedBody877_24

def optimizedBody877_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_8 optimizedBody877_25

def optimizedBody877_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 9#64) optimizedBody877_7 optimizedBody877_26

def optimizedBody877_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_8 optimizedBody877_17

def optimizedBody877_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_27 optimizedBody877_28

def optimizedBody877_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_4 optimizedBody877_29

def optimizedBody877_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody877_3, 877, 2)) (some 876) ([2]) (some (2, optimizedBody877_30, 877, 3))

def optimizedBody877_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody877_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody877_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_32 optimizedBody877_33

def optimizedBody877_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_8 optimizedBody877_34

def optimizedBody877_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_31 optimizedBody877_35

def optimizedBody877_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_2 optimizedBody877_36

def optimizedBody877_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_1 optimizedBody877_37

def optimizedBody877_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_0 optimizedBody877_38

def optimized877 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(877, 2, optimizedBody877_39)
end InitECandidate.Proofs.StackAnalysis
