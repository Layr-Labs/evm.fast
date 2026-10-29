import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody760_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody760_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody760_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody760_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody760_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_2 optimizedBody760_3

def optimizedBody760_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody760_1, 760, 2)) (some 746) ([2, 4]) (some (2, optimizedBody760_4, 760, 3))

def optimizedBody760_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody760_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody760_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody760_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody760_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody760_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody760_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody760_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody760_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_13 optimizedBody760_3

def optimizedBody760_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody760_12, 760, 4)) (some 751) ([2, 4]) (some (2, optimizedBody760_14, 760, 5))

def optimizedBody760_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody760_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody760_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody760_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_17 optimizedBody760_18

def optimizedBody760_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_16 optimizedBody760_19

def optimizedBody760_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_6 optimizedBody760_20

def optimizedBody760_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_15 optimizedBody760_21

def optimizedBody760_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_11 optimizedBody760_22

def optimizedBody760_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_10 optimizedBody760_23

def optimizedBody760_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_9 optimizedBody760_24

def optimizedBody760_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_8 optimizedBody760_25

def optimizedBody760_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_7 optimizedBody760_26

def optimizedBody760_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_6 optimizedBody760_27

def optimizedBody760_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_5 optimizedBody760_28

def optimizedBody760_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody760_0 optimizedBody760_29

def optimized760 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(760, 3, optimizedBody760_30)
end InitECandidate.Proofs.StackAnalysis
