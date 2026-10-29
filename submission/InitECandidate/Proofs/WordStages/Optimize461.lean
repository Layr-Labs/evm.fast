import InitECandidate.Proofs.WordStages.Optimize445
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source461
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody461_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody461_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody461_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody461_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody461_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody461_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551400#64))

def optimizedBody461_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody461_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody461_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody461_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (6, 6), (4, 4), (48, 2), (46, 8)]

def optimizedBody461_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody461_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody461_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody461_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody461_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551400#64))

def optimizedBody461_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 4), (50, 48), (52, 46)]

def optimizedBody461_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 2), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody461_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody461_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody461_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_17 optimizedBody461_18

def optimizedBody461_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody461_16, 461, 2)) (some 197) ([2, 4]) (some (2, optimizedBody461_19, 461, 3))

def optimizedBody461_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody461_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody461_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody461_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody461_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody461_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody461_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody461_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 52)]

def optimizedBody461_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody461_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody461_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (52, 0)]

def optimizedBody461_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody461_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody461_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (0, 0), (62, 4), (4, 2), (60, 10), (50, 50), (8, 8), (54, 12), (58, 6), (56, 6),
    (52, 52)]

def optimizedBody461_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody461_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 8), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 62), (54, 4), (56, 60), (58, 50), (60, 8), (62, 54),
    (64, 58), (66, 56), (68, 52)]

def optimizedBody461_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (24, 62),
    (64, 64), (66, 66), (68, 68)]

def optimizedBody461_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (24, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody461_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_38 optimizedBody461_18

def optimizedBody461_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody461_37, 461, 4)) (some 197) ([2, 4]) (some (2, optimizedBody461_39, 461, 5))

def optimizedBody461_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody461_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 24),
    (64, 64), (66, 66), (68, 68)]

def optimizedBody461_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (44, 44), (6, 46), (12, 48), (0, 50), (10, 52), (4, 54), (22, 56), (20, 58), (8, 60), (24, 62), (18, 64),
    (16, 66), (52, 68)]

def optimizedBody461_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (12, 48), (0, 50), (10, 52), (4, 54), (22, 56), (20, 58), (8, 60), (24, 62), (18, 64),
    (16, 66), (52, 68)]

def optimizedBody461_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_44 optimizedBody461_18

def optimizedBody461_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody461_43, 461, 6)) (some 187) ([2, 4]) (some (2, optimizedBody461_45, 461, 7))

def optimizedBody461_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody461_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody461_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 2)]

def optimizedBody461_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_48 optimizedBody461_49

def optimizedBody461_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_28 optimizedBody461_50

def optimizedBody461_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_51

def optimizedBody461_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 52)]

def optimizedBody461_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_53

def optimizedBody461_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody461_52 optimizedBody461_54

def optimizedBody461_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (6, 6), (12, 12), (0, 0), (10, 10), (4, 4), (22, 22), (20, 20), (8, 8), (24, 24), (18, 18), (16, 16),
    (52, 52)]

def optimizedBody461_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_56

def optimizedBody461_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_55 optimizedBody461_57

def optimizedBody461_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_33 optimizedBody461_58

def optimizedBody461_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_47 optimizedBody461_59

def optimizedBody461_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_60

def optimizedBody461_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_46 optimizedBody461_61

def optimizedBody461_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_42 optimizedBody461_62

def optimizedBody461_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_63

def optimizedBody461_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (6, 46), (12, 48), (0, 50), (10, 52), (4, 54), (22, 56), (20, 58), (8, 60), (24, 24), (18, 64), (16, 66),
    (52, 68)]

def optimizedBody461_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_65

def optimizedBody461_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody461_64 optimizedBody461_66

def optimizedBody461_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody461_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody461_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 6), (48, 12), (0, 0), (62, 10), (4, 4), (60, 22), (50, 20), (8, 8), (54, 24), (58, 18), (56, 16),
    (52, 52)]

def optimizedBody461_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody461_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_70 optimizedBody461_71

def optimizedBody461_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_69 optimizedBody461_72

def optimizedBody461_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_68 optimizedBody461_73

def optimizedBody461_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_74

def optimizedBody461_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_67 optimizedBody461_75

def optimizedBody461_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_33 optimizedBody461_76

def optimizedBody461_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_41 optimizedBody461_77

def optimizedBody461_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_78

def optimizedBody461_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_40 optimizedBody461_79

def optimizedBody461_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_36 optimizedBody461_80

def optimizedBody461_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_81

def optimizedBody461_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody461_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_83

def optimizedBody461_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 0) optimizedBody461_82 optimizedBody461_84

def optimizedBody461_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 6), (48, 10), (0, 0), (62, 12), (4, 4), (60, 14), (50, 16), (8, 8), (54, 18), (58, 20), (56, 22),
    (52, 24)]

def optimizedBody461_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_86

def optimizedBody461_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_85 optimizedBody461_87

def optimizedBody461_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_35 optimizedBody461_88

