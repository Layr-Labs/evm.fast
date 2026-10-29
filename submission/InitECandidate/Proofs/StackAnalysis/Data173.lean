import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody173_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0), (2, 2), (4, 4)]

def optimizedBody173_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody173_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 2), (8, 6), (6, 6)]

def optimizedBody173_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody173_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody173_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody173_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody173_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody173_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody173_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody173_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody173_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (8, 8)]

def optimizedBody173_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody173_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_11 optimizedBody173_12

def optimizedBody173_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_10 optimizedBody173_13

def optimizedBody173_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_8 optimizedBody173_14

def optimizedBody173_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_9 optimizedBody173_15

def optimizedBody173_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_8 optimizedBody173_16

def optimizedBody173_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_7 optimizedBody173_17

def optimizedBody173_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_6 optimizedBody173_18

def optimizedBody173_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_5 optimizedBody173_19

def optimizedBody173_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_4 optimizedBody173_20

def optimizedBody173_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_1 optimizedBody173_21

def optimizedBody173_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody173_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_1 optimizedBody173_23

def optimizedBody173_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) optimizedBody173_22 optimizedBody173_24

def optimizedBody173_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_1 optimizedBody173_11

def optimizedBody173_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_25 optimizedBody173_26

def optimizedBody173_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_4 optimizedBody173_27

def optimizedBody173_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_3 optimizedBody173_28

def optimizedBody173_30 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody173_29 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody173_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody173_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody173_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody173_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_32 optimizedBody173_33

def optimizedBody173_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_31 optimizedBody173_34

def optimizedBody173_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_1 optimizedBody173_35

def optimizedBody173_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_30 optimizedBody173_36

def optimizedBody173_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_2 optimizedBody173_37

def optimizedBody173_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_1 optimizedBody173_38

def optimizedBody173_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody173_0 optimizedBody173_39

def optimized173 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(173, 4, optimizedBody173_40)
end InitECandidate.Proofs.StackAnalysis
