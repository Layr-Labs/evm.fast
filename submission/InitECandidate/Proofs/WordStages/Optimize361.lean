import InitECandidate.Proofs.WordStages.Optimize345
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source361
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody361_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (44, 0), (46, 4), (48, 2), (52, 6)]

def optimizedBody361_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (52, 52)]

def optimizedBody361_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (52, 52)]

def optimizedBody361_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody361_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_2 optimizedBody361_3

def optimizedBody361_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody361_1, 361, 2)) (some 360) ([2, 4]) (some (2, optimizedBody361_4, 361, 3))

def optimizedBody361_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody361_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (50, 4), (48, 0), (52, 52)]

def optimizedBody361_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (12, 46), (50, 50), (0, 48), (8, 52)]

def optimizedBody361_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (50, 50), (0, 48), (8, 52)]

def optimizedBody361_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_9 optimizedBody361_3

def optimizedBody361_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody361_8, 361, 4)) (some 178) ([2, 4]) (some (2, optimizedBody361_10, 361, 5))

def optimizedBody361_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody361_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody361_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody361_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 4), (12, 12), (50, 50), (46, 0), (10, 10), (8, 8), (48, 2)]

def optimizedBody361_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody361_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody361_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody361_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 4)]

def optimizedBody361_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody361_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody361_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody361_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody361_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody361_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody361_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def optimizedBody361_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4)]

def optimizedBody361_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 2), (48, 0), (50, 14), (52, 12), (54, 50), (56, 46), (58, 10), (62, 8), (60, 48)]

def optimizedBody361_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (4, 60)]

def optimizedBody361_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (4, 60)]

def optimizedBody361_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_30 optimizedBody361_3

def optimizedBody361_32 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody361_29, 361, 6)) (some 180) ([2]) (some (2, optimizedBody361_31, 361, 7))

def optimizedBody361_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0), (2, 4)]

def optimizedBody361_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody361_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody361_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (60, 6), (56, 56), (58, 58), (62, 62),
    (64, 2)]

def optimizedBody361_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (60, 60), (56, 56), (58, 58), (62, 62), (6, 64)]

def optimizedBody361_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (60, 60), (56, 56), (58, 58), (62, 62), (6, 64)]

def optimizedBody361_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_38 optimizedBody361_3

def optimizedBody361_40 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody361_37, 361, 8)) (some 178) ([2, 4]) (some (2, optimizedBody361_39, 361, 9))

def optimizedBody361_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody361_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody361_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody361_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody361_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody361_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (60, 60), (56, 56), (58, 58),
    (62, 62), (64, 2)]

def optimizedBody361_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (4, 48), (48, 50), (50, 52), (52, 54), (60, 60), (54, 56), (56, 58), (62, 62), (6, 64)]

def optimizedBody361_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (50, 52), (52, 54), (60, 60), (54, 56), (56, 58), (62, 62), (6, 64)]

def optimizedBody361_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_48 optimizedBody361_3

def optimizedBody361_50 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody361_47, 361, 10)) (some 176) ([2, 4, 6]) (some (2, optimizedBody361_49, 361, 11))

def optimizedBody361_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody361_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody361_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (58, 4), (48, 48), (50, 50), (52, 52), (60, 60), (54, 54), (56, 56), (62, 62),
    (64, 2)]

def optimizedBody361_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (10, 46), (58, 58), (6, 48), (46, 50), (50, 52), (60, 60), (48, 54), (54, 56), (52, 62), (0, 64)]

def optimizedBody361_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (10, 46), (58, 58), (6, 48), (46, 50), (50, 52), (60, 60), (48, 54), (54, 56), (52, 62), (0, 64)]

def optimizedBody361_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_55 optimizedBody361_3

def optimizedBody361_57 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody361_54, 361, 12)) (some 178) ([2, 4]) (some (2, optimizedBody361_56, 361, 13))

def optimizedBody361_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody361_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody361_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody361_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 4), (10, 10), (58, 58), (56, 6), (46, 46), (50, 50), (60, 60), (48, 48), (8, 8), (54, 54), (52, 52),
    (0, 0), (2, 2)]

def optimizedBody361_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody361_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody361_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody361_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody361_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody361_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 10), (58, 58), (56, 56), (48, 46), (50, 50), (60, 60), (52, 48), (54, 8),
    (62, 54), (64, 52), (66, 0), (68, 2)]

def optimizedBody361_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (12, 44), (10, 46), (14, 58), (16, 56), (18, 48), (20, 50), (22, 60), (24, 52), (8, 54), (26, 62), (28, 64),
    (0, 66), (6, 68)]

def optimizedBody361_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (12, 44), (10, 46), (14, 58), (16, 56), (18, 48), (20, 50), (22, 60), (24, 52), (8, 54), (26, 62), (28, 64),
    (0, 66), (6, 68)]

def optimizedBody361_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_69 optimizedBody361_3

def optimizedBody361_71 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody361_68, 361, 14)) (some 176) ([2, 4, 6]) (some (2, optimizedBody361_70, 361, 15))

def optimizedBody361_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody361_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 12), (4, 4), (10, 10), (58, 14), (56, 16), (46, 18), (50, 20), (60, 22), (48, 24), (8, 8), (54, 26), (52, 28),
    (0, 0), (2, 2)]

def optimizedBody361_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody361_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_73 optimizedBody361_74

def optimizedBody361_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_72 optimizedBody361_75

def optimizedBody361_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_43 optimizedBody361_76

def optimizedBody361_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_42 optimizedBody361_77

def optimizedBody361_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_41 optimizedBody361_78

def optimizedBody361_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_79

def optimizedBody361_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_71 optimizedBody361_80