def optimizedBody461_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody461_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody461_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 46), (0, 48), (2, 50), (46, 52)]

def optimizedBody461_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_91

def optimizedBody461_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_90 optimizedBody461_92

def optimizedBody461_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_34 optimizedBody461_93

def optimizedBody461_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_94

def optimizedBody461_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_33 optimizedBody461_95

def optimizedBody461_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_32 optimizedBody461_96

def optimizedBody461_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_31 optimizedBody461_97

def optimizedBody461_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_30 optimizedBody461_98

def optimizedBody461_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_29 optimizedBody461_99

def optimizedBody461_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_28 optimizedBody461_100

def optimizedBody461_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_27 optimizedBody461_101

def optimizedBody461_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_26 optimizedBody461_102

def optimizedBody461_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_25 optimizedBody461_103

def optimizedBody461_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_23 optimizedBody461_104

def optimizedBody461_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_24 optimizedBody461_105

def optimizedBody461_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_23 optimizedBody461_106

def optimizedBody461_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_107

def optimizedBody461_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 0) optimizedBody461_108 optimizedBody461_92

def optimizedBody461_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody461_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4), (48, 2), (46, 46)]

def optimizedBody461_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_111 optimizedBody461_71

def optimizedBody461_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_110 optimizedBody461_112

def optimizedBody461_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_41 optimizedBody461_113

def optimizedBody461_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_114

def optimizedBody461_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_109 optimizedBody461_115

def optimizedBody461_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_22 optimizedBody461_116

def optimizedBody461_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_21 optimizedBody461_117

def optimizedBody461_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_118

def optimizedBody461_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_20 optimizedBody461_119

def optimizedBody461_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_15 optimizedBody461_120

def optimizedBody461_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_14 optimizedBody461_121

def optimizedBody461_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_13 optimizedBody461_122

def optimizedBody461_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_12 optimizedBody461_123

def optimizedBody461_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_11 optimizedBody461_124

def optimizedBody461_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_125

def optimizedBody461_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody461_126 optimizedBody461_84

def optimizedBody461_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (6, 6), (4, 4), (48, 2), (46, 8)]

def optimizedBody461_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_128

def optimizedBody461_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_127 optimizedBody461_129

def optimizedBody461_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_10 optimizedBody461_130

def optimizedBody461_132 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody461_131 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody461_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 48)]

def optimizedBody461_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2000#64)

def optimizedBody461_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody461_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody461_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody461_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_137 optimizedBody461_18

def optimizedBody461_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody461_136, 461, 8)) (some 95) ([2, 4]) (some (2, optimizedBody461_138, 461, 9))

def optimizedBody461_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody461_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 40#64)

def optimizedBody461_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody461_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody461_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody461_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_144 optimizedBody461_18

def optimizedBody461_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_143 optimizedBody461_145

def optimizedBody461_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_142 optimizedBody461_146

def optimizedBody461_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_41 optimizedBody461_147

def optimizedBody461_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_141 optimizedBody461_148

def optimizedBody461_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_149

def optimizedBody461_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody461_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody461_150 optimizedBody461_151

def optimizedBody461_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody461_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody461_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_153 optimizedBody461_154

def optimizedBody461_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_33 optimizedBody461_155

def optimizedBody461_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_156

def optimizedBody461_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_157

def optimizedBody461_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_152 optimizedBody461_158

def optimizedBody461_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_140 optimizedBody461_159

def optimizedBody461_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_160

def optimizedBody461_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_139 optimizedBody461_161

def optimizedBody461_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_135 optimizedBody461_162

def optimizedBody461_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_134 optimizedBody461_163

def optimizedBody461_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_133 optimizedBody461_164

def optimizedBody461_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_165

def optimizedBody461_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_132 optimizedBody461_166

def optimizedBody461_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_9 optimizedBody461_167

def optimizedBody461_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_8 optimizedBody461_168

def optimizedBody461_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_7 optimizedBody461_169

def optimizedBody461_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_6 optimizedBody461_170

def optimizedBody461_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_5 optimizedBody461_171

def optimizedBody461_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_4 optimizedBody461_172

def optimizedBody461_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_3 optimizedBody461_173

def optimizedBody461_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_2 optimizedBody461_174

def optimizedBody461_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_1 optimizedBody461_175

def optimizedBody461_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody461_0 optimizedBody461_176

def oracle461 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0 Flapjack.Spt.ln)
                0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 11))) 24
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 9)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)) 25 (Flapjack.Spt.ls 31)))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 8)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
                3
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 11))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 12 Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 29 (Flapjack.Spt.ls 22)))
                2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 Flapjack.Spt.ln) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 25)))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 4)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 2)))
                2 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 12)))
                3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 32 (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.ls 3)))
                3
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 26 (Flapjack.Spt.ls 2)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 9)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                2 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 1 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))))))
def optimized461 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(461, 2, optimizedBody461_177)
theorem optimize461_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source461, oracle461) = optimized461 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize461_eq
end InitECandidate.Proofs.WordStages
