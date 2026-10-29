import InitECandidate.Proofs.WordStages.Optimize826
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source842
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody842_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody842_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody842_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 4)]

def optimizedBody842_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody842_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody842_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody842_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody842_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody842_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 0), (8, 8), (4, 4), (48, 6), (10, 10), (44, 2), (12, 12)]

def optimizedBody842_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody842_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody842_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody842_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody842_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody842_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody842_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def optimizedBody842_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody842_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody842_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody842_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody842_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 0), (48, 8), (50, 2), (52, 14), (54, 48), (56, 10), (58, 44), (60, 12)]

def optimizedBody842_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (46, 46), (10, 44), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60)]

def optimizedBody842_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (10, 44), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60)]

def optimizedBody842_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody842_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_22 optimizedBody842_23

def optimizedBody842_25 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody842_21, 842, 2)) (some 176) ([2, 4, 6]) (some (2, optimizedBody842_24, 842, 3))

def optimizedBody842_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody842_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody842_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody842_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody842_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody842_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 10), (48, 48), (62, 2), (50, 50), (52, 52), (8, 8), (54, 54), (56, 56), (58, 58), (0, 0), (6, 6),
    (60, 2), (4, 4)]

def optimizedBody842_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody842_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody842_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody842_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44)]

def optimizedBody842_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody842_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody842_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody842_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 10), (48, 48), (62, 62), (50, 50), (52, 52), (54, 8), (56, 54), (58, 56),
    (60, 58), (64, 0), (66, 60), (68, 2)]

def optimizedBody842_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (46, 46), (44, 44), (48, 48), (10, 62), (50, 50), (52, 52), (8, 54), (54, 56), (56, 58), (58, 60), (0, 64),
    (12, 66), (4, 68)]

def optimizedBody842_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (10, 62), (50, 50), (52, 52), (8, 54), (54, 56), (56, 58), (58, 60), (0, 64),
    (12, 66), (4, 68)]

def optimizedBody842_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_41 optimizedBody842_23

def optimizedBody842_43 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody842_40, 842, 4)) (some 176) ([2, 4, 6]) (some (2, optimizedBody842_42, 842, 5))

def optimizedBody842_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody842_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody842_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody842_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody842_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (44, 44), (48, 48), (62, 10), (50, 50), (52, 52), (8, 8), (54, 54), (56, 56), (58, 58), (0, 0), (6, 6),
    (60, 12), (4, 4)]

def optimizedBody842_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody842_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_48 optimizedBody842_49

def optimizedBody842_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_47 optimizedBody842_50

def optimizedBody842_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_46 optimizedBody842_51

def optimizedBody842_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_45 optimizedBody842_52

def optimizedBody842_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_44 optimizedBody842_53

def optimizedBody842_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_54

def optimizedBody842_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_43 optimizedBody842_55

def optimizedBody842_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_39 optimizedBody842_56

def optimizedBody842_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_38 optimizedBody842_57

def optimizedBody842_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_37 optimizedBody842_58

def optimizedBody842_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_36 optimizedBody842_59

def optimizedBody842_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_35 optimizedBody842_60

def optimizedBody842_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_34 optimizedBody842_61

def optimizedBody842_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_33 optimizedBody842_62

def optimizedBody842_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_63

def optimizedBody842_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody842_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_65

def optimizedBody842_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 8) optimizedBody842_64 optimizedBody842_66

def optimizedBody842_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (44, 10), (48, 12), (62, 14), (50, 16), (52, 18), (8, 8), (54, 20), (56, 22), (58, 24), (0, 0), (6, 6),
    (60, 26), (4, 4)]

def optimizedBody842_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_68

def optimizedBody842_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_67 optimizedBody842_69

def optimizedBody842_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_32 optimizedBody842_70

def optimizedBody842_72 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody842_71 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody842_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 60), (4, 4), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody842_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (46, 46), (0, 44), (44, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60)]

def optimizedBody842_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (0, 44), (44, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60)]

def optimizedBody842_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_75 optimizedBody842_23

def optimizedBody842_77 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody842_74, 842, 6)) (some 840) ([2, 4]) (some (2, optimizedBody842_76, 842, 7))

def optimizedBody842_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody842_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody842_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody842_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody842_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody842_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 44), (48, 2), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody842_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (4, 48), (6, 50), (50, 52), (52, 54), (54, 56), (56, 58)]

def optimizedBody842_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (4, 48), (6, 50), (50, 52), (52, 54), (54, 56), (56, 58)]

def optimizedBody842_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_85 optimizedBody842_23

def optimizedBody842_87 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody842_84, 842, 8)) (some 176) ([2, 4, 6]) (some (2, optimizedBody842_86, 842, 9))

def optimizedBody842_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody842_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody842_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (46, 46), (44, 44), (48, 6), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody842_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (46, 46), (0, 44), (6, 48), (14, 50), (10, 52), (16, 54), (12, 56)]

def optimizedBody842_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (6, 48), (14, 50), (10, 52), (16, 54), (12, 56)]

def optimizedBody842_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_92 optimizedBody842_23

