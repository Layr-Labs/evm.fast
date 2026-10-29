import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody436_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody436_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody436_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody436_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody436_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody436_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody436_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_4 optimizedBody436_5

def optimizedBody436_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody436_3, 436, 2)) (some 74) ([2]) (some (2, optimizedBody436_6, 436, 3))

def optimizedBody436_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody436_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (46, 4)]

def optimizedBody436_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody436_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 8)]

def optimizedBody436_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody436_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody436_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_13 optimizedBody436_5

def optimizedBody436_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody436_12, 436, 4)) (some 74) ([2]) (some (2, optimizedBody436_14, 436, 5))

def optimizedBody436_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody436_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody436_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody436_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody436_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody436_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody436_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody436_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody436_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody436_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody436_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody436_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody436_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_26 optimizedBody436_27

def optimizedBody436_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_25 optimizedBody436_28

def optimizedBody436_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_24 optimizedBody436_29

def optimizedBody436_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_23 optimizedBody436_30

def optimizedBody436_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_18 optimizedBody436_31

def optimizedBody436_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_22 optimizedBody436_32

def optimizedBody436_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_21 optimizedBody436_33

def optimizedBody436_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_20 optimizedBody436_34

def optimizedBody436_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_19 optimizedBody436_35

def optimizedBody436_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_18 optimizedBody436_36

def optimizedBody436_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_17 optimizedBody436_37

def optimizedBody436_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_16 optimizedBody436_38

def optimizedBody436_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_8 optimizedBody436_39

def optimizedBody436_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_15 optimizedBody436_40

def optimizedBody436_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_11 optimizedBody436_41

def optimizedBody436_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_10 optimizedBody436_42

def optimizedBody436_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_9 optimizedBody436_43

def optimizedBody436_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_8 optimizedBody436_44

def optimizedBody436_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_7 optimizedBody436_45

def optimizedBody436_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_2 optimizedBody436_46

def optimizedBody436_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_1 optimizedBody436_47

def optimizedBody436_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody436_0 optimizedBody436_48

def optimized436 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(436, 3, optimizedBody436_49)
end InitECandidate.Proofs.StackAnalysis
