import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source796
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles796
def optimizedBody796_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (48, 8), (54, 4), (52, 2), (56, 6)]

def optimizedBody796_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (54, 54), (52, 52), (56, 56)]

def optimizedBody796_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (54, 54), (52, 52), (56, 56)]

def optimizedBody796_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody796_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_2 optimizedBody796_3

def optimizedBody796_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody796_1, 796, 2)) (some 69) ([]) (some (2, optimizedBody796_4, 796, 3))

def optimizedBody796_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody796_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody796_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (54, 54), (50, 0), (52, 52), (56, 56)]

def optimizedBody796_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (54, 54), (50, 50), (52, 52), (56, 56)]

def optimizedBody796_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (54, 54), (50, 50), (52, 52), (56, 56)]

def optimizedBody796_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_10 optimizedBody796_3

def optimizedBody796_12 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody796_9, 796, 4)) (some 68) ([2]) (some (2, optimizedBody796_11, 796, 5))

def optimizedBody796_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46), (44, 0), (48, 48), (54, 54), (50, 50), (52, 52), (56, 56)]

def optimizedBody796_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (6, 48), (54, 54), (48, 50), (44, 52), (52, 56)]

def optimizedBody796_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (6, 48), (54, 54), (48, 50), (44, 52), (52, 56)]

def optimizedBody796_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_15 optimizedBody796_3

def optimizedBody796_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody796_14, 796, 6)) (some 790) ([2]) (some (2, optimizedBody796_16, 796, 7))

def optimizedBody796_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody796_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody796_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody796_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 4), (50, 6), (54, 54), (48, 48), (44, 44), (10, 10), (0, 0), (52, 52)]

def optimizedBody796_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody796_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody796_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody796_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (58, 0)]

def optimizedBody796_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody796_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (46, 46), (44, 4), (48, 50), (54, 54), (52, 48), (50, 44), (56, 10), (58, 58), (60, 52)]

def optimizedBody796_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (48, 48), (6, 54), (52, 52), (54, 50), (10, 56), (0, 58), (12, 60)]

def optimizedBody796_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (48, 48), (6, 54), (52, 52), (54, 50), (10, 56), (0, 58), (12, 60)]

def optimizedBody796_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_29 optimizedBody796_3

def optimizedBody796_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody796_28, 796, 8)) (some 794) ([2, 4]) (some (2, optimizedBody796_30, 796, 9))

def optimizedBody796_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (48, 48), (6, 6), (52, 52), (54, 54), (10, 10), (0, 0), (12, 12)]

def optimizedBody796_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_32

def optimizedBody796_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_31 optimizedBody796_33

def optimizedBody796_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_27 optimizedBody796_34

def optimizedBody796_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_35

def optimizedBody796_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (48, 50), (6, 54), (52, 48), (54, 44), (10, 10), (0, 58), (12, 52)]

def optimizedBody796_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_37

def optimizedBody796_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) optimizedBody796_36 optimizedBody796_38

def optimizedBody796_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody796_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody796_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody796_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody796_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody796_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody796_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody796_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody796_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody796_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody796_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody796_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 4), (48, 48), (50, 6), (52, 52), (54, 54), (56, 0), (58, 12)]

def optimizedBody796_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (8, 48), (6, 50), (48, 52), (14, 54), (0, 56), (12, 58)]

def optimizedBody796_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (8, 48), (6, 50), (48, 52), (14, 54), (0, 56), (12, 58)]

def optimizedBody796_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_53 optimizedBody796_3

def optimizedBody796_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody796_52, 796, 10)) (some 795) ([2, 4, 6]) (some (2, optimizedBody796_54, 796, 11))

def optimizedBody796_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody796_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (8, 8), (6, 6), (48, 48), (14, 14), (10, 10), (0, 0), (12, 12)]

def optimizedBody796_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_56 optimizedBody796_57

def optimizedBody796_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_58

def optimizedBody796_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_55 optimizedBody796_59

def optimizedBody796_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_51 optimizedBody796_60

def optimizedBody796_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_61

