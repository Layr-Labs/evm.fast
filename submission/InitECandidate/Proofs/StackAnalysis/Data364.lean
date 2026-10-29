import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody364_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody364_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody364_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody364_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody364_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 6), (8, 8), (10, 4), (12, 2)]

def optimizedBody364_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody364_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody364_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 120#64)

def optimizedBody364_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody364_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody364_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody364_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody364_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 8), (50, 10), (52, 12)]

def optimizedBody364_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody364_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody364_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody364_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_14 optimizedBody364_15

def optimizedBody364_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody364_13, 364, 2)) (some 363) ([2]) (some (2, optimizedBody364_16, 364, 3))

def optimizedBody364_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0)]

def optimizedBody364_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (14, 44), (0, 46), (4, 48), (10, 50), (12, 52), (6, 54)]

def optimizedBody364_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (0, 46), (4, 48), (10, 50), (12, 52), (6, 54)]

def optimizedBody364_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_20 optimizedBody364_15

def optimizedBody364_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody364_19, 364, 4)) (some 180) ([2]) (some (2, optimizedBody364_21, 364, 5))

def optimizedBody364_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody364_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody364_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody364_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody364_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody364_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody364_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 14), (46, 0), (8, 8), (10, 10), (12, 12)]

def optimizedBody364_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody364_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_29 optimizedBody364_30

def optimizedBody364_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_28 optimizedBody364_31

def optimizedBody364_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_27 optimizedBody364_32

def optimizedBody364_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_26 optimizedBody364_33

def optimizedBody364_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_25 optimizedBody364_34

def optimizedBody364_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_24 optimizedBody364_35

def optimizedBody364_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_23 optimizedBody364_36

def optimizedBody364_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_3 optimizedBody364_37

def optimizedBody364_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_22 optimizedBody364_38

def optimizedBody364_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_18 optimizedBody364_39

def optimizedBody364_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_3 optimizedBody364_40

def optimizedBody364_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_17 optimizedBody364_41

def optimizedBody364_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_12 optimizedBody364_42

def optimizedBody364_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_11 optimizedBody364_43

def optimizedBody364_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_10 optimizedBody364_44

def optimizedBody364_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_9 optimizedBody364_45

def optimizedBody364_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_8 optimizedBody364_46

def optimizedBody364_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_7 optimizedBody364_47

def optimizedBody364_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_6 optimizedBody364_48

def optimizedBody364_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_3 optimizedBody364_49

def optimizedBody364_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody364_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_3 optimizedBody364_51

def optimizedBody364_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 10) optimizedBody364_50 optimizedBody364_52

def optimizedBody364_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2), (8, 8), (10, 10), (12, 12)]

def optimizedBody364_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_3 optimizedBody364_54

def optimizedBody364_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_53 optimizedBody364_55

def optimizedBody364_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_5 optimizedBody364_56

def optimizedBody364_58 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln) optimizedBody364_57 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody364_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody364_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody364_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_59 optimizedBody364_60

def optimizedBody364_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_3 optimizedBody364_61

def optimizedBody364_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_58 optimizedBody364_62

def optimizedBody364_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_4 optimizedBody364_63

def optimizedBody364_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_3 optimizedBody364_64

def optimizedBody364_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_2 optimizedBody364_65

def optimizedBody364_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_1 optimizedBody364_66

def optimizedBody364_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody364_0 optimizedBody364_67

def optimized364 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(364, 3, optimizedBody364_68)
end InitECandidate.Proofs.StackAnalysis
