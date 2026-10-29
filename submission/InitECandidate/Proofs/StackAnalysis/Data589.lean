import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody589_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2)]

def optimizedBody589_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46)]

def optimizedBody589_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody589_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody589_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_2 optimizedBody589_3

def optimizedBody589_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody589_1, 589, 2)) (some 468) ([2, 4]) (some (2, optimizedBody589_4, 589, 3))

def optimizedBody589_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody589_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody589_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody589_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody589_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody589_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_9 optimizedBody589_10

def optimizedBody589_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_8 optimizedBody589_11

def optimizedBody589_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_6 optimizedBody589_12

def optimizedBody589_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody589_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody589_13 optimizedBody589_14

def optimizedBody589_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody589_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody589_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_17 optimizedBody589_11

def optimizedBody589_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_16 optimizedBody589_18

def optimizedBody589_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_6 optimizedBody589_19

def optimizedBody589_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_6 optimizedBody589_20

def optimizedBody589_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_15 optimizedBody589_21

def optimizedBody589_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_8 optimizedBody589_22

def optimizedBody589_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_7 optimizedBody589_23

def optimizedBody589_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_6 optimizedBody589_24

def optimizedBody589_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_5 optimizedBody589_25

def optimizedBody589_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody589_0 optimizedBody589_26

def optimized589 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(589, 3, optimizedBody589_27)
end InitECandidate.Proofs.StackAnalysis
