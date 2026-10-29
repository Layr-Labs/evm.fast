import InitECandidate.Proofs.WordStages.Optimize368
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source384
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody384_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 0), (6, 4)]

def optimizedBody384_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 192#64))

def optimizedBody384_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody384_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 200#64))

def optimizedBody384_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6), (48, 2), (50, 8), (54, 4)]

def optimizedBody384_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54)]

def optimizedBody384_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54)]

def optimizedBody384_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody384_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_6 optimizedBody384_7

def optimizedBody384_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody384_5, 384, 2)) (some 383) ([2, 4]) (some (2, optimizedBody384_8, 384, 3))

def optimizedBody384_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody384_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody384_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 10 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody384_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody384_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody384_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody384_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody384_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody384_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 184#64))

def optimizedBody384_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 12), (52, 0), (54, 54), (56, 14), (58, 10)]

def optimizedBody384_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(26, 2), (44, 44), (32, 46), (46, 48), (48, 50), (50, 52), (54, 54), (38, 56), (52, 58)]

def optimizedBody384_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (32, 46), (46, 48), (48, 50), (50, 52), (54, 54), (38, 56), (52, 58)]

def optimizedBody384_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_21 optimizedBody384_7

def optimizedBody384_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody384_20, 384, 4)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody384_22, 384, 5))

def optimizedBody384_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody384_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody384_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 38)]

def optimizedBody384_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody384_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 12000#64)

def optimizedBody384_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 54)]

def optimizedBody384_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody384_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody384_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody384_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 44), (26, 26), (32, 32), (34, 46), (10, 48), (20, 20), (14, 50), (24, 24), (18, 18), (38, 38), (36, 52)]

def optimizedBody384_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_32 optimizedBody384_33

def optimizedBody384_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_31 optimizedBody384_34

def optimizedBody384_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_30 optimizedBody384_35

def optimizedBody384_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_29 optimizedBody384_36

def optimizedBody384_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_28 optimizedBody384_37

def optimizedBody384_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_38

def optimizedBody384_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 32), (2, 38)]

def optimizedBody384_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody384_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 26), (48, 4), (50, 46), (52, 48), (54, 0), (56, 50), (58, 8), (60, 54),
    (62, 2), (64, 52)]

def optimizedBody384_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (8, 44), (26, 46), (32, 48), (34, 50), (10, 52), (20, 54), (14, 56), (24, 58), (18, 60), (38, 62), (36, 64)]

def optimizedBody384_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (8, 44), (26, 46), (32, 48), (34, 50), (10, 52), (20, 54), (14, 56), (24, 58), (18, 60), (38, 62), (36, 64)]

def optimizedBody384_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_44 optimizedBody384_7

def optimizedBody384_46 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody384_43, 384, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody384_45, 384, 7))

def optimizedBody384_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 3000#64)

def optimizedBody384_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody384_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 9000#64)

def optimizedBody384_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20)]

def optimizedBody384_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_49 optimizedBody384_50

def optimizedBody384_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_51

def optimizedBody384_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_50

def optimizedBody384_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 0) optimizedBody384_52 optimizedBody384_53

def optimizedBody384_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(26, 26), (20, 20)]

def optimizedBody384_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_55

def optimizedBody384_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_54 optimizedBody384_56

def optimizedBody384_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_24 optimizedBody384_57

def optimizedBody384_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_48 optimizedBody384_58

def optimizedBody384_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_47 optimizedBody384_59

def optimizedBody384_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_60

def optimizedBody384_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody384_61 optimizedBody384_56

def optimizedBody384_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (26, 26), (32, 32), (34, 34), (10, 10), (20, 20), (14, 14), (24, 24), (18, 18), (38, 38), (36, 36)]

def optimizedBody384_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_63

def optimizedBody384_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_62 optimizedBody384_64

def optimizedBody384_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_27 optimizedBody384_65

def optimizedBody384_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_13 optimizedBody384_66

def optimizedBody384_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_67

def optimizedBody384_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_46 optimizedBody384_68

def optimizedBody384_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_42 optimizedBody384_69

def optimizedBody384_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_41 optimizedBody384_70

def optimizedBody384_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_40 optimizedBody384_71

def optimizedBody384_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_72

def optimizedBody384_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 38 (Flapjack.WordRegImm.reg 2) optimizedBody384_39 optimizedBody384_73

