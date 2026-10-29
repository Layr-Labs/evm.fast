import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody851_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (48, 2), (50, 6)]

def optimizedBody851_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody851_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody851_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody851_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_2 optimizedBody851_3

def optimizedBody851_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody851_1, 851, 2)) (some 88) ([2, 4]) (some (2, optimizedBody851_4, 851, 3))

def optimizedBody851_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody851_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody851_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody851_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody851_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody851_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody851_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_11 optimizedBody851_3

def optimizedBody851_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody851_10, 851, 4)) (some 89) ([2, 4]) (some (2, optimizedBody851_12, 851, 5))

def optimizedBody851_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody851_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody851_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody851_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody851_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_17 optimizedBody851_3

def optimizedBody851_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody851_16, 851, 6)) (some 89) ([2, 4]) (some (2, optimizedBody851_18, 851, 7))

def optimizedBody851_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody851_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody851_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody851_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_21 optimizedBody851_22

def optimizedBody851_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_20 optimizedBody851_23

def optimizedBody851_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_6 optimizedBody851_24

def optimizedBody851_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_19 optimizedBody851_25

def optimizedBody851_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_15 optimizedBody851_26

def optimizedBody851_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_14 optimizedBody851_27

def optimizedBody851_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_7 optimizedBody851_28

def optimizedBody851_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_6 optimizedBody851_29

def optimizedBody851_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_13 optimizedBody851_30

def optimizedBody851_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_9 optimizedBody851_31

def optimizedBody851_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_8 optimizedBody851_32

def optimizedBody851_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_7 optimizedBody851_33

def optimizedBody851_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_6 optimizedBody851_34

def optimizedBody851_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_5 optimizedBody851_35

def optimizedBody851_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody851_0 optimizedBody851_36

def optimized851 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(851, 5, optimizedBody851_37)
end InitECandidate.Proofs.StackAnalysis
