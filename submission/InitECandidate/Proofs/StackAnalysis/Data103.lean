import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody103_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody103_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody103_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody103_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody103_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody103_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_3 optimizedBody103_4

def optimizedBody103_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_5

def optimizedBody103_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody103_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 12) optimizedBody103_6 optimizedBody103_7

def optimizedBody103_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody103_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody103_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody103_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_11 optimizedBody103_4

def optimizedBody103_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_12

def optimizedBody103_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody103_13 optimizedBody103_7

def optimizedBody103_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody103_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody103_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_16 optimizedBody103_4

def optimizedBody103_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_17

def optimizedBody103_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody103_18 optimizedBody103_7

def optimizedBody103_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody103_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8)]

def optimizedBody103_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_21 optimizedBody103_4

def optimizedBody103_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_22

def optimizedBody103_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody103_23 optimizedBody103_7

def optimizedBody103_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody103_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_25 optimizedBody103_5

def optimizedBody103_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_26

def optimizedBody103_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_27

def optimizedBody103_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_24 optimizedBody103_28

def optimizedBody103_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_20 optimizedBody103_29

def optimizedBody103_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_9 optimizedBody103_30

def optimizedBody103_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_31

def optimizedBody103_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_32

def optimizedBody103_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_19 optimizedBody103_33

def optimizedBody103_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_15 optimizedBody103_34

def optimizedBody103_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_9 optimizedBody103_35

def optimizedBody103_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_36

def optimizedBody103_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_37

def optimizedBody103_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_14 optimizedBody103_38

def optimizedBody103_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_10 optimizedBody103_39

def optimizedBody103_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_9 optimizedBody103_40

def optimizedBody103_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_41

def optimizedBody103_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_2 optimizedBody103_42

def optimizedBody103_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_8 optimizedBody103_43

def optimizedBody103_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_1 optimizedBody103_44

def optimizedBody103_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody103_0 optimizedBody103_45

def optimized103 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(103, 6, optimizedBody103_46)
end InitECandidate.Proofs.StackAnalysis
