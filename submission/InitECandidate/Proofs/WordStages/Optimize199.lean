import InitECandidate.Proofs.WordStages.Optimize183
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source199
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody199_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody199_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 80#64))

def optimizedBody199_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2)]

def optimizedBody199_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody199_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 88#64)

def optimizedBody199_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 6), (48, 4), (50, 8)]

def optimizedBody199_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48), (50, 50)]

def optimizedBody199_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50)]

def optimizedBody199_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody199_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_7 optimizedBody199_8

def optimizedBody199_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody199_6, 199, 2)) (some 68) ([2]) (some (2, optimizedBody199_9, 199, 3))

def optimizedBody199_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody199_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody199_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 88#64)

def optimizedBody199_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 4), (50, 50), (52, 2)]

def optimizedBody199_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (8, 50), (52, 52)]

def optimizedBody199_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (8, 50), (52, 52)]

def optimizedBody199_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_16 optimizedBody199_8

def optimizedBody199_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody199_15, 199, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody199_17, 199, 5))

def optimizedBody199_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody199_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody199_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (46, 4)]

def optimizedBody199_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody199_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 8), (52, 52)]

def optimizedBody199_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (4, 46), (10, 48), (12, 50), (52, 52)]

def optimizedBody199_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (10, 48), (12, 50), (52, 52)]

def optimizedBody199_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_25 optimizedBody199_8

def optimizedBody199_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody199_24, 199, 6)) (some 68) ([2]) (some (2, optimizedBody199_26, 199, 7))

def optimizedBody199_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody199_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody199_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody199_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (8, 8), (6, 0)]

def optimizedBody199_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody199_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (4, 4), (6, 6), (44, 44), (46, 10), (48, 8), (50, 12), (52, 52)]

def optimizedBody199_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (6, 48), (0, 50), (4, 52)]

def optimizedBody199_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48), (0, 50), (4, 52)]

def optimizedBody199_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_35 optimizedBody199_8

def optimizedBody199_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody199_34, 199, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody199_36, 199, 9))

def optimizedBody199_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody199_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody199_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody199_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody199_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody199_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody199_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody199_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 4)]

def optimizedBody199_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (8, 48), (50, 50)]

def optimizedBody199_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (50, 50)]

def optimizedBody199_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_47 optimizedBody199_8

def optimizedBody199_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody199_46, 199, 10)) (some 68) ([2]) (some (2, optimizedBody199_48, 199, 11))

def optimizedBody199_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody199_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody199_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody199_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody199_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 50), (52, 2)]

def optimizedBody199_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50), (6, 52)]

def optimizedBody199_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50), (6, 52)]

def optimizedBody199_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_56 optimizedBody199_8

def optimizedBody199_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody199_55, 199, 12)) (some 77) ([2, 4, 6]) (some (2, optimizedBody199_57, 199, 13))

def optimizedBody199_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody199_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody199_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (48, 50)]

def optimizedBody199_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (48, 50)]

def optimizedBody199_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_62 optimizedBody199_8

def optimizedBody199_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody199_61, 199, 14)) (some 68) ([2]) (some (2, optimizedBody199_63, 199, 15))

def optimizedBody199_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def optimizedBody199_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody199_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody199_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody199_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2), (48, 48)]

def optimizedBody199_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46), (0, 48)]

def optimizedBody199_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46), (0, 48)]

def optimizedBody199_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_71 optimizedBody199_8

def optimizedBody199_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody199_70, 199, 16)) (some 77) ([2, 4, 6]) (some (2, optimizedBody199_72, 199, 17))

def optimizedBody199_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody199_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody199_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody199_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody199_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody199_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_77 optimizedBody199_78

def optimizedBody199_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_76 optimizedBody199_79

def optimizedBody199_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_75 optimizedBody199_80

def optimizedBody199_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_74 optimizedBody199_81

def optimizedBody199_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_42 optimizedBody199_82

def optimizedBody199_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_11 optimizedBody199_83

def optimizedBody199_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_73 optimizedBody199_84

