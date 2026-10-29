import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody728_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 0), (14, 4)]

def optimizedBody728_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody728_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody728_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody728_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody728_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody728_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 32#64))

def optimizedBody728_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody728_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 14)]

def optimizedBody728_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (12, 12), (14, 2), (10, 10), (0, 4), (8, 8), (44, 44), (4, 46)]

def optimizedBody728_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody728_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody728_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_10 optimizedBody728_11

def optimizedBody728_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody728_9, 728, 2)) (some 717) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody728_12, 728, 3))

def optimizedBody728_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody728_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody728_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody728_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 6), (48, 12), (50, 2), (52, 14), (54, 10), (56, 0), (58, 8)]

def optimizedBody728_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (12, 48), (0, 50), (14, 52), (10, 54), (4, 56), (8, 58)]

def optimizedBody728_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (12, 48), (0, 50), (14, 52), (10, 54), (4, 56), (8, 58)]

def optimizedBody728_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_19 optimizedBody728_11

def optimizedBody728_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody728_18, 728, 4)) (some 78) ([2, 4]) (some (2, optimizedBody728_20, 728, 5))

def optimizedBody728_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 14)]

def optimizedBody728_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody728_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44)]

def optimizedBody728_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody728_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody728_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_26 optimizedBody728_11

def optimizedBody728_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody728_25, 728, 6)) (some 726) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody728_27, 728, 7))

def optimizedBody728_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody728_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody728_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody728_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_30 optimizedBody728_31

def optimizedBody728_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_29 optimizedBody728_32

def optimizedBody728_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_14 optimizedBody728_33

def optimizedBody728_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_28 optimizedBody728_34

def optimizedBody728_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_24 optimizedBody728_35

def optimizedBody728_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_23 optimizedBody728_36

def optimizedBody728_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_22 optimizedBody728_37

def optimizedBody728_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_14 optimizedBody728_38

def optimizedBody728_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_21 optimizedBody728_39

def optimizedBody728_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_17 optimizedBody728_40

def optimizedBody728_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_16 optimizedBody728_41

def optimizedBody728_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_15 optimizedBody728_42

def optimizedBody728_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_14 optimizedBody728_43

def optimizedBody728_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_13 optimizedBody728_44

def optimizedBody728_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_8 optimizedBody728_45

def optimizedBody728_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_7 optimizedBody728_46

def optimizedBody728_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_2 optimizedBody728_47

def optimizedBody728_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_6 optimizedBody728_48

def optimizedBody728_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_2 optimizedBody728_49

def optimizedBody728_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_5 optimizedBody728_50

def optimizedBody728_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_2 optimizedBody728_51

def optimizedBody728_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_4 optimizedBody728_52

def optimizedBody728_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_2 optimizedBody728_53

def optimizedBody728_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_3 optimizedBody728_54

def optimizedBody728_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_2 optimizedBody728_55

def optimizedBody728_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_1 optimizedBody728_56

def optimizedBody728_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody728_0 optimizedBody728_57

def optimized728 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(728, 3, optimizedBody728_58)
end InitECandidate.Proofs.StackAnalysis
