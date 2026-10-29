import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody581_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody581_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody581_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody581_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody581_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody581_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody581_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_4 optimizedBody581_5

def optimizedBody581_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody581_3, 581, 2)) (some 470) ([2]) (some (2, optimizedBody581_6, 581, 3))

def optimizedBody581_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody581_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody581_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody581_9, 581, 4)) (some 572) ([]) (some (2, optimizedBody581_6, 581, 5))

def optimizedBody581_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody581_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody581_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody581_3, 581, 6)) (some 477) ([2]) (some (2, optimizedBody581_6, 581, 7))

def optimizedBody581_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody581_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody581_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody581_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_16 optimizedBody581_5

def optimizedBody581_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody581_15, 581, 8)) (some 490) ([2]) (some (2, optimizedBody581_17, 581, 9))

def optimizedBody581_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody581_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody581_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody581_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_20 optimizedBody581_21

def optimizedBody581_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_19 optimizedBody581_22

def optimizedBody581_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_8 optimizedBody581_23

def optimizedBody581_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_18 optimizedBody581_24

def optimizedBody581_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_4 optimizedBody581_25

def optimizedBody581_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_14 optimizedBody581_26

def optimizedBody581_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_8 optimizedBody581_27

def optimizedBody581_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_13 optimizedBody581_28

def optimizedBody581_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_4 optimizedBody581_29

def optimizedBody581_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_12 optimizedBody581_30

def optimizedBody581_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_11 optimizedBody581_31

def optimizedBody581_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_8 optimizedBody581_32

def optimizedBody581_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_10 optimizedBody581_33

def optimizedBody581_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_3 optimizedBody581_34

def optimizedBody581_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_8 optimizedBody581_35

def optimizedBody581_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_7 optimizedBody581_36

def optimizedBody581_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_2 optimizedBody581_37

def optimizedBody581_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_1 optimizedBody581_38

def optimizedBody581_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody581_0 optimizedBody581_39

def optimized581 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(581, 1, optimizedBody581_40)
end InitECandidate.Proofs.StackAnalysis
