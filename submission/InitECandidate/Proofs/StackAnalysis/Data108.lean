import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody108_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (8, 8), (0, 0), (18, 2), (4, 4), (6, 6), (10, 10), (12, 12), (14, 14)]

def optimizedBody108_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody108_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (8, 8)]

def optimizedBody108_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody108_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody108_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody108_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_4 optimizedBody108_5

def optimizedBody108_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_3 optimizedBody108_6

def optimizedBody108_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_7

def optimizedBody108_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody108_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 16) optimizedBody108_8 optimizedBody108_9

def optimizedBody108_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody108_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_11 optimizedBody108_6

def optimizedBody108_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_12

def optimizedBody108_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_13

def optimizedBody108_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_10 optimizedBody108_14

def optimizedBody108_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_2 optimizedBody108_15

def optimizedBody108_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_16

def optimizedBody108_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 16) optimizedBody108_17 optimizedBody108_9

def optimizedBody108_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (6, 6)]

def optimizedBody108_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 14) optimizedBody108_8 optimizedBody108_9

def optimizedBody108_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_20 optimizedBody108_14

def optimizedBody108_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_19 optimizedBody108_21

def optimizedBody108_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_22

def optimizedBody108_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 14) optimizedBody108_23 optimizedBody108_9

def optimizedBody108_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (4, 4)]

def optimizedBody108_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 12) optimizedBody108_8 optimizedBody108_9

def optimizedBody108_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_26 optimizedBody108_14

def optimizedBody108_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_25 optimizedBody108_27

def optimizedBody108_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_28

def optimizedBody108_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 12) optimizedBody108_29 optimizedBody108_9

def optimizedBody108_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (18, 18)]

def optimizedBody108_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 10) optimizedBody108_8 optimizedBody108_9

def optimizedBody108_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_32 optimizedBody108_14

def optimizedBody108_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_31 optimizedBody108_33

def optimizedBody108_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_34

def optimizedBody108_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_35

def optimizedBody108_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_30 optimizedBody108_36

def optimizedBody108_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_25 optimizedBody108_37

def optimizedBody108_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_38

def optimizedBody108_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_39

def optimizedBody108_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_24 optimizedBody108_40

def optimizedBody108_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_19 optimizedBody108_41

def optimizedBody108_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_42

def optimizedBody108_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_1 optimizedBody108_43

def optimizedBody108_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_18 optimizedBody108_44

def optimizedBody108_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody108_0 optimizedBody108_45

def optimized108 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(108, 9, optimizedBody108_46)
end InitECandidate.Proofs.StackAnalysis