def optimizedBody384_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody384_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def optimizedBody384_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody384_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody384_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 208#64))

def optimizedBody384_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 216#64))

def optimizedBody384_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody384_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(8, 8), (26, 26), (16, 16), (2, 2), (32, 32), (34, 34), (10, 10), (20, 20), (14, 14), (12, 12), (24, 24), (18, 18),
    (38, 38), (28, 28), (22, 22), (36, 36)]

def optimizedBody384_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22)]

def optimizedBody384_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody384_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody384_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 22), (4, 4)]

def optimizedBody384_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody384_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody384_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody384_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody384_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30)]

def optimizedBody384_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2000#64)

def optimizedBody384_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 30), (4, 4)]

def optimizedBody384_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (0, 0)]

def optimizedBody384_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody384_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2900#64)

def optimizedBody384_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody384_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30), (16, 16)]

def optimizedBody384_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 30 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody384_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody384_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 28)))

def optimizedBody384_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 0 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody384_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (28, 28)]

def optimizedBody384_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 22 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody384_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (2, 2), (12, 12), (28, 28), (22, 22)]

def optimizedBody384_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody384_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_105 optimizedBody384_106

def optimizedBody384_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_104 optimizedBody384_107

def optimizedBody384_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_103 optimizedBody384_108

def optimizedBody384_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_102 optimizedBody384_109

def optimizedBody384_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_101 optimizedBody384_110

def optimizedBody384_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_100 optimizedBody384_111

def optimizedBody384_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_99 optimizedBody384_112

def optimizedBody384_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_98 optimizedBody384_113

def optimizedBody384_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_97 optimizedBody384_114

def optimizedBody384_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_96 optimizedBody384_115

def optimizedBody384_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_95 optimizedBody384_116

def optimizedBody384_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_94 optimizedBody384_117

def optimizedBody384_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_87 optimizedBody384_118

def optimizedBody384_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_93 optimizedBody384_119

def optimizedBody384_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_92 optimizedBody384_120

def optimizedBody384_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_91 optimizedBody384_121

def optimizedBody384_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_90 optimizedBody384_122

def optimizedBody384_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_89 optimizedBody384_123

def optimizedBody384_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_88 optimizedBody384_124

def optimizedBody384_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_87 optimizedBody384_125

def optimizedBody384_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_86 optimizedBody384_126

def optimizedBody384_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_85 optimizedBody384_127

def optimizedBody384_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_84 optimizedBody384_128

def optimizedBody384_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_129

def optimizedBody384_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody384_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_131

def optimizedBody384_133 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 2) optimizedBody384_130 optimizedBody384_132

def optimizedBody384_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_105

def optimizedBody384_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_133 optimizedBody384_134

def optimizedBody384_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_83 optimizedBody384_135

def optimizedBody384_137 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody384_136 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody384_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (16, 16), (10, 10), (20, 20), (14, 14), (24, 24), (18, 18), (28, 28)]

def optimizedBody384_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_138

def optimizedBody384_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_137 optimizedBody384_139

def optimizedBody384_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_82 optimizedBody384_140

def optimizedBody384_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_141

def optimizedBody384_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_81 optimizedBody384_142

def optimizedBody384_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_80 optimizedBody384_143

def optimizedBody384_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_77 optimizedBody384_144

def optimizedBody384_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_79 optimizedBody384_145

def optimizedBody384_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_77 optimizedBody384_146

def optimizedBody384_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_147

def optimizedBody384_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody384_148 optimizedBody384_139

def optimizedBody384_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 28 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody384_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody384_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody384_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody384_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody384_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4#64)

def optimizedBody384_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 14 280#64))

def optimizedBody384_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 7816#64)

def optimizedBody384_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody384_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody384_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_87 optimizedBody384_159

def optimizedBody384_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_158 optimizedBody384_160

def optimizedBody384_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_157 optimizedBody384_161

def optimizedBody384_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_156 optimizedBody384_162

def optimizedBody384_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_77 optimizedBody384_163

def optimizedBody384_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_164

def optimizedBody384_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_159

def optimizedBody384_167 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody384_165 optimizedBody384_166

def optimizedBody384_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody384_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 18 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody384_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (28, 28)]

def optimizedBody384_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 28 (Flapjack.WordRegImm.reg 4)))

