import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody66_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody66_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2688614433#64)

def optimizedBody66_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 4 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody66_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody66_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody66_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody66_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551608#64))

def optimizedBody66_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 2688614440#64)

def optimizedBody66_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store 6 (Flapjack.WordLangExpHOL.var 8)

def optimizedBody66_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody66_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551600#64))

def optimizedBody66_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2688614448#64)

def optimizedBody66_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store 2 (Flapjack.WordLangExpHOL.var 6)

def optimizedBody66_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.currHeap

def optimizedBody66_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody66_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody66_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (46, 0), (44, 4)]

def optimizedBody66_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]) 2 4 6 8
  (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln,
    Flapjack.Spt.ln)

def optimizedBody66_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody66_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody66_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody66_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody66_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_9 optimizedBody66_21

def optimizedBody66_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_20 optimizedBody66_22

def optimizedBody66_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_19 optimizedBody66_23

def optimizedBody66_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_18 optimizedBody66_24

def optimizedBody66_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_17 optimizedBody66_25

def optimizedBody66_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_16 optimizedBody66_26

def optimizedBody66_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_15 optimizedBody66_27

def optimizedBody66_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_14 optimizedBody66_28

def optimizedBody66_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_13 optimizedBody66_29

def optimizedBody66_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_12 optimizedBody66_30

def optimizedBody66_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_11 optimizedBody66_31

def optimizedBody66_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_10 optimizedBody66_32

def optimizedBody66_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_9 optimizedBody66_33

def optimizedBody66_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_8 optimizedBody66_34

def optimizedBody66_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_7 optimizedBody66_35

def optimizedBody66_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_6 optimizedBody66_36

def optimizedBody66_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_5 optimizedBody66_37

def optimizedBody66_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_4 optimizedBody66_38

def optimizedBody66_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_3 optimizedBody66_39

def optimizedBody66_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_2 optimizedBody66_40

def optimizedBody66_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_1 optimizedBody66_41

def optimizedBody66_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody66_0 optimizedBody66_42

def optimized66 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(66, 2, optimizedBody66_43)
end InitECandidate.Proofs.StackAnalysis
