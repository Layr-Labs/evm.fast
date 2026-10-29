import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody91_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody91_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody91_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody91_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (6, 6), (2, 2)]

def optimizedBody91_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody91_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody91_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody91_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody91_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody91_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 2688614400#64)

def optimizedBody91_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody91_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 8 (Flapjack.WordLangExpHOL.var 10)

def optimizedBody91_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody91_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody91_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (2, 2)]

def optimizedBody91_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody91_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_14 optimizedBody91_15

def optimizedBody91_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_13 optimizedBody91_16

def optimizedBody91_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_12 optimizedBody91_17

def optimizedBody91_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_11 optimizedBody91_18

def optimizedBody91_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_10 optimizedBody91_19

def optimizedBody91_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_9 optimizedBody91_20

def optimizedBody91_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_8 optimizedBody91_21

def optimizedBody91_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_7 optimizedBody91_22

def optimizedBody91_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_6 optimizedBody91_23

def optimizedBody91_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_5 optimizedBody91_24

def optimizedBody91_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_2 optimizedBody91_25

def optimizedBody91_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody91_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_2 optimizedBody91_27

def optimizedBody91_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody91_26 optimizedBody91_28

def optimizedBody91_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_2 optimizedBody91_14

def optimizedBody91_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_29 optimizedBody91_30

def optimizedBody91_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_4 optimizedBody91_31

def optimizedBody91_33 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln) optimizedBody91_32 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody91_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody91_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody91_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody91_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_35 optimizedBody91_36

def optimizedBody91_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_34 optimizedBody91_37

def optimizedBody91_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_2 optimizedBody91_38

def optimizedBody91_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_33 optimizedBody91_39

def optimizedBody91_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_3 optimizedBody91_40

def optimizedBody91_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_2 optimizedBody91_41

def optimizedBody91_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_1 optimizedBody91_42

def optimizedBody91_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody91_0 optimizedBody91_43

def optimized91 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(91, 3, optimizedBody91_44)
end InitECandidate.Proofs.StackAnalysis
