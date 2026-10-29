import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody336_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody336_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (0, 44)]

def optimizedBody336_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody336_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody336_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_2 optimizedBody336_3

def optimizedBody336_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody336_1, 336, 2)) (some 335) ([2, 4, 6]) (some (2, optimizedBody336_4, 336, 3))

def optimizedBody336_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody336_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody336_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody336_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13#64)

def optimizedBody336_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody336_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody336_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody336_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody336_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_13 optimizedBody336_3

def optimizedBody336_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_12 optimizedBody336_14

def optimizedBody336_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_11 optimizedBody336_15

def optimizedBody336_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_10 optimizedBody336_16

def optimizedBody336_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_9 optimizedBody336_17

def optimizedBody336_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_6 optimizedBody336_18

def optimizedBody336_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody336_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody336_19 optimizedBody336_20

def optimizedBody336_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 6), (4, 4)]

def optimizedBody336_23 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 146) ([0, 2, 4]) (none)

def optimizedBody336_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_22 optimizedBody336_23

def optimizedBody336_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_6 optimizedBody336_24

def optimizedBody336_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_6 optimizedBody336_25

def optimizedBody336_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_21 optimizedBody336_26

def optimizedBody336_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_8 optimizedBody336_27

def optimizedBody336_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_7 optimizedBody336_28

def optimizedBody336_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_6 optimizedBody336_29

def optimizedBody336_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_5 optimizedBody336_30

def optimizedBody336_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody336_0 optimizedBody336_31

def optimized336 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(336, 4, optimizedBody336_32)
end InitECandidate.Proofs.StackAnalysis
