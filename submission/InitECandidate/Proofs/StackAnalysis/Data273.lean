import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody273_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody273_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody273_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody273_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody273_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody273_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody273_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody273_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody273_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 2), (8, 44)]

def optimizedBody273_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44)]

def optimizedBody273_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody273_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_9 optimizedBody273_10

def optimizedBody273_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody273_8, 273, 2)) (some 161) ([2, 4]) (some (2, optimizedBody273_11, 273, 3))

def optimizedBody273_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody273_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody273_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody273_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 8#64)

def optimizedBody273_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody273_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody273_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody273_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_19 optimizedBody273_10

def optimizedBody273_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_18 optimizedBody273_20

def optimizedBody273_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_17 optimizedBody273_21

def optimizedBody273_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_14 optimizedBody273_22

def optimizedBody273_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_16 optimizedBody273_23

def optimizedBody273_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_13 optimizedBody273_24

def optimizedBody273_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody273_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody273_25 optimizedBody273_26

def optimizedBody273_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (4, 6)]

def optimizedBody273_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody273_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_28 optimizedBody273_29

def optimizedBody273_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_13 optimizedBody273_30

def optimizedBody273_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_13 optimizedBody273_31

def optimizedBody273_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_27 optimizedBody273_32

def optimizedBody273_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_15 optimizedBody273_33

def optimizedBody273_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_14 optimizedBody273_34

def optimizedBody273_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_13 optimizedBody273_35

def optimizedBody273_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_12 optimizedBody273_36

def optimizedBody273_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_7 optimizedBody273_37

def optimizedBody273_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_6 optimizedBody273_38

def optimizedBody273_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_5 optimizedBody273_39

def optimizedBody273_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_4 optimizedBody273_40

def optimizedBody273_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_3 optimizedBody273_41

def optimizedBody273_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_2 optimizedBody273_42

def optimizedBody273_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_1 optimizedBody273_43

def optimizedBody273_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody273_0 optimizedBody273_44

def optimized273 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(273, 3, optimizedBody273_45)
end InitECandidate.Proofs.StackAnalysis
