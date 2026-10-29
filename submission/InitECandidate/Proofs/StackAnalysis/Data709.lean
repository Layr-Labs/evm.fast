import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody709_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 14), (2, 2), (26, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody709_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 14 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody709_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody709_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody709_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 2 2 14 0))

def optimizedBody709_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (4, 4), (2, 2), (0, 0)]

def optimizedBody709_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 16 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody709_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 4 4 14 0))

def optimizedBody709_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (6, 6), (4, 4), (0, 0)]

def optimizedBody709_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 18 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody709_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 6 6 14 0))

def optimizedBody709_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (8, 8), (6, 6), (0, 0)]

def optimizedBody709_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 20 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody709_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 8 8 14 0))

def optimizedBody709_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(22, 22), (10, 10), (8, 8), (0, 0)]

def optimizedBody709_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 22 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody709_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 10 10 14 0))

def optimizedBody709_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(24, 24), (12, 12), (10, 10), (0, 0)]

def optimizedBody709_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 24 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody709_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 12 12 14 0))

def optimizedBody709_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 0)]

def optimizedBody709_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 26 [2, 4, 6, 8, 10, 12, 14]

def optimizedBody709_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_20 optimizedBody709_21

def optimizedBody709_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_19 optimizedBody709_22

def optimizedBody709_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_3 optimizedBody709_23

def optimizedBody709_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_18 optimizedBody709_24

def optimizedBody709_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_17 optimizedBody709_25

def optimizedBody709_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_16 optimizedBody709_26

def optimizedBody709_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_3 optimizedBody709_27

def optimizedBody709_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_15 optimizedBody709_28

def optimizedBody709_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_14 optimizedBody709_29

def optimizedBody709_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_13 optimizedBody709_30

def optimizedBody709_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_3 optimizedBody709_31

def optimizedBody709_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_12 optimizedBody709_32

def optimizedBody709_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_11 optimizedBody709_33

def optimizedBody709_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_10 optimizedBody709_34

def optimizedBody709_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_3 optimizedBody709_35

def optimizedBody709_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_9 optimizedBody709_36

def optimizedBody709_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_8 optimizedBody709_37

def optimizedBody709_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_7 optimizedBody709_38

def optimizedBody709_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_3 optimizedBody709_39

def optimizedBody709_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_6 optimizedBody709_40

def optimizedBody709_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_5 optimizedBody709_41

def optimizedBody709_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_4 optimizedBody709_42

def optimizedBody709_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_3 optimizedBody709_43

def optimizedBody709_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_2 optimizedBody709_44

def optimizedBody709_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_1 optimizedBody709_45

def optimizedBody709_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody709_0 optimizedBody709_46

def optimized709 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(709, 13, optimizedBody709_47)
end InitECandidate.Proofs.StackAnalysis