def optimizedBody796_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (8, 48), (6, 6), (48, 52), (14, 54), (10, 10), (0, 0), (12, 12)]

def optimizedBody796_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_63

def optimizedBody796_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody796_62 optimizedBody796_64

def optimizedBody796_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (50, 8), (54, 6), (48, 48), (44, 14), (10, 10), (0, 0), (52, 12)]

def optimizedBody796_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody796_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_66 optimizedBody796_67

def optimizedBody796_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_68

def optimizedBody796_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_65 optimizedBody796_69

def optimizedBody796_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_50 optimizedBody796_70

def optimizedBody796_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_49 optimizedBody796_71

def optimizedBody796_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_48 optimizedBody796_72

def optimizedBody796_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_47 optimizedBody796_73

def optimizedBody796_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_46 optimizedBody796_74

def optimizedBody796_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_45 optimizedBody796_75

def optimizedBody796_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_23 optimizedBody796_76

def optimizedBody796_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_44 optimizedBody796_77

def optimizedBody796_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_43 optimizedBody796_78

def optimizedBody796_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_42 optimizedBody796_79

def optimizedBody796_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_41 optimizedBody796_80

def optimizedBody796_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_40 optimizedBody796_81

def optimizedBody796_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_23 optimizedBody796_82

def optimizedBody796_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_83

def optimizedBody796_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_39 optimizedBody796_84

def optimizedBody796_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_26 optimizedBody796_85

def optimizedBody796_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_25 optimizedBody796_86

def optimizedBody796_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_24 optimizedBody796_87

def optimizedBody796_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_23 optimizedBody796_88

def optimizedBody796_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_89

def optimizedBody796_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody796_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_91

def optimizedBody796_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody796_90 optimizedBody796_92

def optimizedBody796_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2), (4, 4), (50, 6), (54, 8), (48, 12), (44, 14), (10, 10), (0, 0), (52, 16)]

def optimizedBody796_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_94

def optimizedBody796_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_93 optimizedBody796_95

def optimizedBody796_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_23 optimizedBody796_96

def optimizedBody796_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_22 optimizedBody796_97

def optimizedBody796_99 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody796_98 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody796_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46), (46, 48)]

def optimizedBody796_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody796_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody796_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_102 optimizedBody796_3

def optimizedBody796_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody796_101, 796, 12)) (some 792) ([2, 4]) (some (2, optimizedBody796_103, 796, 13))

def optimizedBody796_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody796_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody796_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody796_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_107 optimizedBody796_3

def optimizedBody796_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody796_106, 796, 14)) (some 70) ([2]) (some (2, optimizedBody796_108, 796, 15))

def optimizedBody796_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody796_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_49 optimizedBody796_110

def optimizedBody796_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_22 optimizedBody796_111

def optimizedBody796_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_112

def optimizedBody796_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_109 optimizedBody796_113

def optimizedBody796_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_105 optimizedBody796_114

def optimizedBody796_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_115

def optimizedBody796_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_104 optimizedBody796_116

def optimizedBody796_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_100 optimizedBody796_117

def optimizedBody796_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_118

def optimizedBody796_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_99 optimizedBody796_119

def optimizedBody796_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_21 optimizedBody796_120

def optimizedBody796_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_121

def optimizedBody796_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_20 optimizedBody796_122

def optimizedBody796_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_19 optimizedBody796_123

def optimizedBody796_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_18 optimizedBody796_124

def optimizedBody796_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_125

def optimizedBody796_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_17 optimizedBody796_126

def optimizedBody796_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_13 optimizedBody796_127

def optimizedBody796_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_128

def optimizedBody796_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_12 optimizedBody796_129

def optimizedBody796_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_8 optimizedBody796_130

def optimizedBody796_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_7 optimizedBody796_131

def optimizedBody796_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_6 optimizedBody796_132

def optimizedBody796_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_5 optimizedBody796_133

def optimizedBody796_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody796_0 optimizedBody796_134

def oracle796 : Option (Spt Nat) :=
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
def optimized796 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(796, 5, optimizedBody796_135)
end InitECandidate.Proofs.SmallStages.Oracles796
