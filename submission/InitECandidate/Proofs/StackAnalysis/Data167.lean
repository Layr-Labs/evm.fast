import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody167_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody167_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody167_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody167_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody167_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (6, 6), (0, 4), (8, 2), (46, 8)]

def optimizedBody167_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody167_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody167_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody167_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody167_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody167_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 0), (50, 8), (52, 46)]

def optimizedBody167_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (12, 44), (10, 46), (0, 48), (8, 50), (4, 52)]

def optimizedBody167_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (10, 46), (0, 48), (8, 50), (4, 52)]

def optimizedBody167_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody167_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_12 optimizedBody167_13

def optimizedBody167_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody167_11, 167, 2)) (some 166) ([2, 4]) (some (2, optimizedBody167_14, 167, 3))

def optimizedBody167_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody167_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody167_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody167_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody167_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 12), (6, 6), (0, 0), (8, 8), (46, 2)]

def optimizedBody167_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody167_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_20 optimizedBody167_21

def optimizedBody167_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_19 optimizedBody167_22

def optimizedBody167_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_18 optimizedBody167_23

def optimizedBody167_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_17 optimizedBody167_24

def optimizedBody167_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_16 optimizedBody167_25

def optimizedBody167_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_3 optimizedBody167_26

def optimizedBody167_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_15 optimizedBody167_27

def optimizedBody167_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_10 optimizedBody167_28

def optimizedBody167_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_9 optimizedBody167_29

def optimizedBody167_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_8 optimizedBody167_30

def optimizedBody167_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_7 optimizedBody167_31

def optimizedBody167_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_6 optimizedBody167_32

def optimizedBody167_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_3 optimizedBody167_33

def optimizedBody167_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody167_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_3 optimizedBody167_35

def optimizedBody167_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody167_34 optimizedBody167_36

def optimizedBody167_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (6, 6), (0, 0), (8, 8), (46, 4)]

def optimizedBody167_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_3 optimizedBody167_38

def optimizedBody167_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_37 optimizedBody167_39

def optimizedBody167_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_5 optimizedBody167_40

def optimizedBody167_42 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody167_41 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody167_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody167_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody167_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_43 optimizedBody167_44

def optimizedBody167_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_3 optimizedBody167_45

def optimizedBody167_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_42 optimizedBody167_46

def optimizedBody167_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_4 optimizedBody167_47

def optimizedBody167_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_3 optimizedBody167_48

def optimizedBody167_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_2 optimizedBody167_49

def optimizedBody167_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_1 optimizedBody167_50

def optimizedBody167_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody167_0 optimizedBody167_51

def optimized167 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(167, 3, optimizedBody167_52)
end InitECandidate.Proofs.StackAnalysis
