import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody84_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody84_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody84_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 71777214294589695#64)

def optimizedBody84_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody84_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody84_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody84_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody84_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody84_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody84_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 281470681808895#64)

def optimizedBody84_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody84_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody84_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody84_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody84_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_4 optimizedBody84_13

def optimizedBody84_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_7 optimizedBody84_14

def optimizedBody84_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_12 optimizedBody84_15

def optimizedBody84_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_4 optimizedBody84_16

def optimizedBody84_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_11 optimizedBody84_17

def optimizedBody84_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_4 optimizedBody84_18

def optimizedBody84_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_7 optimizedBody84_19

def optimizedBody84_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_10 optimizedBody84_20

def optimizedBody84_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_5 optimizedBody84_21

def optimizedBody84_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_9 optimizedBody84_22

def optimizedBody84_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_4 optimizedBody84_23

def optimizedBody84_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_3 optimizedBody84_24

def optimizedBody84_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_9 optimizedBody84_25

def optimizedBody84_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_8 optimizedBody84_26

def optimizedBody84_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_4 optimizedBody84_27

def optimizedBody84_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_7 optimizedBody84_28

def optimizedBody84_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_6 optimizedBody84_29

def optimizedBody84_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_5 optimizedBody84_30

def optimizedBody84_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_2 optimizedBody84_31

def optimizedBody84_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_4 optimizedBody84_32

def optimizedBody84_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_3 optimizedBody84_33

def optimizedBody84_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_2 optimizedBody84_34

def optimizedBody84_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_1 optimizedBody84_35

def optimizedBody84_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody84_0 optimizedBody84_36

def optimized84 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(84, 2, optimizedBody84_37)
end InitECandidate.Proofs.StackAnalysis
