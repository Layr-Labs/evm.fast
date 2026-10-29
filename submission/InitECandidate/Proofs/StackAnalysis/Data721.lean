import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody721_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0)]

def optimizedBody721_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (14, 2), (6, 6), (10, 10), (8, 8), (12, 12), (0, 44)]

def optimizedBody721_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody721_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody721_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_2 optimizedBody721_3

def optimizedBody721_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody721_1, 721, 2)) (some 720) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody721_4, 721, 3))

def optimizedBody721_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody721_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 14)]

def optimizedBody721_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 767358375875140941#64)

def optimizedBody721_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 2671430854784468776#64)

def optimizedBody721_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 3801124253586036577#64)

def optimizedBody721_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 11120290361046346205#64)

def optimizedBody721_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3557706395579559416#64)

def optimizedBody721_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 17098105564519244256#64)

def optimizedBody721_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody721_15 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 714) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody721_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_14 optimizedBody721_15

def optimizedBody721_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_13 optimizedBody721_16

def optimizedBody721_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_12 optimizedBody721_17

def optimizedBody721_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_11 optimizedBody721_18

def optimizedBody721_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_10 optimizedBody721_19

def optimizedBody721_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_9 optimizedBody721_20

def optimizedBody721_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_8 optimizedBody721_21

def optimizedBody721_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_7 optimizedBody721_22

def optimizedBody721_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_6 optimizedBody721_23

def optimizedBody721_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_5 optimizedBody721_24

def optimizedBody721_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_0 optimizedBody721_25

def optimized721 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(721, 7, optimizedBody721_26)
end InitECandidate.Proofs.StackAnalysis
