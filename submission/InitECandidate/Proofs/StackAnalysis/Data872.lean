import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody872_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody872_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody872_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody872_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody872_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody872_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_3 optimizedBody872_4

def optimizedBody872_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody872_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody872_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody872_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2688614470#64)

def optimizedBody872_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 0 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody872_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody872_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody872_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9#64)

def optimizedBody872_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_13 optimizedBody872_5

def optimizedBody872_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_12 optimizedBody872_14

def optimizedBody872_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_8 optimizedBody872_15

def optimizedBody872_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_11 optimizedBody872_16

def optimizedBody872_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_10 optimizedBody872_17

def optimizedBody872_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_9 optimizedBody872_18

def optimizedBody872_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_8 optimizedBody872_19

def optimizedBody872_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_7 optimizedBody872_20

def optimizedBody872_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_21

def optimizedBody872_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 1#64) optimizedBody872_5 optimizedBody872_22

def optimizedBody872_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_23 optimizedBody872_6

def optimizedBody872_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_2 optimizedBody872_24

def optimizedBody872_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_1, 872, 2)) (some 871) ([2]) (some (2, optimizedBody872_25, 872, 3))

def optimizedBody872_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody872_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody872_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody872_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_28 optimizedBody872_29

def optimizedBody872_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_27 optimizedBody872_30

def optimizedBody872_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_31

def optimizedBody872_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_26 optimizedBody872_32

def optimizedBody872_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_0 optimizedBody872_33

def optimized872 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(872, 2, optimizedBody872_34)
end InitECandidate.Proofs.StackAnalysis
