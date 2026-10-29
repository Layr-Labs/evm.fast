import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody282_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (0, 0), (6, 2)]

def optimizedBody282_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1024#64)

def optimizedBody282_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2), (48, 6)]

def optimizedBody282_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody282_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody282_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody282_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_4 optimizedBody282_5

def optimizedBody282_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody282_3, 282, 2)) (some 95) ([2, 4]) (some (2, optimizedBody282_6, 282, 3))

def optimizedBody282_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody282_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6), (0, 0)]

def optimizedBody282_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody282_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody282_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody282_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody282_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_12 optimizedBody282_13

def optimizedBody282_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_11 optimizedBody282_14

def optimizedBody282_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_8 optimizedBody282_15

def optimizedBody282_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody282_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody282_16 optimizedBody282_17

def optimizedBody282_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6), (4, 4)]

def optimizedBody282_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody282_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody282_16 optimizedBody282_17

def optimizedBody282_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody282_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5000#64)

def optimizedBody282_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody282_16 optimizedBody282_17

def optimizedBody282_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody282_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_25 optimizedBody282_14

def optimizedBody282_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_8 optimizedBody282_26

def optimizedBody282_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_8 optimizedBody282_27

def optimizedBody282_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_24 optimizedBody282_28

def optimizedBody282_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_23 optimizedBody282_29

def optimizedBody282_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_22 optimizedBody282_30

def optimizedBody282_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_8 optimizedBody282_31

def optimizedBody282_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_8 optimizedBody282_32

def optimizedBody282_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_21 optimizedBody282_33

def optimizedBody282_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_20 optimizedBody282_34

def optimizedBody282_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_19 optimizedBody282_35

def optimizedBody282_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_8 optimizedBody282_36

def optimizedBody282_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_8 optimizedBody282_37

def optimizedBody282_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_18 optimizedBody282_38

def optimizedBody282_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_10 optimizedBody282_39

def optimizedBody282_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_9 optimizedBody282_40

def optimizedBody282_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_8 optimizedBody282_41

def optimizedBody282_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_7 optimizedBody282_42

def optimizedBody282_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_2 optimizedBody282_43

def optimizedBody282_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_1 optimizedBody282_44

def optimizedBody282_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody282_0 optimizedBody282_45

def optimized282 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(282, 3, optimizedBody282_46)
end InitECandidate.Proofs.StackAnalysis
