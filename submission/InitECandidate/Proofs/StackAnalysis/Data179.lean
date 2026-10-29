import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody179_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody179_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody179_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody179_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody179_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_1 optimizedBody179_3

def optimizedBody179_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_2 optimizedBody179_4

def optimizedBody179_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody179_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_6 optimizedBody179_3

def optimizedBody179_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_2 optimizedBody179_7

def optimizedBody179_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody179_5 optimizedBody179_8

def optimizedBody179_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody179_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody179_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody179_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody179_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_12 optimizedBody179_13

def optimizedBody179_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_2 optimizedBody179_14

def optimizedBody179_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody179_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_16 optimizedBody179_13

def optimizedBody179_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_2 optimizedBody179_17

def optimizedBody179_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 8) optimizedBody179_15 optimizedBody179_18

def optimizedBody179_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody179_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody179_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody179_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_10 optimizedBody179_22

def optimizedBody179_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_12 optimizedBody179_23

def optimizedBody179_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody179_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody179_24 optimizedBody179_25

def optimizedBody179_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0), (46, 4)]

def optimizedBody179_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46)]

def optimizedBody179_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody179_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody179_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_29 optimizedBody179_30

def optimizedBody179_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody179_28, 179, 2)) (some 175) ([2]) (some (2, optimizedBody179_31, 179, 3))

def optimizedBody179_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody179_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody179_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody179_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_10 optimizedBody179_35

def optimizedBody179_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_34 optimizedBody179_36

def optimizedBody179_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_33 optimizedBody179_37

def optimizedBody179_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_2 optimizedBody179_38

def optimizedBody179_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_32 optimizedBody179_39

def optimizedBody179_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_27 optimizedBody179_40

def optimizedBody179_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_2 optimizedBody179_41

def optimizedBody179_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_26 optimizedBody179_42

def optimizedBody179_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_21 optimizedBody179_43

def optimizedBody179_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_20 optimizedBody179_44

def optimizedBody179_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_2 optimizedBody179_45

def optimizedBody179_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_19 optimizedBody179_46

def optimizedBody179_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_11 optimizedBody179_47

def optimizedBody179_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_10 optimizedBody179_48

def optimizedBody179_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_2 optimizedBody179_49

def optimizedBody179_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_9 optimizedBody179_50

def optimizedBody179_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_1 optimizedBody179_51

def optimizedBody179_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody179_0 optimizedBody179_52

def optimized179 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(179, 3, optimizedBody179_53)
end InitECandidate.Proofs.StackAnalysis
