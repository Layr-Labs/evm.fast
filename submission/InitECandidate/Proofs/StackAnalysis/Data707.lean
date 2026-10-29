import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody707_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 24), (12, 12), (0, 0), (26, 2), (4, 4), (6, 6), (8, 8), (10, 10), (14, 14), (16, 16), (18, 18), (20, 20),
    (22, 22)]

def optimizedBody707_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody707_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (12, 12)]

def optimizedBody707_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody707_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody707_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody707_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_4 optimizedBody707_5

def optimizedBody707_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_3 optimizedBody707_6

def optimizedBody707_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_7

def optimizedBody707_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody707_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 24) optimizedBody707_8 optimizedBody707_9

def optimizedBody707_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody707_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_11 optimizedBody707_6

def optimizedBody707_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_12

def optimizedBody707_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_13

def optimizedBody707_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_10 optimizedBody707_14

def optimizedBody707_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_2 optimizedBody707_15

def optimizedBody707_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_16

def optimizedBody707_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 24) optimizedBody707_17 optimizedBody707_9

def optimizedBody707_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (10, 10)]

def optimizedBody707_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 22) optimizedBody707_8 optimizedBody707_9

def optimizedBody707_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_20 optimizedBody707_14

def optimizedBody707_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_19 optimizedBody707_21

def optimizedBody707_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_22

def optimizedBody707_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 22) optimizedBody707_23 optimizedBody707_9

def optimizedBody707_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (8, 8)]

def optimizedBody707_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 20) optimizedBody707_8 optimizedBody707_9

def optimizedBody707_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_26 optimizedBody707_14

def optimizedBody707_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_25 optimizedBody707_27

def optimizedBody707_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_28

def optimizedBody707_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 20) optimizedBody707_29 optimizedBody707_9

def optimizedBody707_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (6, 6)]

def optimizedBody707_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 18) optimizedBody707_8 optimizedBody707_9

def optimizedBody707_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_32 optimizedBody707_14

def optimizedBody707_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_31 optimizedBody707_33

def optimizedBody707_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_34

def optimizedBody707_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 18) optimizedBody707_35 optimizedBody707_9

def optimizedBody707_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (4, 4)]

def optimizedBody707_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 16) optimizedBody707_8 optimizedBody707_9

def optimizedBody707_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_38 optimizedBody707_14

def optimizedBody707_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_37 optimizedBody707_39

def optimizedBody707_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_40

def optimizedBody707_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 16) optimizedBody707_41 optimizedBody707_9

def optimizedBody707_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (26, 26)]

def optimizedBody707_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 14) optimizedBody707_8 optimizedBody707_9

def optimizedBody707_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_44 optimizedBody707_14

def optimizedBody707_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_43 optimizedBody707_45

def optimizedBody707_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_46

def optimizedBody707_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_47

def optimizedBody707_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_42 optimizedBody707_48

def optimizedBody707_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_37 optimizedBody707_49

def optimizedBody707_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_50

def optimizedBody707_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_51

def optimizedBody707_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_36 optimizedBody707_52

def optimizedBody707_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_31 optimizedBody707_53

def optimizedBody707_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_54

def optimizedBody707_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_55

def optimizedBody707_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_30 optimizedBody707_56

def optimizedBody707_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_25 optimizedBody707_57

def optimizedBody707_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_58

def optimizedBody707_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_59

def optimizedBody707_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_24 optimizedBody707_60

def optimizedBody707_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_19 optimizedBody707_61

def optimizedBody707_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_62

def optimizedBody707_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_1 optimizedBody707_63

def optimizedBody707_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_18 optimizedBody707_64

def optimizedBody707_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_0 optimizedBody707_65

def optimized707 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(707, 13, optimizedBody707_66)
end InitECandidate.Proofs.StackAnalysis
