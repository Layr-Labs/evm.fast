import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody87_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody87_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody87_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody87_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody87_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_2 optimizedBody87_3

def optimizedBody87_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody87_1, 87, 2)) (some 86) ([2, 4]) (some (2, optimizedBody87_4, 87, 3))

def optimizedBody87_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody87_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody87_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody87_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody87_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody87_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody87_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody87_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody87_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_13 optimizedBody87_3

def optimizedBody87_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody87_12, 87, 4)) (some 86) ([2, 4]) (some (2, optimizedBody87_14, 87, 5))

def optimizedBody87_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody87_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody87_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody87_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_17 optimizedBody87_18

def optimizedBody87_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_16 optimizedBody87_19

def optimizedBody87_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_6 optimizedBody87_20

def optimizedBody87_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_15 optimizedBody87_21

def optimizedBody87_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_11 optimizedBody87_22

def optimizedBody87_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_10 optimizedBody87_23

def optimizedBody87_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_9 optimizedBody87_24

def optimizedBody87_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_8 optimizedBody87_25

def optimizedBody87_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_7 optimizedBody87_26

def optimizedBody87_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_6 optimizedBody87_27

def optimizedBody87_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_5 optimizedBody87_28

def optimizedBody87_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody87_0 optimizedBody87_29

def optimized87 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(87, 3, optimizedBody87_30)
end InitECandidate.Proofs.StackAnalysis