def optimizedBody199_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_69 optimizedBody199_85

def optimizedBody199_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_68 optimizedBody199_86

def optimizedBody199_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_67 optimizedBody199_87

def optimizedBody199_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_42 optimizedBody199_88

def optimizedBody199_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_66 optimizedBody199_89

def optimizedBody199_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_65 optimizedBody199_90

def optimizedBody199_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_11 optimizedBody199_91

def optimizedBody199_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_64 optimizedBody199_92

def optimizedBody199_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_45 optimizedBody199_93

def optimizedBody199_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_60 optimizedBody199_94

def optimizedBody199_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_43 optimizedBody199_95

def optimizedBody199_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_42 optimizedBody199_96

def optimizedBody199_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_41 optimizedBody199_97

def optimizedBody199_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_40 optimizedBody199_98

def optimizedBody199_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_59 optimizedBody199_99

def optimizedBody199_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_38 optimizedBody199_100

def optimizedBody199_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_11 optimizedBody199_101

def optimizedBody199_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_58 optimizedBody199_102

def optimizedBody199_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_54 optimizedBody199_103

def optimizedBody199_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_53 optimizedBody199_104

def optimizedBody199_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_52 optimizedBody199_105

def optimizedBody199_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_19 optimizedBody199_106

def optimizedBody199_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_51 optimizedBody199_107

def optimizedBody199_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_50 optimizedBody199_108

def optimizedBody199_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_11 optimizedBody199_109

def optimizedBody199_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_49 optimizedBody199_110

def optimizedBody199_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_45 optimizedBody199_111

def optimizedBody199_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_44 optimizedBody199_112

def optimizedBody199_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_43 optimizedBody199_113

def optimizedBody199_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_42 optimizedBody199_114

def optimizedBody199_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_41 optimizedBody199_115

def optimizedBody199_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_40 optimizedBody199_116

def optimizedBody199_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_39 optimizedBody199_117

def optimizedBody199_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_38 optimizedBody199_118

def optimizedBody199_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_11 optimizedBody199_119

def optimizedBody199_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_37 optimizedBody199_120

def optimizedBody199_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_33 optimizedBody199_121

def optimizedBody199_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_32 optimizedBody199_122

def optimizedBody199_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_31 optimizedBody199_123

def optimizedBody199_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_22 optimizedBody199_124

def optimizedBody199_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_30 optimizedBody199_125

def optimizedBody199_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_29 optimizedBody199_126

def optimizedBody199_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_28 optimizedBody199_127

def optimizedBody199_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_11 optimizedBody199_128

def optimizedBody199_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_27 optimizedBody199_129

def optimizedBody199_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_23 optimizedBody199_130

def optimizedBody199_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_22 optimizedBody199_131

def optimizedBody199_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_21 optimizedBody199_132

def optimizedBody199_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_20 optimizedBody199_133

def optimizedBody199_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_19 optimizedBody199_134

def optimizedBody199_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_11 optimizedBody199_135

def optimizedBody199_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_18 optimizedBody199_136

def optimizedBody199_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_14 optimizedBody199_137

def optimizedBody199_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_13 optimizedBody199_138

def optimizedBody199_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_12 optimizedBody199_139

def optimizedBody199_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_11 optimizedBody199_140

def optimizedBody199_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_10 optimizedBody199_141

def optimizedBody199_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_5 optimizedBody199_142

def optimizedBody199_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_4 optimizedBody199_143

def optimizedBody199_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_3 optimizedBody199_144

def optimizedBody199_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_2 optimizedBody199_145

def optimizedBody199_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_1 optimizedBody199_146

def optimizedBody199_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody199_0 optimizedBody199_147

def oracle199 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 3
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 4 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 25
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3))))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                Flapjack.Spt.ln)
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 24))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
              4
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 25
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24))) 23
                (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 25))) 24
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 25 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23))) 22
                Flapjack.Spt.ln)))))))
def optimized199 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(199, 2, optimizedBody199_148)
theorem optimize199_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source199, oracle199) = optimized199 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize199_eq
end InitECandidate.Proofs.WordStages
