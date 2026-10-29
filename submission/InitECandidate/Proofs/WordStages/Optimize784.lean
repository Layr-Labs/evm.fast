import InitECandidate.Proofs.WordStages.Optimize768
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source784
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody784_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (48, 8), (54, 4), (52, 2), (56, 6)]

def optimizedBody784_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (54, 54), (52, 52), (56, 56)]

def optimizedBody784_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (54, 54), (52, 52), (56, 56)]

def optimizedBody784_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody784_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_2 optimizedBody784_3

def optimizedBody784_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody784_1, 784, 2)) (some 69) ([]) (some (2, optimizedBody784_4, 784, 3))

def optimizedBody784_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody784_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody784_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (54, 54), (50, 0), (52, 52), (56, 56)]

def optimizedBody784_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (54, 54), (50, 50), (52, 52), (56, 56)]

def optimizedBody784_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (54, 54), (50, 50), (52, 52), (56, 56)]

def optimizedBody784_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_10 optimizedBody784_3

def optimizedBody784_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody784_9, 784, 4)) (some 68) ([2]) (some (2, optimizedBody784_11, 784, 5))

def optimizedBody784_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46), (44, 0), (48, 48), (54, 54), (50, 50), (52, 52), (56, 56)]

def optimizedBody784_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (6, 48), (54, 54), (48, 50), (44, 52), (52, 56)]

def optimizedBody784_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (6, 48), (54, 54), (48, 50), (44, 52), (52, 56)]

def optimizedBody784_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_15 optimizedBody784_3

def optimizedBody784_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody784_14, 784, 6)) (some 778) ([2]) (some (2, optimizedBody784_16, 784, 7))

def optimizedBody784_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody784_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody784_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody784_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 4), (50, 6), (54, 54), (48, 48), (44, 44), (10, 10), (0, 0), (52, 52)]

def optimizedBody784_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody784_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody784_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody784_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (58, 0)]

def optimizedBody784_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody784_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (46, 46), (44, 4), (48, 50), (54, 54), (52, 48), (50, 44), (56, 10), (58, 58), (60, 52)]

def optimizedBody784_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (48, 48), (6, 54), (52, 52), (54, 50), (10, 56), (0, 58), (12, 60)]

def optimizedBody784_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (48, 48), (6, 54), (52, 52), (54, 50), (10, 56), (0, 58), (12, 60)]

def optimizedBody784_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_29 optimizedBody784_3

def optimizedBody784_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody784_28, 784, 8)) (some 782) ([2, 4]) (some (2, optimizedBody784_30, 784, 9))

def optimizedBody784_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (48, 48), (6, 6), (52, 52), (54, 54), (10, 10), (0, 0), (12, 12)]

def optimizedBody784_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_32

def optimizedBody784_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_31 optimizedBody784_33

def optimizedBody784_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_27 optimizedBody784_34

def optimizedBody784_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_35

def optimizedBody784_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (48, 50), (6, 54), (52, 48), (54, 44), (10, 10), (0, 58), (12, 52)]

def optimizedBody784_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_37

def optimizedBody784_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) optimizedBody784_36 optimizedBody784_38

def optimizedBody784_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody784_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody784_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody784_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody784_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody784_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody784_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody784_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody784_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody784_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody784_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody784_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 4), (48, 48), (50, 6), (52, 52), (54, 54), (56, 0), (58, 12)]

def optimizedBody784_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (8, 48), (6, 50), (48, 52), (14, 54), (0, 56), (12, 58)]

def optimizedBody784_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (8, 48), (6, 50), (48, 52), (14, 54), (0, 56), (12, 58)]

def optimizedBody784_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_53 optimizedBody784_3

def optimizedBody784_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody784_52, 784, 10)) (some 783) ([2, 4, 6]) (some (2, optimizedBody784_54, 784, 11))

def optimizedBody784_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody784_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (8, 8), (6, 6), (48, 48), (14, 14), (10, 10), (0, 0), (12, 12)]

def optimizedBody784_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_56 optimizedBody784_57

def optimizedBody784_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_58

def optimizedBody784_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_55 optimizedBody784_59

def optimizedBody784_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_51 optimizedBody784_60

def optimizedBody784_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_61

def optimizedBody784_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (8, 48), (6, 6), (48, 52), (14, 54), (10, 10), (0, 0), (12, 12)]

