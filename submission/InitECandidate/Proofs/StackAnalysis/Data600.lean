import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody600_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody600_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody600_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody600_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody600_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody600_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 160#64))

def optimizedBody600_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody600_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody600_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody600_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody600_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody600_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody600_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody600_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody600_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody600_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_13 optimizedBody600_14

def optimizedBody600_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody600_12, 600, 2)) (some 391) ([2]) (some (2, optimizedBody600_15, 600, 3))

def optimizedBody600_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_7 optimizedBody600_0

def optimizedBody600_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_16 optimizedBody600_17

def optimizedBody600_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_11 optimizedBody600_18

def optimizedBody600_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_10 optimizedBody600_19

def optimizedBody600_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_20

def optimizedBody600_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_8 optimizedBody600_21

def optimizedBody600_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_7 optimizedBody600_22

def optimizedBody600_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody600_23 optimizedBody600_17

def optimizedBody600_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody600_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody600_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody600_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_26 optimizedBody600_27

def optimizedBody600_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_25 optimizedBody600_28

def optimizedBody600_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_7 optimizedBody600_29

def optimizedBody600_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_24 optimizedBody600_30

def optimizedBody600_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_31

def optimizedBody600_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_5 optimizedBody600_32

def optimizedBody600_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_4 optimizedBody600_33

def optimizedBody600_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_3 optimizedBody600_34

def optimizedBody600_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_2 optimizedBody600_35

def optimizedBody600_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_1 optimizedBody600_36

def optimizedBody600_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_0 optimizedBody600_37

def optimized600 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(600, 1, optimizedBody600_38)
end InitECandidate.Proofs.StackAnalysis
