import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody873_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody873_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody873_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody873_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody873_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody873_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_3 optimizedBody873_4

def optimizedBody873_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody873_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody873_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody873_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2688614470#64)

def optimizedBody873_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 0 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody873_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody873_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody873_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9#64)

def optimizedBody873_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_13 optimizedBody873_5

def optimizedBody873_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_12 optimizedBody873_14

def optimizedBody873_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_8 optimizedBody873_15

def optimizedBody873_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_11 optimizedBody873_16

def optimizedBody873_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_10 optimizedBody873_17

def optimizedBody873_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_9 optimizedBody873_18

def optimizedBody873_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_8 optimizedBody873_19

def optimizedBody873_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_7 optimizedBody873_20

def optimizedBody873_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_21

def optimizedBody873_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 5#64) optimizedBody873_5 optimizedBody873_22

def optimizedBody873_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_23 optimizedBody873_6

def optimizedBody873_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_2 optimizedBody873_24

def optimizedBody873_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody873_1, 873, 2)) (some 872) ([2]) (some (2, optimizedBody873_25, 873, 3))

def optimizedBody873_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody873_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody873_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody873_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_28 optimizedBody873_29

def optimizedBody873_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_27 optimizedBody873_30

def optimizedBody873_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_31

def optimizedBody873_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_26 optimizedBody873_32

def optimizedBody873_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_0 optimizedBody873_33

def optimized873 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(873, 2, optimizedBody873_34)
end InitECandidate.Proofs.StackAnalysis
