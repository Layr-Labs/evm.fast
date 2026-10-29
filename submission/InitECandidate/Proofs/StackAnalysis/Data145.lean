import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody145_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 0), (4, 4), (6, 6), (8, 8), (10, 10)]

def optimizedBody145_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody145_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody145_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody145_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody145_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody145_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_4 optimizedBody145_5

def optimizedBody145_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_3 optimizedBody145_6

def optimizedBody145_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_2 optimizedBody145_7

def optimizedBody145_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody145_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 2) optimizedBody145_8 optimizedBody145_9

def optimizedBody145_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 31#64)

def optimizedBody145_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody145_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody145_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody145_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 10), (6, 8), (4, 6), (2, 4)]

def optimizedBody145_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 12 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody145_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 0), (46, 12)]

def optimizedBody145_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody145_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody145_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody145_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_19 optimizedBody145_20

def optimizedBody145_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody145_18, 145, 2)) (some 103) ([2, 4, 6, 8, 10]) (some (2, optimizedBody145_21, 145, 3))

def optimizedBody145_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody145_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 4 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody145_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody145_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody145_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 0 (Flapjack.WordRegImm.imm 255#64)))

def optimizedBody145_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody145_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_4 optimizedBody145_28

def optimizedBody145_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_27 optimizedBody145_29

def optimizedBody145_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_26 optimizedBody145_30

def optimizedBody145_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_25 optimizedBody145_31

def optimizedBody145_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_24 optimizedBody145_32

def optimizedBody145_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_23 optimizedBody145_33

def optimizedBody145_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_2 optimizedBody145_34

def optimizedBody145_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_22 optimizedBody145_35

def optimizedBody145_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_17 optimizedBody145_36

def optimizedBody145_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_16 optimizedBody145_37

def optimizedBody145_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_15 optimizedBody145_38

def optimizedBody145_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_14 optimizedBody145_39

def optimizedBody145_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_13 optimizedBody145_40

def optimizedBody145_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_12 optimizedBody145_41

def optimizedBody145_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_11 optimizedBody145_42

def optimizedBody145_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_2 optimizedBody145_43

def optimizedBody145_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_2 optimizedBody145_44

def optimizedBody145_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_10 optimizedBody145_45

def optimizedBody145_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_1 optimizedBody145_46

def optimizedBody145_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody145_0 optimizedBody145_47

def optimized145 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(145, 6, optimizedBody145_48)
end InitECandidate.Proofs.StackAnalysis
