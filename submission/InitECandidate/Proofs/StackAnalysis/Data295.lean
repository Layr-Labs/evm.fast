import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody295_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody295_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody295_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody295_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody295_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody295_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody295_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_4 optimizedBody295_5

def optimizedBody295_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody295_3, 295, 2)) (some 68) ([2]) (some (2, optimizedBody295_6, 295, 3))

def optimizedBody295_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody295_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody295_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody295_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody295_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody295_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody295_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody295_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody295_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody295_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody295_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody295_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody295_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody295_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody295_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_20 optimizedBody295_21

def optimizedBody295_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_19 optimizedBody295_22

def optimizedBody295_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_18 optimizedBody295_23

def optimizedBody295_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_17 optimizedBody295_24

def optimizedBody295_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_9 optimizedBody295_25

def optimizedBody295_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_15 optimizedBody295_26

def optimizedBody295_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_14 optimizedBody295_27

def optimizedBody295_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_13 optimizedBody295_28

def optimizedBody295_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_16 optimizedBody295_29

def optimizedBody295_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_9 optimizedBody295_30

def optimizedBody295_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_15 optimizedBody295_31

def optimizedBody295_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_14 optimizedBody295_32

def optimizedBody295_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_13 optimizedBody295_33

def optimizedBody295_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_12 optimizedBody295_34

def optimizedBody295_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_9 optimizedBody295_35

def optimizedBody295_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_11 optimizedBody295_36

def optimizedBody295_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_9 optimizedBody295_37

def optimizedBody295_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_10 optimizedBody295_38

def optimizedBody295_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_9 optimizedBody295_39

def optimizedBody295_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_8 optimizedBody295_40

def optimizedBody295_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_7 optimizedBody295_41

def optimizedBody295_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_2 optimizedBody295_42

def optimizedBody295_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_1 optimizedBody295_43

def optimizedBody295_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody295_0 optimizedBody295_44

def optimized295 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(295, 2, optimizedBody295_45)
end InitECandidate.Proofs.StackAnalysis