def optimizedBody384_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody384_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12000#64)

def optimizedBody384_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 20 (Flapjack.WordRegImm.reg 4)))

def optimizedBody384_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody384_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody384_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody384_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody384_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 24)))

def optimizedBody384_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody384_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody384_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody384_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody384_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody384_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody384_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6)]

def optimizedBody384_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4, 6]

def optimizedBody384_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_186 optimizedBody384_187

def optimizedBody384_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_185 optimizedBody384_188

def optimizedBody384_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_153 optimizedBody384_189

def optimizedBody384_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_184 optimizedBody384_190

def optimizedBody384_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_183 optimizedBody384_191

def optimizedBody384_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_182 optimizedBody384_192

def optimizedBody384_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_181 optimizedBody384_193

def optimizedBody384_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_180 optimizedBody384_194

def optimizedBody384_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_179 optimizedBody384_195

def optimizedBody384_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_178 optimizedBody384_196

def optimizedBody384_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_177 optimizedBody384_197

def optimizedBody384_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_11 optimizedBody384_198

def optimizedBody384_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_176 optimizedBody384_199

def optimizedBody384_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_175 optimizedBody384_200

def optimizedBody384_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_174 optimizedBody384_201

def optimizedBody384_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_173 optimizedBody384_202

def optimizedBody384_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_172 optimizedBody384_203

def optimizedBody384_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_171 optimizedBody384_204

def optimizedBody384_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_170 optimizedBody384_205

def optimizedBody384_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_169 optimizedBody384_206

def optimizedBody384_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_168 optimizedBody384_207

def optimizedBody384_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_208

def optimizedBody384_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_167 optimizedBody384_209

def optimizedBody384_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_155 optimizedBody384_210

def optimizedBody384_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_154 optimizedBody384_211

def optimizedBody384_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_77 optimizedBody384_212

def optimizedBody384_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_24 optimizedBody384_213

def optimizedBody384_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_153 optimizedBody384_214

def optimizedBody384_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_152 optimizedBody384_215

def optimizedBody384_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_151 optimizedBody384_216

def optimizedBody384_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_150 optimizedBody384_217

def optimizedBody384_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_100 optimizedBody384_218

def optimizedBody384_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_219

def optimizedBody384_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_149 optimizedBody384_220

def optimizedBody384_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_27 optimizedBody384_221

def optimizedBody384_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_78 optimizedBody384_222

def optimizedBody384_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_77 optimizedBody384_223

def optimizedBody384_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_76 optimizedBody384_224

def optimizedBody384_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_75 optimizedBody384_225

def optimizedBody384_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_226

def optimizedBody384_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_74 optimizedBody384_227

def optimizedBody384_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_27 optimizedBody384_228

def optimizedBody384_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_26 optimizedBody384_229

def optimizedBody384_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_25 optimizedBody384_230

def optimizedBody384_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_24 optimizedBody384_231

def optimizedBody384_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_232

def optimizedBody384_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_23 optimizedBody384_233

def optimizedBody384_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_19 optimizedBody384_234

def optimizedBody384_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_18 optimizedBody384_235

def optimizedBody384_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_13 optimizedBody384_236

def optimizedBody384_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_17 optimizedBody384_237

def optimizedBody384_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_13 optimizedBody384_238

def optimizedBody384_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_16 optimizedBody384_239

def optimizedBody384_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_13 optimizedBody384_240

def optimizedBody384_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_15 optimizedBody384_241

def optimizedBody384_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_13 optimizedBody384_242

def optimizedBody384_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_14 optimizedBody384_243

def optimizedBody384_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_13 optimizedBody384_244

def optimizedBody384_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_12 optimizedBody384_245

def optimizedBody384_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_11 optimizedBody384_246

def optimizedBody384_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_10 optimizedBody384_247

def optimizedBody384_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_9 optimizedBody384_248

def optimizedBody384_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_4 optimizedBody384_249

def optimizedBody384_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_3 optimizedBody384_250

def optimizedBody384_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_2 optimizedBody384_251

def optimizedBody384_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_1 optimizedBody384_252

def optimizedBody384_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody384_0 optimizedBody384_253

def oracle384 : Option (Spt Nat) :=
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
def optimized384 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(384, 3, optimizedBody384_254)
theorem optimize384_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source384, oracle384) = optimized384 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize384_eq
end InitECandidate.Proofs.WordStages