def optimizedBody361_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_67 optimizedBody361_81

def optimizedBody361_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_66 optimizedBody361_82

def optimizedBody361_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_65 optimizedBody361_83

def optimizedBody361_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_64 optimizedBody361_84

def optimizedBody361_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_63 optimizedBody361_85

def optimizedBody361_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_43 optimizedBody361_86

def optimizedBody361_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_87

def optimizedBody361_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody361_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_89

def optimizedBody361_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 10) optimizedBody361_88 optimizedBody361_90

def optimizedBody361_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 6), (4, 4), (10, 10), (58, 12), (56, 14), (46, 16), (50, 18), (60, 20), (48, 22), (8, 8), (54, 24), (52, 26),
    (0, 0), (2, 2)]

def optimizedBody361_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_92

def optimizedBody361_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_91 optimizedBody361_93

def optimizedBody361_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_62 optimizedBody361_94

def optimizedBody361_96 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody361_95 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody361_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54)]

def optimizedBody361_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody361_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (12, 46), (50, 50), (46, 48), (10, 10), (8, 52), (48, 2)]

def optimizedBody361_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_99 optimizedBody361_74

def optimizedBody361_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_98 optimizedBody361_100

def optimizedBody361_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_97 optimizedBody361_101

def optimizedBody361_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_102

def optimizedBody361_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_96 optimizedBody361_103

def optimizedBody361_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_61 optimizedBody361_104

def optimizedBody361_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_105

def optimizedBody361_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_60 optimizedBody361_106

def optimizedBody361_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_59 optimizedBody361_107

def optimizedBody361_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_58 optimizedBody361_108

def optimizedBody361_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_13 optimizedBody361_109

def optimizedBody361_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_12 optimizedBody361_110

def optimizedBody361_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_111

def optimizedBody361_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_57 optimizedBody361_112

def optimizedBody361_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_53 optimizedBody361_113

def optimizedBody361_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_52 optimizedBody361_114

def optimizedBody361_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_51 optimizedBody361_115

def optimizedBody361_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_116

def optimizedBody361_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_50 optimizedBody361_117

def optimizedBody361_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_46 optimizedBody361_118

def optimizedBody361_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_45 optimizedBody361_119

def optimizedBody361_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_44 optimizedBody361_120

def optimizedBody361_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_43 optimizedBody361_121

def optimizedBody361_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_42 optimizedBody361_122

def optimizedBody361_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_41 optimizedBody361_123

def optimizedBody361_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_124

def optimizedBody361_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_40 optimizedBody361_125

def optimizedBody361_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_36 optimizedBody361_126

def optimizedBody361_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_35 optimizedBody361_127

def optimizedBody361_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_34 optimizedBody361_128

def optimizedBody361_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_33 optimizedBody361_129

def optimizedBody361_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_130

def optimizedBody361_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_32 optimizedBody361_131

def optimizedBody361_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_28 optimizedBody361_132

def optimizedBody361_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_20 optimizedBody361_133

def optimizedBody361_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_27 optimizedBody361_134

def optimizedBody361_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_26 optimizedBody361_135

def optimizedBody361_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_25 optimizedBody361_136

def optimizedBody361_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_24 optimizedBody361_137

def optimizedBody361_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_23 optimizedBody361_138

def optimizedBody361_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_22 optimizedBody361_139

def optimizedBody361_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_21 optimizedBody361_140

def optimizedBody361_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_20 optimizedBody361_141

def optimizedBody361_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_19 optimizedBody361_142

def optimizedBody361_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_18 optimizedBody361_143

def optimizedBody361_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_17 optimizedBody361_144

def optimizedBody361_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_145

def optimizedBody361_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) optimizedBody361_146 optimizedBody361_90

def optimizedBody361_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4), (12, 12), (50, 2), (46, 6), (10, 10), (8, 8), (48, 14)]

def optimizedBody361_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_148

def optimizedBody361_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_147 optimizedBody361_149

def optimizedBody361_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_16 optimizedBody361_150

def optimizedBody361_152 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody361_151 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody361_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (0, 48)]

def optimizedBody361_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody361_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody361_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_25 optimizedBody361_155

def optimizedBody361_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_154 optimizedBody361_156

def optimizedBody361_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_153 optimizedBody361_157

def optimizedBody361_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_158

def optimizedBody361_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_152 optimizedBody361_159

def optimizedBody361_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_15 optimizedBody361_160

def optimizedBody361_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_161

def optimizedBody361_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_14 optimizedBody361_162

def optimizedBody361_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_13 optimizedBody361_163

def optimizedBody361_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_12 optimizedBody361_164

def optimizedBody361_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_165

def optimizedBody361_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_11 optimizedBody361_166

def optimizedBody361_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_7 optimizedBody361_167

def optimizedBody361_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_168

def optimizedBody361_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_5 optimizedBody361_169

def optimizedBody361_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_0 optimizedBody361_170

def oracle361 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 10))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  6 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))))
                26
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  1 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 9)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  22 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  23 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 3)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 14)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 5
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 7))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  2 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                  0 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 8)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln) 4 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  5 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 10))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  25 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 31)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 13)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 9)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 5)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 29 (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25)))
                26 (Flapjack.Spt.ls 26)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 Flapjack.Spt.ln) (Flapjack.Spt.ls 24))
                (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 30 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)))
                23 (Flapjack.Spt.ls 25)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 32 (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 27)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 31))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24)))
                24 (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 30)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln) (Flapjack.Spt.ls 23))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 27 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                22 (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 31 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 26)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def optimized361 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(361, 4, optimizedBody361_171)
theorem optimize361_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source361, oracle361) = optimized361 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize361_eq
end InitECandidate.Proofs.WordStages
