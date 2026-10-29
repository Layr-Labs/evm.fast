import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody341_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody341_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody341_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody341_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody341_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody341_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody341_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody341_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody341_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 2), (8, 44)]

def optimizedBody341_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44)]

def optimizedBody341_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody341_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_9 optimizedBody341_10

def optimizedBody341_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody341_8, 341, 2)) (some 161) ([2, 4]) (some (2, optimizedBody341_11, 341, 3))

def optimizedBody341_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody341_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody341_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody341_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 18#64)

def optimizedBody341_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody341_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody341_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody341_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_19 optimizedBody341_10

def optimizedBody341_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_18 optimizedBody341_20

def optimizedBody341_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_17 optimizedBody341_21

def optimizedBody341_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_14 optimizedBody341_22

def optimizedBody341_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_16 optimizedBody341_23

def optimizedBody341_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_13 optimizedBody341_24

def optimizedBody341_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody341_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody341_25 optimizedBody341_26

def optimizedBody341_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (4, 6)]

def optimizedBody341_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody341_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_28 optimizedBody341_29

def optimizedBody341_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_13 optimizedBody341_30

def optimizedBody341_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_13 optimizedBody341_31

def optimizedBody341_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_27 optimizedBody341_32

def optimizedBody341_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_15 optimizedBody341_33

def optimizedBody341_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_14 optimizedBody341_34

def optimizedBody341_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_13 optimizedBody341_35

def optimizedBody341_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_12 optimizedBody341_36

def optimizedBody341_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_7 optimizedBody341_37

def optimizedBody341_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_6 optimizedBody341_38

def optimizedBody341_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_5 optimizedBody341_39

def optimizedBody341_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_4 optimizedBody341_40

def optimizedBody341_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_3 optimizedBody341_41

def optimizedBody341_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_2 optimizedBody341_42

def optimizedBody341_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_1 optimizedBody341_43

def optimizedBody341_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody341_0 optimizedBody341_44

def optimized341 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(341, 3, optimizedBody341_45)
end InitECandidate.Proofs.StackAnalysis
