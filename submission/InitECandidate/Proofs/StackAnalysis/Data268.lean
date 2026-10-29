import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody268_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0), (12, 6), (8, 8), (10, 10)]

def optimizedBody268_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody268_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8), (48, 2), (50, 10), (52, 12)]

def optimizedBody268_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (48, 50), (6, 52)]

def optimizedBody268_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (48, 50), (6, 52)]

def optimizedBody268_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody268_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_4 optimizedBody268_5

def optimizedBody268_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody268_3, 268, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody268_6, 268, 3))

def optimizedBody268_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody268_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody268_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody268_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody268_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody268_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 33#64)))

def optimizedBody268_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48)]

def optimizedBody268_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46), (0, 48)]

def optimizedBody268_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46), (0, 48)]

def optimizedBody268_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_16 optimizedBody268_5

def optimizedBody268_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody268_15, 268, 4)) (some 87) ([2, 4]) (some (2, optimizedBody268_17, 268, 5))

def optimizedBody268_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody268_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 41#64)))

def optimizedBody268_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 0 (Flapjack.WordRegImm.imm 255#64)))

def optimizedBody268_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody268_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 42#64)))

def optimizedBody268_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody268_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody268_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 43#64)

def optimizedBody268_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody268_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody268_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_27 optimizedBody268_28

def optimizedBody268_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_26 optimizedBody268_29

def optimizedBody268_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_25 optimizedBody268_30

def optimizedBody268_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_24 optimizedBody268_31

def optimizedBody268_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_9 optimizedBody268_32

def optimizedBody268_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_23 optimizedBody268_33

def optimizedBody268_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_19 optimizedBody268_34

def optimizedBody268_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_22 optimizedBody268_35

def optimizedBody268_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_21 optimizedBody268_36

def optimizedBody268_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_9 optimizedBody268_37

def optimizedBody268_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_20 optimizedBody268_38

def optimizedBody268_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_19 optimizedBody268_39

def optimizedBody268_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_8 optimizedBody268_40

def optimizedBody268_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_18 optimizedBody268_41

def optimizedBody268_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_14 optimizedBody268_42

def optimizedBody268_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_13 optimizedBody268_43

def optimizedBody268_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_9 optimizedBody268_44

def optimizedBody268_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_12 optimizedBody268_45

def optimizedBody268_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_11 optimizedBody268_46

def optimizedBody268_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_10 optimizedBody268_47

def optimizedBody268_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_9 optimizedBody268_48

def optimizedBody268_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_8 optimizedBody268_49

def optimizedBody268_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_7 optimizedBody268_50

def optimizedBody268_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_2 optimizedBody268_51

def optimizedBody268_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_1 optimizedBody268_52

def optimizedBody268_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody268_0 optimizedBody268_53

def optimized268 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(268, 6, optimizedBody268_54)
end InitECandidate.Proofs.StackAnalysis
