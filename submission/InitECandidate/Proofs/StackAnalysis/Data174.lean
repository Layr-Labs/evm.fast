import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody174_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody174_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 55#64)

def optimizedBody174_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody174_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody174_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6), (2, 2)]

def optimizedBody174_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody174_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody174_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody174_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody174_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody174_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_8 optimizedBody174_9

def optimizedBody174_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_7 optimizedBody174_10

def optimizedBody174_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_6 optimizedBody174_11

def optimizedBody174_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_5 optimizedBody174_12

def optimizedBody174_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_4 optimizedBody174_13

def optimizedBody174_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_3 optimizedBody174_14

def optimizedBody174_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 4), (48, 2), (8, 6)]

def optimizedBody174_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 6) optimizedBody174_15 optimizedBody174_16

def optimizedBody174_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (44, 0), (46, 46), (48, 48), (50, 8)]

def optimizedBody174_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (8, 46), (0, 48), (4, 50)]

def optimizedBody174_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (0, 48), (4, 50)]

def optimizedBody174_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody174_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_20 optimizedBody174_21

def optimizedBody174_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody174_19, 174, 2)) (some 172) ([2]) (some (2, optimizedBody174_22, 174, 3))

def optimizedBody174_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (0, 0)]

def optimizedBody174_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody174_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 55#64)))

def optimizedBody174_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody174_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody174_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody174_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody174_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody174_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody174_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_32 optimizedBody174_21

def optimizedBody174_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody174_31, 174, 4)) (some 173) ([2, 4, 6]) (some (2, optimizedBody174_33, 174, 5))

def optimizedBody174_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody174_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_8 optimizedBody174_35

def optimizedBody174_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_29 optimizedBody174_36

def optimizedBody174_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_28 optimizedBody174_37

def optimizedBody174_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_3 optimizedBody174_38

def optimizedBody174_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_34 optimizedBody174_39

def optimizedBody174_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_30 optimizedBody174_40

def optimizedBody174_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_29 optimizedBody174_41

def optimizedBody174_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_28 optimizedBody174_42

def optimizedBody174_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_27 optimizedBody174_43

def optimizedBody174_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_26 optimizedBody174_44

def optimizedBody174_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_25 optimizedBody174_45

def optimizedBody174_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_24 optimizedBody174_46

def optimizedBody174_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_3 optimizedBody174_47

def optimizedBody174_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_23 optimizedBody174_48

def optimizedBody174_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_18 optimizedBody174_49

def optimizedBody174_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_3 optimizedBody174_50

def optimizedBody174_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_3 optimizedBody174_51

def optimizedBody174_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_17 optimizedBody174_52

def optimizedBody174_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_2 optimizedBody174_53

def optimizedBody174_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_1 optimizedBody174_54

def optimizedBody174_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody174_0 optimizedBody174_55

def optimized174 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(174, 4, optimizedBody174_56)
end InitECandidate.Proofs.StackAnalysis
