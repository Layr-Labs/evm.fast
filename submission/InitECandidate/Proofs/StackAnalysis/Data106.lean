import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody106_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (8, 8), (0, 0), (18, 2), (4, 4), (6, 6), (10, 10), (12, 12), (14, 14)]

def optimizedBody106_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody106_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (8, 8)]

def optimizedBody106_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody106_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody106_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody106_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_4 optimizedBody106_5

def optimizedBody106_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_3 optimizedBody106_6

def optimizedBody106_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_7

def optimizedBody106_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody106_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 16) optimizedBody106_8 optimizedBody106_9

def optimizedBody106_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody106_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_11 optimizedBody106_6

def optimizedBody106_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_12

def optimizedBody106_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_13

def optimizedBody106_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_10 optimizedBody106_14

def optimizedBody106_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_2 optimizedBody106_15

def optimizedBody106_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_16

def optimizedBody106_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 16) optimizedBody106_17 optimizedBody106_9

def optimizedBody106_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (6, 6)]

def optimizedBody106_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 14) optimizedBody106_8 optimizedBody106_9

def optimizedBody106_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_20 optimizedBody106_14

def optimizedBody106_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_19 optimizedBody106_21

def optimizedBody106_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_22

def optimizedBody106_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 14) optimizedBody106_23 optimizedBody106_9

def optimizedBody106_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (4, 4)]

def optimizedBody106_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 12) optimizedBody106_8 optimizedBody106_9

def optimizedBody106_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_26 optimizedBody106_14

def optimizedBody106_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_25 optimizedBody106_27

def optimizedBody106_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_28

def optimizedBody106_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 12) optimizedBody106_29 optimizedBody106_9

def optimizedBody106_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (18, 18)]

def optimizedBody106_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 10) optimizedBody106_8 optimizedBody106_9

def optimizedBody106_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_32 optimizedBody106_14

def optimizedBody106_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_31 optimizedBody106_33

def optimizedBody106_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_34

def optimizedBody106_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_35

def optimizedBody106_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_30 optimizedBody106_36

def optimizedBody106_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_25 optimizedBody106_37

def optimizedBody106_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_38

def optimizedBody106_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_39

def optimizedBody106_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_24 optimizedBody106_40

def optimizedBody106_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_19 optimizedBody106_41

def optimizedBody106_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_42

def optimizedBody106_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_1 optimizedBody106_43

def optimizedBody106_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_18 optimizedBody106_44

def optimizedBody106_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody106_0 optimizedBody106_45

def optimized106 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(106, 9, optimizedBody106_46)
end InitECandidate.Proofs.StackAnalysis
