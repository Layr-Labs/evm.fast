import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody314_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody314_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody314_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody314_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody314_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody314_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 14), (48, 8), (50, 4), (52, 16), (54, 12), (56, 2), (58, 10), (60, 6)]

def optimizedBody314_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (0, 46), (48, 48), (46, 50), (8, 52), (10, 54), (6, 56), (54, 58), (56, 60)]

def optimizedBody314_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (48, 48), (46, 50), (8, 52), (10, 54), (6, 56), (54, 58), (56, 60)]

def optimizedBody314_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody314_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_7 optimizedBody314_8

def optimizedBody314_10 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody314_6, 314, 2)) (some 298) ([]) (some (2, optimizedBody314_9, 314, 3))

def optimizedBody314_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody314_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody314_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody314_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody314_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody314_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody314_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody314_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody314_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody314_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody314_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody314_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody314_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody314_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody314_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (10, 10), (6, 6), (58, 4)]

def optimizedBody314_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_24 optimizedBody314_25

def optimizedBody314_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_23 optimizedBody314_26

def optimizedBody314_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_22 optimizedBody314_27

def optimizedBody314_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_21 optimizedBody314_28

def optimizedBody314_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_20 optimizedBody314_29

def optimizedBody314_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_19 optimizedBody314_30

def optimizedBody314_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_2 optimizedBody314_31

def optimizedBody314_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_18 optimizedBody314_32

def optimizedBody314_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_17 optimizedBody314_33

def optimizedBody314_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_16 optimizedBody314_34

def optimizedBody314_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_35

def optimizedBody314_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_25

def optimizedBody314_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody314_36 optimizedBody314_37

def optimizedBody314_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody314_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody314_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (48, 48), (46, 46), (50, 8), (52, 10), (54, 54), (56, 56), (58, 58)]

def optimizedBody314_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (48, 48), (12, 46), (8, 50), (10, 52), (46, 54), (4, 56), (0, 58)]

def optimizedBody314_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (12, 46), (8, 50), (10, 52), (46, 54), (4, 56), (0, 58)]

def optimizedBody314_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_43 optimizedBody314_8

def optimizedBody314_45 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody314_42, 314, 4)) (some 297) ([2, 4, 6]) (some (2, optimizedBody314_44, 314, 5))

def optimizedBody314_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody314_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (12, 12), (10, 10), (46, 46), (4, 4), (0, 0)]

def optimizedBody314_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_24 optimizedBody314_47

def optimizedBody314_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_23 optimizedBody314_48

def optimizedBody314_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_22 optimizedBody314_49

def optimizedBody314_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_46 optimizedBody314_50

def optimizedBody314_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_14 optimizedBody314_51

def optimizedBody314_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_19 optimizedBody314_52

def optimizedBody314_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_2 optimizedBody314_53

def optimizedBody314_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_18 optimizedBody314_54

def optimizedBody314_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_17 optimizedBody314_55

def optimizedBody314_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_16 optimizedBody314_56

def optimizedBody314_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_57

def optimizedBody314_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_45 optimizedBody314_58

def optimizedBody314_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_41 optimizedBody314_59

def optimizedBody314_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_40 optimizedBody314_60

def optimizedBody314_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_14 optimizedBody314_61

def optimizedBody314_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_39 optimizedBody314_62

def optimizedBody314_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_17 optimizedBody314_63

def optimizedBody314_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_16 optimizedBody314_64

def optimizedBody314_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_65

def optimizedBody314_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (12, 46), (10, 10), (46, 54), (4, 56), (0, 58)]

def optimizedBody314_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_67

def optimizedBody314_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody314_66 optimizedBody314_68

def optimizedBody314_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody314_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody314_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody314_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody314_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 48)]

def optimizedBody314_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody314_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody314_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 46)]

def optimizedBody314_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 44), (0, 0)]

def optimizedBody314_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_75 optimizedBody314_78

def optimizedBody314_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_77 optimizedBody314_79

def optimizedBody314_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_76 optimizedBody314_80

def optimizedBody314_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_14 optimizedBody314_81

def optimizedBody314_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_75 optimizedBody314_82

def optimizedBody314_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_74 optimizedBody314_83

def optimizedBody314_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_73 optimizedBody314_84

def optimizedBody314_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_14 optimizedBody314_85

def optimizedBody314_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_86

def optimizedBody314_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody314_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody314_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody314_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody314_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody314_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody314_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody314_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 11#64)

def optimizedBody314_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 6), (50, 12), (52, 10), (54, 4), (56, 46), (58, 0)]