def optimizedBody842_94 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody842_91, 842, 10)) (some 840) ([2, 4]) (some (2, optimizedBody842_93, 842, 11))

def optimizedBody842_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody842_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (8, 8), (4, 4), (48, 14), (10, 10), (44, 16), (12, 12)]

def optimizedBody842_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_96 optimizedBody842_49

def optimizedBody842_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_95 optimizedBody842_97

def optimizedBody842_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_46 optimizedBody842_98

def optimizedBody842_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_37 optimizedBody842_99

def optimizedBody842_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_78 optimizedBody842_100

def optimizedBody842_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_101

def optimizedBody842_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_94 optimizedBody842_102

def optimizedBody842_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_90 optimizedBody842_103

def optimizedBody842_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_89 optimizedBody842_104

def optimizedBody842_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_88 optimizedBody842_105

def optimizedBody842_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_106

def optimizedBody842_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_87 optimizedBody842_107

def optimizedBody842_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_83 optimizedBody842_108

def optimizedBody842_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_82 optimizedBody842_109

def optimizedBody842_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_81 optimizedBody842_110

def optimizedBody842_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_80 optimizedBody842_111

def optimizedBody842_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_17 optimizedBody842_112

def optimizedBody842_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_79 optimizedBody842_113

def optimizedBody842_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_78 optimizedBody842_114

def optimizedBody842_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_115

def optimizedBody842_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_77 optimizedBody842_116

def optimizedBody842_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_73 optimizedBody842_117

def optimizedBody842_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_118

def optimizedBody842_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_72 optimizedBody842_119

def optimizedBody842_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_31 optimizedBody842_120

def optimizedBody842_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_121

def optimizedBody842_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_30 optimizedBody842_122

def optimizedBody842_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_29 optimizedBody842_123

def optimizedBody842_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_28 optimizedBody842_124

def optimizedBody842_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_5 optimizedBody842_125

def optimizedBody842_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_4 optimizedBody842_126

def optimizedBody842_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_27 optimizedBody842_127

def optimizedBody842_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_26 optimizedBody842_128

def optimizedBody842_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_129

def optimizedBody842_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_25 optimizedBody842_130

def optimizedBody842_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_20 optimizedBody842_131

def optimizedBody842_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_19 optimizedBody842_132

def optimizedBody842_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_18 optimizedBody842_133

def optimizedBody842_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_17 optimizedBody842_134

def optimizedBody842_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_16 optimizedBody842_135

def optimizedBody842_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_15 optimizedBody842_136

def optimizedBody842_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_14 optimizedBody842_137

def optimizedBody842_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_13 optimizedBody842_138

def optimizedBody842_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_12 optimizedBody842_139

def optimizedBody842_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_11 optimizedBody842_140

def optimizedBody842_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_10 optimizedBody842_141

def optimizedBody842_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_142

def optimizedBody842_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 10) optimizedBody842_143 optimizedBody842_66

def optimizedBody842_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (8, 8), (4, 4), (48, 2), (10, 10), (44, 6), (12, 12)]

def optimizedBody842_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_145

def optimizedBody842_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_144 optimizedBody842_146

def optimizedBody842_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_9 optimizedBody842_147

def optimizedBody842_149 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody842_148 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody842_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46)]

def optimizedBody842_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody842_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody842_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_152 optimizedBody842_23

def optimizedBody842_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody842_151, 842, 12)) (some 840) ([2, 4]) (some (2, optimizedBody842_153, 842, 13))

def optimizedBody842_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody842_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody842_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_155 optimizedBody842_156

def optimizedBody842_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_157

def optimizedBody842_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_154 optimizedBody842_158

def optimizedBody842_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_150 optimizedBody842_159

def optimizedBody842_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_160

def optimizedBody842_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_149 optimizedBody842_161

def optimizedBody842_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_8 optimizedBody842_162

def optimizedBody842_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_163

def optimizedBody842_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_6 optimizedBody842_164

def optimizedBody842_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_5 optimizedBody842_165

def optimizedBody842_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_4 optimizedBody842_166

def optimizedBody842_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_3 optimizedBody842_167

def optimizedBody842_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_2 optimizedBody842_168

def optimizedBody842_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_1 optimizedBody842_169

def optimizedBody842_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_0 optimizedBody842_170

def oracle842 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 28 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 1)) 4
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 Flapjack.Spt.ln)))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.ls 28)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 10)))
                24 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 7))) 4
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 4 (Flapjack.Spt.ls 3)))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 28 (Flapjack.Spt.ls 12)))
                4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.ls 9)))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 2)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 27 (Flapjack.Spt.ls 2)) 29
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              5
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 27)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 29 (Flapjack.Spt.ls 11)))
                2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8))) 6
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 2))))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2)) 27
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 6)))
                5
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 (Flapjack.Spt.ls 0)))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 29)) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)))
                5 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 31 Flapjack.Spt.ln)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 5)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 29)) 24 Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 28 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 27)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 30 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 28)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 27 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 29 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 30)) 25 Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))))
def optimized842 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(842, 3, optimizedBody842_171)
theorem optimize842_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source842, oracle842) = optimized842 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize842_eq
end InitECandidate.Proofs.WordStages
