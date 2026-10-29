import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source386
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles386
def optimizedBody386_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 0), (6, 4)]

def optimizedBody386_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 192#64))

def optimizedBody386_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody386_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 200#64))

def optimizedBody386_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6), (48, 2), (50, 8), (54, 4)]

def optimizedBody386_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54)]

def optimizedBody386_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54)]

def optimizedBody386_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody386_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_6 optimizedBody386_7

def optimizedBody386_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_5, 386, 2)) (some 385) ([2, 4]) (some (2, optimizedBody386_8, 386, 3))

def optimizedBody386_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody386_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody386_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 10 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody386_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody386_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody386_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody386_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody386_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody386_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 184#64))

def optimizedBody386_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 12), (52, 0), (54, 54), (56, 14), (58, 10)]

def optimizedBody386_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(26, 2), (44, 44), (32, 46), (46, 48), (48, 50), (50, 52), (54, 54), (38, 56), (52, 58)]

def optimizedBody386_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (32, 46), (46, 48), (48, 50), (50, 52), (54, 54), (38, 56), (52, 58)]

def optimizedBody386_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_21 optimizedBody386_7

def optimizedBody386_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody386_20, 386, 4)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody386_22, 386, 5))

def optimizedBody386_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody386_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody386_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 38)]

def optimizedBody386_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody386_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 12000#64)

def optimizedBody386_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 54)]

def optimizedBody386_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody386_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody386_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody386_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 44), (26, 26), (32, 32), (34, 46), (10, 48), (20, 20), (14, 50), (24, 24), (18, 18), (38, 38), (36, 52)]

def optimizedBody386_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_32 optimizedBody386_33

def optimizedBody386_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_31 optimizedBody386_34

def optimizedBody386_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_30 optimizedBody386_35

def optimizedBody386_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_29 optimizedBody386_36

def optimizedBody386_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_28 optimizedBody386_37

def optimizedBody386_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_38

def optimizedBody386_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 32), (2, 38)]

def optimizedBody386_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody386_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 26), (48, 4), (50, 46), (52, 48), (54, 0), (56, 50), (58, 8), (60, 54),
    (62, 2), (64, 52)]

def optimizedBody386_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (8, 44), (26, 46), (32, 48), (34, 50), (10, 52), (20, 54), (14, 56), (24, 58), (18, 60), (38, 62), (36, 64)]

def optimizedBody386_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (8, 44), (26, 46), (32, 48), (34, 50), (10, 52), (20, 54), (14, 56), (24, 58), (18, 60), (38, 62), (36, 64)]

def optimizedBody386_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_44 optimizedBody386_7

def optimizedBody386_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_43, 386, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody386_45, 386, 7))

def optimizedBody386_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 3000#64)

def optimizedBody386_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody386_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 9000#64)

def optimizedBody386_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20)]

def optimizedBody386_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_49 optimizedBody386_50

def optimizedBody386_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_51

def optimizedBody386_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_50

def optimizedBody386_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 0) optimizedBody386_52 optimizedBody386_53

def optimizedBody386_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(26, 26), (20, 20)]

def optimizedBody386_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_55

def optimizedBody386_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_54 optimizedBody386_56

def optimizedBody386_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_24 optimizedBody386_57

def optimizedBody386_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_48 optimizedBody386_58

def optimizedBody386_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_47 optimizedBody386_59

def optimizedBody386_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_60

def optimizedBody386_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody386_61 optimizedBody386_56

def optimizedBody386_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (26, 26), (32, 32), (34, 34), (10, 10), (20, 20), (14, 14), (24, 24), (18, 18), (38, 38), (36, 36)]

def optimizedBody386_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_63

def optimizedBody386_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_62 optimizedBody386_64

def optimizedBody386_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_27 optimizedBody386_65

def optimizedBody386_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_13 optimizedBody386_66

def optimizedBody386_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_67

def optimizedBody386_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_46 optimizedBody386_68

def optimizedBody386_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_42 optimizedBody386_69

def optimizedBody386_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_41 optimizedBody386_70

def optimizedBody386_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_40 optimizedBody386_71

def optimizedBody386_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_72

def optimizedBody386_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 38 (Flapjack.WordRegImm.reg 2) optimizedBody386_39 optimizedBody386_73

def optimizedBody386_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody386_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def optimizedBody386_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody386_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody386_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 208#64))

def optimizedBody386_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 216#64))