def optimizedBody314_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 48), (46, 46), (12, 50), (10, 52), (4, 54), (8, 56), (48, 58)]

def optimizedBody314_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 48), (46, 46), (12, 50), (10, 52), (4, 54), (8, 56), (48, 58)]

def optimizedBody314_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_98 optimizedBody314_8

def optimizedBody314_100 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody314_97, 314, 6)) (some 286) ([2]) (some (2, optimizedBody314_99, 314, 7))

def optimizedBody314_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (46, 46), (12, 12), (10, 10), (4, 4), (8, 8), (48, 48)]

def optimizedBody314_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_101

def optimizedBody314_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_100 optimizedBody314_102

def optimizedBody314_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_96 optimizedBody314_103

def optimizedBody314_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_95 optimizedBody314_104

def optimizedBody314_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_105

def optimizedBody314_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 48), (46, 6), (12, 12), (10, 10), (4, 4), (8, 46), (48, 0)]

def optimizedBody314_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_107

def optimizedBody314_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 8) optimizedBody314_106 optimizedBody314_108

def optimizedBody314_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody314_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody314_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody314_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48)]

def optimizedBody314_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 44), (8, 46), (0, 48)]

def optimizedBody314_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (8, 46), (0, 48)]

def optimizedBody314_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_115 optimizedBody314_8

def optimizedBody314_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody314_114, 314, 8)) (some 296) ([2, 4, 6, 8]) (some (2, optimizedBody314_116, 314, 9))

def optimizedBody314_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody314_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody314_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody314_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_24 optimizedBody314_120

def optimizedBody314_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_23 optimizedBody314_121

def optimizedBody314_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_22 optimizedBody314_122

def optimizedBody314_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_46 optimizedBody314_123

def optimizedBody314_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_14 optimizedBody314_124

def optimizedBody314_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_119 optimizedBody314_125

def optimizedBody314_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_118 optimizedBody314_126

def optimizedBody314_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_127

def optimizedBody314_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_117 optimizedBody314_128

def optimizedBody314_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_113 optimizedBody314_129

def optimizedBody314_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_112 optimizedBody314_130

def optimizedBody314_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_20 optimizedBody314_131

def optimizedBody314_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_111 optimizedBody314_132

def optimizedBody314_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_110 optimizedBody314_133

def optimizedBody314_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_88 optimizedBody314_134

def optimizedBody314_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_135

def optimizedBody314_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_109 optimizedBody314_136

def optimizedBody314_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_94 optimizedBody314_137

def optimizedBody314_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_93 optimizedBody314_138

def optimizedBody314_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_46 optimizedBody314_139

def optimizedBody314_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_14 optimizedBody314_140

def optimizedBody314_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_92 optimizedBody314_141

def optimizedBody314_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_91 optimizedBody314_142

def optimizedBody314_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_90 optimizedBody314_143

def optimizedBody314_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_89 optimizedBody314_144

def optimizedBody314_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_88 optimizedBody314_145

def optimizedBody314_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_146

def optimizedBody314_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody314_87 optimizedBody314_147

def optimizedBody314_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody314_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody314_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_149 optimizedBody314_150

def optimizedBody314_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_151

def optimizedBody314_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_148 optimizedBody314_152

def optimizedBody314_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_72 optimizedBody314_153

def optimizedBody314_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_20 optimizedBody314_154

def optimizedBody314_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_71 optimizedBody314_155

def optimizedBody314_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_70 optimizedBody314_156

def optimizedBody314_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_157

def optimizedBody314_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_69 optimizedBody314_158

def optimizedBody314_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_14 optimizedBody314_159

def optimizedBody314_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_15 optimizedBody314_160

def optimizedBody314_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_161

def optimizedBody314_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_38 optimizedBody314_162

def optimizedBody314_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_15 optimizedBody314_163

def optimizedBody314_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_14 optimizedBody314_164

def optimizedBody314_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_13 optimizedBody314_165

def optimizedBody314_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_12 optimizedBody314_166

def optimizedBody314_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_11 optimizedBody314_167

def optimizedBody314_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_10 optimizedBody314_168

def optimizedBody314_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_5 optimizedBody314_169

def optimizedBody314_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_4 optimizedBody314_170

def optimizedBody314_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_2 optimizedBody314_171

def optimizedBody314_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_3 optimizedBody314_172

def optimizedBody314_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_2 optimizedBody314_173

def optimizedBody314_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_1 optimizedBody314_174

def optimizedBody314_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody314_0 optimizedBody314_175

def optimized314 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(314, 7, optimizedBody314_176)
end InitECandidate.Proofs.StackAnalysis
