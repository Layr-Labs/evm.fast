import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody876_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody876_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody876_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody876_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody876_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody876_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_3 optimizedBody876_4

def optimizedBody876_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody876_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody876_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody876_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2688614470#64)

def optimizedBody876_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 0 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody876_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 7#64)

def optimizedBody876_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody876_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9#64)

def optimizedBody876_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_13 optimizedBody876_5

def optimizedBody876_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_12 optimizedBody876_14

def optimizedBody876_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_8 optimizedBody876_15

def optimizedBody876_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_11 optimizedBody876_16

def optimizedBody876_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_10 optimizedBody876_17

def optimizedBody876_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_9 optimizedBody876_18

def optimizedBody876_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_8 optimizedBody876_19

def optimizedBody876_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_7 optimizedBody876_20

def optimizedBody876_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_6 optimizedBody876_21

def optimizedBody876_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody876_5 optimizedBody876_22

def optimizedBody876_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_23 optimizedBody876_6

def optimizedBody876_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_2 optimizedBody876_24

def optimizedBody876_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody876_1, 876, 2)) (some 875) ([2]) (some (2, optimizedBody876_25, 876, 3))

def optimizedBody876_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody876_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody876_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody876_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_28 optimizedBody876_29

def optimizedBody876_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_27 optimizedBody876_30

def optimizedBody876_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_6 optimizedBody876_31

def optimizedBody876_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_26 optimizedBody876_32

def optimizedBody876_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody876_0 optimizedBody876_33

def optimized876 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(876, 2, optimizedBody876_34)
end InitECandidate.Proofs.StackAnalysis
