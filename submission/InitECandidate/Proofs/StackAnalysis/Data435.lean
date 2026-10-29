import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody435_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody435_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody435_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody435_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody435_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody435_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody435_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_4 optimizedBody435_5

def optimizedBody435_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody435_3, 435, 2)) (some 68) ([2]) (some (2, optimizedBody435_6, 435, 3))

def optimizedBody435_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody435_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (46, 4)]

def optimizedBody435_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody435_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 8)]

def optimizedBody435_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody435_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody435_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_13 optimizedBody435_5

def optimizedBody435_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody435_12, 435, 4)) (some 68) ([2]) (some (2, optimizedBody435_14, 435, 5))

def optimizedBody435_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody435_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody435_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody435_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody435_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody435_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody435_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody435_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody435_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody435_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody435_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody435_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody435_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_26 optimizedBody435_27

def optimizedBody435_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_25 optimizedBody435_28

def optimizedBody435_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_24 optimizedBody435_29

def optimizedBody435_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_23 optimizedBody435_30

def optimizedBody435_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_18 optimizedBody435_31

def optimizedBody435_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_22 optimizedBody435_32

def optimizedBody435_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_21 optimizedBody435_33

def optimizedBody435_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_20 optimizedBody435_34

def optimizedBody435_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_19 optimizedBody435_35

def optimizedBody435_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_18 optimizedBody435_36

def optimizedBody435_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_17 optimizedBody435_37

def optimizedBody435_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_16 optimizedBody435_38

def optimizedBody435_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_8 optimizedBody435_39

def optimizedBody435_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_40

def optimizedBody435_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_11 optimizedBody435_41

def optimizedBody435_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_10 optimizedBody435_42

def optimizedBody435_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_9 optimizedBody435_43

def optimizedBody435_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_8 optimizedBody435_44

def optimizedBody435_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_7 optimizedBody435_45

def optimizedBody435_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_2 optimizedBody435_46

def optimizedBody435_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_1 optimizedBody435_47

def optimizedBody435_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_0 optimizedBody435_48

def optimized435 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(435, 3, optimizedBody435_49)
end InitECandidate.Proofs.StackAnalysis
