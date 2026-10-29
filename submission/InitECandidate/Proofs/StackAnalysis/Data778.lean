import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody778_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody778_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody778_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody778_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody778_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_2 optimizedBody778_3

def optimizedBody778_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody778_1, 778, 2)) (some 731) ([2]) (some (2, optimizedBody778_4, 778, 3))

def optimizedBody778_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody778_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody778_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody778_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody778_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody778_1, 778, 4)) (some 731) ([2]) (some (2, optimizedBody778_4, 778, 5))

def optimizedBody778_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody778_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody778_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody778_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody778_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_14 optimizedBody778_3

def optimizedBody778_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody778_13, 778, 6)) (some 730) ([2]) (some (2, optimizedBody778_15, 778, 7))

def optimizedBody778_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody778_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody778_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody778_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_18 optimizedBody778_19

def optimizedBody778_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_17 optimizedBody778_20

def optimizedBody778_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_6 optimizedBody778_21

def optimizedBody778_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_16 optimizedBody778_22

def optimizedBody778_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_12 optimizedBody778_23

def optimizedBody778_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_11 optimizedBody778_24

def optimizedBody778_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_7 optimizedBody778_25

def optimizedBody778_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_6 optimizedBody778_26

def optimizedBody778_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_10 optimizedBody778_27

def optimizedBody778_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_9 optimizedBody778_28

def optimizedBody778_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_8 optimizedBody778_29

def optimizedBody778_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_7 optimizedBody778_30

def optimizedBody778_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_6 optimizedBody778_31

def optimizedBody778_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_5 optimizedBody778_32

def optimizedBody778_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody778_0 optimizedBody778_33

def optimized778 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(778, 2, optimizedBody778_34)
end InitECandidate.Proofs.StackAnalysis
