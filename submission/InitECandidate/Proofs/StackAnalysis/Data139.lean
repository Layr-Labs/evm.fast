import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody139_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0)]

def optimizedBody139_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody139_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody139_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody139_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody139_2 optimizedBody139_3

def optimizedBody139_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody139_1, 139, 2)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody139_4, 139, 3))

def optimizedBody139_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody139_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody139_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody139_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody139_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody139_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody139_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody139_10 optimizedBody139_11

def optimizedBody139_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody139_9 optimizedBody139_12

def optimizedBody139_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody139_8 optimizedBody139_13

def optimizedBody139_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody139_7 optimizedBody139_14

def optimizedBody139_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody139_6 optimizedBody139_15

def optimizedBody139_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody139_5 optimizedBody139_16

def optimizedBody139_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody139_0 optimizedBody139_17

def optimized139 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(139, 5, optimizedBody139_18)
end InitECandidate.Proofs.StackAnalysis
