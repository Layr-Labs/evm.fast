import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody870_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody870_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody870_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody870_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody870_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody870_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_3 optimizedBody870_4

def optimizedBody870_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody870_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody870_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody870_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2688614470#64)

def optimizedBody870_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 0 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody870_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody870_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody870_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9#64)

def optimizedBody870_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_13 optimizedBody870_5

def optimizedBody870_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_12 optimizedBody870_14

def optimizedBody870_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_8 optimizedBody870_15

def optimizedBody870_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_11 optimizedBody870_16

def optimizedBody870_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_17

def optimizedBody870_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_9 optimizedBody870_18

def optimizedBody870_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_8 optimizedBody870_19

def optimizedBody870_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_7 optimizedBody870_20

def optimizedBody870_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_6 optimizedBody870_21

def optimizedBody870_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 4#64) optimizedBody870_5 optimizedBody870_22

def optimizedBody870_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_23 optimizedBody870_6

def optimizedBody870_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_2 optimizedBody870_24

def optimizedBody870_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody870_1, 870, 2)) (some 869) ([2]) (some (2, optimizedBody870_25, 870, 3))

def optimizedBody870_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody870_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody870_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody870_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_28 optimizedBody870_29

def optimizedBody870_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_27 optimizedBody870_30

def optimizedBody870_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_6 optimizedBody870_31

def optimizedBody870_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_26 optimizedBody870_32

def optimizedBody870_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_0 optimizedBody870_33

def optimized870 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(870, 2, optimizedBody870_34)
end InitECandidate.Proofs.StackAnalysis
