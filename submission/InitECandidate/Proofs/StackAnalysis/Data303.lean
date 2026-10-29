import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody303_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8)]

def optimizedBody303_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody303_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44), (4, 46)]

def optimizedBody303_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody303_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody303_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_3 optimizedBody303_4

def optimizedBody303_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody303_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody303_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (46, 46), (44, 0)]

def optimizedBody303_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody303_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody303_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_4

def optimizedBody303_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_9, 303, 3)) (some 76) ([2]) (some (2, optimizedBody303_11, 303, 4))

def optimizedBody303_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody303_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def optimizedBody303_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody303_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_15 optimizedBody303_5

def optimizedBody303_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_14 optimizedBody303_16

def optimizedBody303_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_13 optimizedBody303_17

def optimizedBody303_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_6 optimizedBody303_18

def optimizedBody303_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_12 optimizedBody303_19

def optimizedBody303_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_8 optimizedBody303_20

def optimizedBody303_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_7 optimizedBody303_21

def optimizedBody303_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_6 optimizedBody303_22

def optimizedBody303_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 5#64) optimizedBody303_5 optimizedBody303_23

def optimizedBody303_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody303_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody303_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_25 optimizedBody303_26

def optimizedBody303_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_6 optimizedBody303_27

def optimizedBody303_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_24 optimizedBody303_28

def optimizedBody303_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_2 optimizedBody303_29

def optimizedBody303_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_1, 303, 2)) (some 302) ([2, 4, 6]) (some (2, optimizedBody303_30, 303, 5))

def optimizedBody303_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody303_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody303_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_32 optimizedBody303_33

def optimizedBody303_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_6 optimizedBody303_34

def optimizedBody303_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_31 optimizedBody303_35

def optimizedBody303_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_0 optimizedBody303_36

def optimized303 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(303, 5, optimizedBody303_37)
end InitECandidate.Proofs.StackAnalysis