def optimizedBody386_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody386_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(8, 8), (26, 26), (16, 16), (2, 2), (32, 32), (34, 34), (10, 10), (20, 20), (14, 14), (12, 12), (24, 24), (18, 18),
    (38, 38), (28, 28), (22, 22), (36, 36)]

def optimizedBody386_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22)]

def optimizedBody386_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody386_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody386_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 22), (4, 4)]

def optimizedBody386_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody386_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody386_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody386_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody386_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30)]

def optimizedBody386_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2000#64)

def optimizedBody386_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 30), (4, 4)]

def optimizedBody386_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (0, 0)]

def optimizedBody386_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody386_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2900#64)

def optimizedBody386_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody386_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30), (16, 16)]

def optimizedBody386_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 30 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody386_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody386_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 28)))

def optimizedBody386_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 0 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody386_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (28, 28)]

def optimizedBody386_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 22 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody386_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (2, 2), (12, 12), (28, 28), (22, 22)]

def optimizedBody386_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody386_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_105 optimizedBody386_106

def optimizedBody386_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_104 optimizedBody386_107

def optimizedBody386_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_103 optimizedBody386_108

def optimizedBody386_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_102 optimizedBody386_109

def optimizedBody386_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_101 optimizedBody386_110

def optimizedBody386_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_100 optimizedBody386_111

def optimizedBody386_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_99 optimizedBody386_112

def optimizedBody386_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_98 optimizedBody386_113

def optimizedBody386_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_97 optimizedBody386_114

def optimizedBody386_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_96 optimizedBody386_115

def optimizedBody386_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_95 optimizedBody386_116

def optimizedBody386_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_94 optimizedBody386_117

def optimizedBody386_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_87 optimizedBody386_118

def optimizedBody386_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_93 optimizedBody386_119

def optimizedBody386_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_92 optimizedBody386_120

def optimizedBody386_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_91 optimizedBody386_121

def optimizedBody386_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_90 optimizedBody386_122

def optimizedBody386_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_89 optimizedBody386_123

def optimizedBody386_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_88 optimizedBody386_124

def optimizedBody386_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_87 optimizedBody386_125

def optimizedBody386_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_86 optimizedBody386_126

def optimizedBody386_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_85 optimizedBody386_127

def optimizedBody386_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_84 optimizedBody386_128

def optimizedBody386_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_129

def optimizedBody386_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody386_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_131

def optimizedBody386_133 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 2) optimizedBody386_130 optimizedBody386_132

def optimizedBody386_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_105

def optimizedBody386_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_133 optimizedBody386_134

def optimizedBody386_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_83 optimizedBody386_135

def optimizedBody386_137 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  Flapjack.Spt.ln) optimizedBody386_136 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody386_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (16, 16), (10, 10), (20, 20), (14, 14), (24, 24), (18, 18), (28, 28)]

def optimizedBody386_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_138

def optimizedBody386_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_137 optimizedBody386_139

def optimizedBody386_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_82 optimizedBody386_140

def optimizedBody386_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_141

def optimizedBody386_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_81 optimizedBody386_142

def optimizedBody386_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_80 optimizedBody386_143

def optimizedBody386_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_77 optimizedBody386_144

def optimizedBody386_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_79 optimizedBody386_145

def optimizedBody386_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_77 optimizedBody386_146

def optimizedBody386_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_147

def optimizedBody386_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody386_148 optimizedBody386_139

def optimizedBody386_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 28 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody386_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody386_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody386_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody386_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody386_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4#64)

def optimizedBody386_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 14 280#64))

def optimizedBody386_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 7816#64)

def optimizedBody386_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody386_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody386_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_87 optimizedBody386_159

def optimizedBody386_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_158 optimizedBody386_160

def optimizedBody386_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_157 optimizedBody386_161

def optimizedBody386_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_156 optimizedBody386_162

def optimizedBody386_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_77 optimizedBody386_163

def optimizedBody386_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_164

def optimizedBody386_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_159

def optimizedBody386_167 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody386_165 optimizedBody386_166

def optimizedBody386_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody386_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 18 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody386_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (28, 28)]

def optimizedBody386_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 28 (Flapjack.WordRegImm.reg 4)))

def optimizedBody386_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody386_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12000#64)

def optimizedBody386_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 20 (Flapjack.WordRegImm.reg 4)))

def optimizedBody386_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody386_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody386_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody386_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody386_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 24)))

def optimizedBody386_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody386_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody386_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody386_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody386_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody386_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody386_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6)]

def optimizedBody386_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4, 6]

def optimizedBody386_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_186 optimizedBody386_187

def optimizedBody386_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_185 optimizedBody386_188

