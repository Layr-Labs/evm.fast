import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody628_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody628_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody628_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody628_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody628_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody628_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody628_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_4 optimizedBody628_5

def optimizedBody628_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_3 optimizedBody628_6

def optimizedBody628_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_7

def optimizedBody628_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody628_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody628_8 optimizedBody628_9

def optimizedBody628_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody628_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody628_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1518500249#64)

def optimizedBody628_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_13 optimizedBody628_6

def optimizedBody628_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_14

def optimizedBody628_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody628_15 optimizedBody628_9

def optimizedBody628_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody628_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1859775393#64)

def optimizedBody628_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_18 optimizedBody628_6

def optimizedBody628_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_19

def optimizedBody628_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody628_20 optimizedBody628_9

def optimizedBody628_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody628_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2400959708#64)

def optimizedBody628_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_23 optimizedBody628_6

def optimizedBody628_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_24

def optimizedBody628_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody628_25 optimizedBody628_9

def optimizedBody628_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2840853838#64)

def optimizedBody628_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_27 optimizedBody628_6

def optimizedBody628_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_28

def optimizedBody628_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_29

def optimizedBody628_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_26 optimizedBody628_30

def optimizedBody628_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_22 optimizedBody628_31

def optimizedBody628_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_11 optimizedBody628_32

def optimizedBody628_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_33

def optimizedBody628_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_34

def optimizedBody628_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_21 optimizedBody628_35

def optimizedBody628_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_17 optimizedBody628_36

def optimizedBody628_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_11 optimizedBody628_37

def optimizedBody628_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_38

def optimizedBody628_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_39

def optimizedBody628_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_16 optimizedBody628_40

def optimizedBody628_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_12 optimizedBody628_41

def optimizedBody628_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_11 optimizedBody628_42

def optimizedBody628_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_43

def optimizedBody628_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_44

def optimizedBody628_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_10 optimizedBody628_45

def optimizedBody628_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_1 optimizedBody628_46

def optimizedBody628_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_47

def optimized628 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(628, 2, optimizedBody628_48)
end InitECandidate.Proofs.StackAnalysis
