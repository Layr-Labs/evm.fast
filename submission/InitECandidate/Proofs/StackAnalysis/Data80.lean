import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody80_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody80_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody80_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody80_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (8, 2), (6, 6)]

def optimizedBody80_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody80_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody80_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody80_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody80_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody80_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody80_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody80_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody80_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_8 optimizedBody80_11

def optimizedBody80_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_10 optimizedBody80_12

def optimizedBody80_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_2 optimizedBody80_13

def optimizedBody80_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody80_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 10) optimizedBody80_14 optimizedBody80_15

def optimizedBody80_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody80_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody80_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (6, 6)]

def optimizedBody80_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody80_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_19 optimizedBody80_20

def optimizedBody80_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_18 optimizedBody80_21

def optimizedBody80_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_17 optimizedBody80_22

def optimizedBody80_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_2 optimizedBody80_23

def optimizedBody80_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_2 optimizedBody80_24

def optimizedBody80_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_16 optimizedBody80_25

def optimizedBody80_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_9 optimizedBody80_26

def optimizedBody80_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_8 optimizedBody80_27

def optimizedBody80_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_7 optimizedBody80_28

def optimizedBody80_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_6 optimizedBody80_29

def optimizedBody80_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_5 optimizedBody80_30

def optimizedBody80_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_2 optimizedBody80_31

def optimizedBody80_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody80_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_2 optimizedBody80_33

def optimizedBody80_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody80_32 optimizedBody80_34

def optimizedBody80_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_2 optimizedBody80_19

def optimizedBody80_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_35 optimizedBody80_36

def optimizedBody80_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_4 optimizedBody80_37

def optimizedBody80_39 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody80_38 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody80_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody80_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_40 optimizedBody80_12

def optimizedBody80_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_2 optimizedBody80_41

def optimizedBody80_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_39 optimizedBody80_42

def optimizedBody80_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_3 optimizedBody80_43

def optimizedBody80_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_2 optimizedBody80_44

def optimizedBody80_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_1 optimizedBody80_45

def optimizedBody80_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody80_0 optimizedBody80_46

def optimized80 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(80, 3, optimizedBody80_47)
end InitECandidate.Proofs.StackAnalysis
