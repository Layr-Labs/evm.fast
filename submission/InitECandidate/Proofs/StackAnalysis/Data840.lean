import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody840_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (0, 0)]

def optimizedBody840_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody840_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody840_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 6), (48, 2)]

def optimizedBody840_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (8, 46), (6, 48)]

def optimizedBody840_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (6, 48)]

def optimizedBody840_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody840_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_5 optimizedBody840_6

def optimizedBody840_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody840_4, 840, 2)) (some 180) ([2]) (some (2, optimizedBody840_7, 840, 3))

def optimizedBody840_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody840_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody840_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody840_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody840_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody840_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 6)]

def optimizedBody840_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody840_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody840_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_16 optimizedBody840_6

def optimizedBody840_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody840_15, 840, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody840_17, 840, 5))

def optimizedBody840_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 4)]

def optimizedBody840_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46), (0, 48)]

def optimizedBody840_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46), (0, 48)]

def optimizedBody840_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_21 optimizedBody840_6

def optimizedBody840_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody840_20, 840, 6)) (some 178) ([2, 4]) (some (2, optimizedBody840_22, 840, 7))

def optimizedBody840_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody840_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody840_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody840_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody840_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_26 optimizedBody840_27

def optimizedBody840_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_25 optimizedBody840_28

def optimizedBody840_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_24 optimizedBody840_29

def optimizedBody840_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_9 optimizedBody840_30

def optimizedBody840_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_23 optimizedBody840_31

def optimizedBody840_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_19 optimizedBody840_32

def optimizedBody840_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_9 optimizedBody840_33

def optimizedBody840_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_18 optimizedBody840_34

def optimizedBody840_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_14 optimizedBody840_35

def optimizedBody840_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_13 optimizedBody840_36

def optimizedBody840_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_12 optimizedBody840_37

def optimizedBody840_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_11 optimizedBody840_38

def optimizedBody840_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_10 optimizedBody840_39

def optimizedBody840_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_9 optimizedBody840_40

def optimizedBody840_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_8 optimizedBody840_41

def optimizedBody840_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_3 optimizedBody840_42

def optimizedBody840_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_2 optimizedBody840_43

def optimizedBody840_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_1 optimizedBody840_44

def optimizedBody840_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody840_0 optimizedBody840_45

def optimized840 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(840, 3, optimizedBody840_46)
end InitECandidate.Proofs.StackAnalysis
