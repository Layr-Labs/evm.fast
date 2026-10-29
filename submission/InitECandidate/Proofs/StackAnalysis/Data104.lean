import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody104_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (12, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody104_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody104_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody104_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody104_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody104_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody104_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_4 optimizedBody104_5

def optimizedBody104_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_3 optimizedBody104_6

def optimizedBody104_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_2 optimizedBody104_7

def optimizedBody104_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody104_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 2) optimizedBody104_8 optimizedBody104_9

def optimizedBody104_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 10), (8, 8), (6, 6), (4, 4), (2, 12)]

def optimizedBody104_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 12 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody104_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 0), (46, 12)]

def optimizedBody104_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody104_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody104_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody104_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_15 optimizedBody104_16

def optimizedBody104_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody104_14, 104, 2)) (some 103) ([2, 4, 6, 8, 10]) (some (2, optimizedBody104_17, 104, 3))

def optimizedBody104_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody104_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 4 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody104_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody104_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody104_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody104_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody104_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_4 optimizedBody104_24

def optimizedBody104_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_23 optimizedBody104_25

def optimizedBody104_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_22 optimizedBody104_26

def optimizedBody104_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_21 optimizedBody104_27

def optimizedBody104_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_20 optimizedBody104_28

def optimizedBody104_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_19 optimizedBody104_29

def optimizedBody104_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_2 optimizedBody104_30

def optimizedBody104_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_18 optimizedBody104_31

def optimizedBody104_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_13 optimizedBody104_32

def optimizedBody104_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_12 optimizedBody104_33

def optimizedBody104_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_11 optimizedBody104_34

def optimizedBody104_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_2 optimizedBody104_35

def optimizedBody104_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_2 optimizedBody104_36

def optimizedBody104_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_10 optimizedBody104_37

def optimizedBody104_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_1 optimizedBody104_38

def optimizedBody104_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody104_0 optimizedBody104_39

def optimized104 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(104, 6, optimizedBody104_40)
end InitECandidate.Proofs.StackAnalysis
