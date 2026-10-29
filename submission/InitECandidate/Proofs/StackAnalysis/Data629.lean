import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody629_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody629_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody629_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody629_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1352829926#64)

def optimizedBody629_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody629_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody629_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_4 optimizedBody629_5

def optimizedBody629_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_3 optimizedBody629_6

def optimizedBody629_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_7

def optimizedBody629_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody629_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody629_8 optimizedBody629_9

def optimizedBody629_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody629_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody629_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1548603684#64)

def optimizedBody629_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_13 optimizedBody629_6

def optimizedBody629_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_14

def optimizedBody629_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody629_15 optimizedBody629_9

def optimizedBody629_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody629_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1836072691#64)

def optimizedBody629_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_18 optimizedBody629_6

def optimizedBody629_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_19

def optimizedBody629_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody629_20 optimizedBody629_9

def optimizedBody629_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody629_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2053994217#64)

def optimizedBody629_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_23 optimizedBody629_6

def optimizedBody629_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_24

def optimizedBody629_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody629_25 optimizedBody629_9

def optimizedBody629_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody629_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_27 optimizedBody629_6

def optimizedBody629_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_28

def optimizedBody629_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_29

def optimizedBody629_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_26 optimizedBody629_30

def optimizedBody629_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_22 optimizedBody629_31

def optimizedBody629_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_11 optimizedBody629_32

def optimizedBody629_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_33

def optimizedBody629_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_34

def optimizedBody629_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_21 optimizedBody629_35

def optimizedBody629_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_17 optimizedBody629_36

def optimizedBody629_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_11 optimizedBody629_37

def optimizedBody629_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_38

def optimizedBody629_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_39

def optimizedBody629_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_16 optimizedBody629_40

def optimizedBody629_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_12 optimizedBody629_41

def optimizedBody629_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_11 optimizedBody629_42

def optimizedBody629_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_43

def optimizedBody629_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_2 optimizedBody629_44

def optimizedBody629_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_10 optimizedBody629_45

def optimizedBody629_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_1 optimizedBody629_46

def optimizedBody629_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody629_0 optimizedBody629_47

def optimized629 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(629, 2, optimizedBody629_48)
end InitECandidate.Proofs.StackAnalysis