def optimizedBody386_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_153 optimizedBody386_189

def optimizedBody386_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_184 optimizedBody386_190

def optimizedBody386_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_183 optimizedBody386_191

def optimizedBody386_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_182 optimizedBody386_192

def optimizedBody386_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_181 optimizedBody386_193

def optimizedBody386_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_180 optimizedBody386_194

def optimizedBody386_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_179 optimizedBody386_195

def optimizedBody386_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_178 optimizedBody386_196

def optimizedBody386_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_177 optimizedBody386_197

def optimizedBody386_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_11 optimizedBody386_198

def optimizedBody386_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_176 optimizedBody386_199

def optimizedBody386_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_175 optimizedBody386_200

def optimizedBody386_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_174 optimizedBody386_201

def optimizedBody386_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_173 optimizedBody386_202

def optimizedBody386_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_172 optimizedBody386_203

def optimizedBody386_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_171 optimizedBody386_204

def optimizedBody386_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_170 optimizedBody386_205

def optimizedBody386_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_169 optimizedBody386_206

def optimizedBody386_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_168 optimizedBody386_207

def optimizedBody386_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_208

def optimizedBody386_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_167 optimizedBody386_209

def optimizedBody386_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_155 optimizedBody386_210

def optimizedBody386_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_154 optimizedBody386_211

def optimizedBody386_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_77 optimizedBody386_212

def optimizedBody386_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_24 optimizedBody386_213

def optimizedBody386_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_153 optimizedBody386_214

def optimizedBody386_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_152 optimizedBody386_215

def optimizedBody386_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_151 optimizedBody386_216

def optimizedBody386_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_150 optimizedBody386_217

def optimizedBody386_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_100 optimizedBody386_218

def optimizedBody386_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_219

def optimizedBody386_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_149 optimizedBody386_220

def optimizedBody386_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_27 optimizedBody386_221

def optimizedBody386_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_78 optimizedBody386_222

def optimizedBody386_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_77 optimizedBody386_223

def optimizedBody386_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_76 optimizedBody386_224

def optimizedBody386_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_75 optimizedBody386_225

def optimizedBody386_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_226

def optimizedBody386_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_74 optimizedBody386_227

def optimizedBody386_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_27 optimizedBody386_228

def optimizedBody386_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_229

def optimizedBody386_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_25 optimizedBody386_230

def optimizedBody386_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_24 optimizedBody386_231

def optimizedBody386_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_232

def optimizedBody386_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_23 optimizedBody386_233

def optimizedBody386_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_19 optimizedBody386_234

def optimizedBody386_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_18 optimizedBody386_235

def optimizedBody386_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_13 optimizedBody386_236

def optimizedBody386_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_17 optimizedBody386_237

def optimizedBody386_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_13 optimizedBody386_238

def optimizedBody386_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_16 optimizedBody386_239

def optimizedBody386_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_13 optimizedBody386_240

def optimizedBody386_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_241

def optimizedBody386_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_13 optimizedBody386_242

def optimizedBody386_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_14 optimizedBody386_243

def optimizedBody386_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_13 optimizedBody386_244

def optimizedBody386_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_12 optimizedBody386_245

def optimizedBody386_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_11 optimizedBody386_246

def optimizedBody386_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_247

def optimizedBody386_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_9 optimizedBody386_248

def optimizedBody386_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_4 optimizedBody386_249

def optimizedBody386_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_3 optimizedBody386_250

def optimizedBody386_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_2 optimizedBody386_251

def optimizedBody386_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_1 optimizedBody386_252

def optimizedBody386_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_0 optimizedBody386_253

def oracle386 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1))))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 5)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 0 (Flapjack.Spt.ls 9))))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 11))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 16
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 12 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 13))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 12))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 1 (Flapjack.Spt.ls 10)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 2)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 10 (Flapjack.Spt.ls 11)) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 19 (Flapjack.Spt.ls 16)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 9 Flapjack.Spt.ln)))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 17)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 13 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 11))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 14) Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 2)) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 0))))
                24
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 18 (Flapjack.Spt.ls 17)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 (Flapjack.Spt.ls 19))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 9))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1))) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 3))) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))))
                4
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 14) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 9 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 10 (Flapjack.Spt.ls 18))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 9))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 2 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 15) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 18))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 14))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 3))) 7
                  (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 10)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 12 (Flapjack.Spt.ls 12)))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 27
                  (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 22 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 27 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)) 24 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 25 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 23 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))))))
def optimized386 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(386, 3, optimizedBody386_254)
end InitECandidate.Proofs.SmallStages.Oracles386
