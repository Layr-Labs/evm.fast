import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody176_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0), (2, 2), (4, 4)]

def optimizedBody176_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody176_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody176_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody176_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody176_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody176_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 128#64)

def optimizedBody176_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody176_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody176_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody176_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody176_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody176_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_10 optimizedBody176_11

def optimizedBody176_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_9 optimizedBody176_12

def optimizedBody176_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_8 optimizedBody176_13

def optimizedBody176_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_7 optimizedBody176_14

def optimizedBody176_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_2 optimizedBody176_15

def optimizedBody176_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 2)]

def optimizedBody176_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 12) optimizedBody176_16 optimizedBody176_17

def optimizedBody176_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 4), (8, 8)]

def optimizedBody176_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_2 optimizedBody176_19

def optimizedBody176_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_2 optimizedBody176_20

def optimizedBody176_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_18 optimizedBody176_21

def optimizedBody176_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_6 optimizedBody176_22

def optimizedBody176_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_5 optimizedBody176_23

def optimizedBody176_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_4 optimizedBody176_24

def optimizedBody176_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_3 optimizedBody176_25

def optimizedBody176_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_2 optimizedBody176_26

def optimizedBody176_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 4), (8, 2)]

def optimizedBody176_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_2 optimizedBody176_28

def optimizedBody176_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 10) optimizedBody176_27 optimizedBody176_29

def optimizedBody176_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 8)]

def optimizedBody176_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody176_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 46), (48, 2), (50, 6)]

def optimizedBody176_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (8, 48), (6, 50)]

def optimizedBody176_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (8, 48), (6, 50)]

def optimizedBody176_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody176_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_35 optimizedBody176_36

def optimizedBody176_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody176_34, 176, 2)) (some 174) ([2, 4, 6]) (some (2, optimizedBody176_37, 176, 3))

def optimizedBody176_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody176_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody176_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 6)]

def optimizedBody176_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46), (0, 48)]

def optimizedBody176_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46), (0, 48)]

def optimizedBody176_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_43 optimizedBody176_36

def optimizedBody176_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody176_42, 176, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody176_44, 176, 5))

def optimizedBody176_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody176_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody176_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody176_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_10 optimizedBody176_48

def optimizedBody176_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_47 optimizedBody176_49

def optimizedBody176_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_46 optimizedBody176_50

def optimizedBody176_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_2 optimizedBody176_51

def optimizedBody176_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_45 optimizedBody176_52

def optimizedBody176_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_41 optimizedBody176_53

def optimizedBody176_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_40 optimizedBody176_54

def optimizedBody176_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_39 optimizedBody176_55

def optimizedBody176_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_2 optimizedBody176_56

def optimizedBody176_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_38 optimizedBody176_57

def optimizedBody176_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_33 optimizedBody176_58

def optimizedBody176_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_32 optimizedBody176_59

def optimizedBody176_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_31 optimizedBody176_60

def optimizedBody176_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_2 optimizedBody176_61

def optimizedBody176_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_30 optimizedBody176_62

def optimizedBody176_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_1 optimizedBody176_63

def optimizedBody176_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody176_0 optimizedBody176_64

def optimized176 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(176, 4, optimizedBody176_65)
end InitECandidate.Proofs.StackAnalysis
