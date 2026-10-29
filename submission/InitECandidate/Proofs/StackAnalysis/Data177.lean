import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody177_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody177_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody177_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody177_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody177_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody177_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody177_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody177_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody177_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_3 optimizedBody177_7

def optimizedBody177_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_6 optimizedBody177_8

def optimizedBody177_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_5 optimizedBody177_9

def optimizedBody177_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_4 optimizedBody177_10

def optimizedBody177_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_3 optimizedBody177_11

def optimizedBody177_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_2 optimizedBody177_12

def optimizedBody177_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(44, 2)]

def optimizedBody177_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody177_13 optimizedBody177_14

def optimizedBody177_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody177_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody177_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 44)]

def optimizedBody177_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody177_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_19 optimizedBody177_9

def optimizedBody177_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_18 optimizedBody177_20

def optimizedBody177_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_2 optimizedBody177_21

def optimizedBody177_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 4), (48, 44)]

def optimizedBody177_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody177_22 optimizedBody177_23

def optimizedBody177_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 0), (46, 6), (48, 48)]

def optimizedBody177_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody177_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody177_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody177_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_27 optimizedBody177_28

def optimizedBody177_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody177_26, 177, 2)) (some 172) ([2]) (some (2, optimizedBody177_29, 177, 3))

def optimizedBody177_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody177_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody177_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody177_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody177_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody177_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody177_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody177_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody177_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_38 optimizedBody177_28

def optimizedBody177_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody177_37, 177, 4)) (some 173) ([2, 4, 6]) (some (2, optimizedBody177_39, 177, 5))

def optimizedBody177_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody177_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_3 optimizedBody177_41

def optimizedBody177_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_35 optimizedBody177_42

def optimizedBody177_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_34 optimizedBody177_43

def optimizedBody177_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_2 optimizedBody177_44

def optimizedBody177_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_40 optimizedBody177_45

def optimizedBody177_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_36 optimizedBody177_46

def optimizedBody177_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_35 optimizedBody177_47

def optimizedBody177_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_34 optimizedBody177_48

def optimizedBody177_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_33 optimizedBody177_49

def optimizedBody177_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_32 optimizedBody177_50

def optimizedBody177_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_31 optimizedBody177_51

def optimizedBody177_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_2 optimizedBody177_52

def optimizedBody177_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_30 optimizedBody177_53

def optimizedBody177_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_25 optimizedBody177_54

def optimizedBody177_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_2 optimizedBody177_55

def optimizedBody177_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_2 optimizedBody177_56

def optimizedBody177_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_24 optimizedBody177_57

def optimizedBody177_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_17 optimizedBody177_58

def optimizedBody177_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_16 optimizedBody177_59

def optimizedBody177_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_2 optimizedBody177_60

def optimizedBody177_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_2 optimizedBody177_61

def optimizedBody177_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_15 optimizedBody177_62

def optimizedBody177_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_1 optimizedBody177_63

def optimizedBody177_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody177_0 optimizedBody177_64

def optimized177 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(177, 3, optimizedBody177_65)
end InitECandidate.Proofs.StackAnalysis