def optimizedBody784_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_63

def optimizedBody784_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody784_62 optimizedBody784_64

def optimizedBody784_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (50, 8), (54, 6), (48, 48), (44, 14), (10, 10), (0, 0), (52, 12)]

def optimizedBody784_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody784_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_66 optimizedBody784_67

def optimizedBody784_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_68

def optimizedBody784_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_65 optimizedBody784_69

def optimizedBody784_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_50 optimizedBody784_70

def optimizedBody784_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_49 optimizedBody784_71

def optimizedBody784_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_48 optimizedBody784_72

def optimizedBody784_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_47 optimizedBody784_73

def optimizedBody784_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_46 optimizedBody784_74

def optimizedBody784_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_45 optimizedBody784_75

def optimizedBody784_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_23 optimizedBody784_76

def optimizedBody784_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_44 optimizedBody784_77

def optimizedBody784_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_43 optimizedBody784_78

def optimizedBody784_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_42 optimizedBody784_79

def optimizedBody784_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_41 optimizedBody784_80

def optimizedBody784_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_40 optimizedBody784_81

def optimizedBody784_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_23 optimizedBody784_82

def optimizedBody784_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_83

def optimizedBody784_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_39 optimizedBody784_84

def optimizedBody784_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_26 optimizedBody784_85

def optimizedBody784_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_25 optimizedBody784_86

def optimizedBody784_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_24 optimizedBody784_87

def optimizedBody784_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_23 optimizedBody784_88

def optimizedBody784_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_89

def optimizedBody784_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody784_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_91

def optimizedBody784_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody784_90 optimizedBody784_92

def optimizedBody784_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2), (4, 4), (50, 6), (54, 8), (48, 12), (44, 14), (10, 10), (0, 0), (52, 16)]

def optimizedBody784_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_94

def optimizedBody784_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_93 optimizedBody784_95

def optimizedBody784_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_23 optimizedBody784_96

def optimizedBody784_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_22 optimizedBody784_97

def optimizedBody784_99 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody784_98 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody784_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46), (46, 48)]

def optimizedBody784_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody784_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody784_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_102 optimizedBody784_3

def optimizedBody784_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody784_101, 784, 12)) (some 780) ([2, 4]) (some (2, optimizedBody784_103, 784, 13))

def optimizedBody784_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody784_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody784_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody784_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_107 optimizedBody784_3

def optimizedBody784_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody784_106, 784, 14)) (some 70) ([2]) (some (2, optimizedBody784_108, 784, 15))

def optimizedBody784_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody784_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_49 optimizedBody784_110

def optimizedBody784_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_22 optimizedBody784_111

def optimizedBody784_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_112

def optimizedBody784_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_109 optimizedBody784_113

def optimizedBody784_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_105 optimizedBody784_114

def optimizedBody784_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_115

def optimizedBody784_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_104 optimizedBody784_116

def optimizedBody784_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_100 optimizedBody784_117

def optimizedBody784_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_118

def optimizedBody784_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_99 optimizedBody784_119

def optimizedBody784_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_21 optimizedBody784_120

def optimizedBody784_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_121

def optimizedBody784_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_20 optimizedBody784_122

def optimizedBody784_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_19 optimizedBody784_123

def optimizedBody784_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_18 optimizedBody784_124

def optimizedBody784_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_125

def optimizedBody784_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_17 optimizedBody784_126

def optimizedBody784_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_13 optimizedBody784_127

def optimizedBody784_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_128

def optimizedBody784_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_12 optimizedBody784_129

def optimizedBody784_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_8 optimizedBody784_130

def optimizedBody784_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_7 optimizedBody784_131

def optimizedBody784_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_6 optimizedBody784_132

def optimizedBody784_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_5 optimizedBody784_133

def optimizedBody784_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody784_0 optimizedBody784_134

def oracle784 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)) 28
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 29)) 27
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 5)) 26
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 6)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 3 Flapjack.Spt.ln) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))
                24
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 23 Flapjack.Spt.ln)
              24
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 28)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 26
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 23
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 28
                (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 25 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 28 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 24 Flapjack.Spt.ln))))))))
def optimized784 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(784, 5, optimizedBody784_135)
theorem optimize784_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source784, oracle784) = optimized784 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize784_eq
end InitECandidate.Proofs.WordStages
