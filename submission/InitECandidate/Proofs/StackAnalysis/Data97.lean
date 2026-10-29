import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody97_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody97_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody97_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody97_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2), (4, 4)]

def optimizedBody97_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody97_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (4, 4)]

def optimizedBody97_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody97_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody97_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody97_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody97_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4)]

def optimizedBody97_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody97_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_10 optimizedBody97_11

def optimizedBody97_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_9 optimizedBody97_12

def optimizedBody97_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_8 optimizedBody97_13

def optimizedBody97_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_2 optimizedBody97_14

def optimizedBody97_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody97_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody97_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_16 optimizedBody97_17

def optimizedBody97_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_2 optimizedBody97_18

def optimizedBody97_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 2) optimizedBody97_15 optimizedBody97_19

def optimizedBody97_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_2 optimizedBody97_10

def optimizedBody97_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_20 optimizedBody97_21

def optimizedBody97_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_7 optimizedBody97_22

def optimizedBody97_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_6 optimizedBody97_23

def optimizedBody97_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_5 optimizedBody97_24

def optimizedBody97_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_4 optimizedBody97_25

def optimizedBody97_27 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln) optimizedBody97_26 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def optimizedBody97_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody97_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody97_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_28 optimizedBody97_29

def optimizedBody97_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_2 optimizedBody97_30

def optimizedBody97_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_27 optimizedBody97_31

def optimizedBody97_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_3 optimizedBody97_32

def optimizedBody97_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_2 optimizedBody97_33

def optimizedBody97_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_1 optimizedBody97_34

def optimizedBody97_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody97_0 optimizedBody97_35

def optimized97 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(97, 2, optimizedBody97_36)
end InitECandidate.Proofs.StackAnalysis
