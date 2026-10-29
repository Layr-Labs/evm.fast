import InitECandidate.Proofs.WordStages.Optimize651
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source667
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody667_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody667_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 11#64)

def optimizedBody667_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody667_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (14, 2), (12, 12)]

def optimizedBody667_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody667_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody667_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody667_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody667_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody667_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody667_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody667_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody667_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody667_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 4), (14, 14)]

def optimizedBody667_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody667_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody667_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 52), (50, 14)]

def optimizedBody667_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody667_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 52), (50, 50)]

def optimizedBody667_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody667_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 2)]

def optimizedBody667_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 82#64)

def optimizedBody667_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 2), (48, 6), (50, 50), (52, 52), (54, 4), (56, 8)]

def optimizedBody667_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (0, 6), (12, 4), (14, 8), (44, 44), (10, 46), (6, 48), (50, 50), (52, 52), (4, 54), (8, 56)]

def optimizedBody667_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (6, 48), (50, 50), (52, 52), (4, 54), (8, 56)]

def optimizedBody667_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody667_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_24 optimizedBody667_25

def optimizedBody667_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody667_23, 667, 2)) (some 665) ([2, 4, 6, 8, 10]) (some (2, optimizedBody667_26, 667, 3))

def optimizedBody667_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody667_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18#64)

def optimizedBody667_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 16), (48, 0), (50, 50), (52, 52), (54, 12), (56, 14)]

def optimizedBody667_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (18, 6), (20, 4), (22, 8), (44, 44), (10, 46), (14, 48), (6, 50), (4, 52), (12, 54), (16, 56)]

def optimizedBody667_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (14, 48), (6, 50), (4, 52), (12, 54), (16, 56)]

def optimizedBody667_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_32 optimizedBody667_25

def optimizedBody667_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody667_31, 667, 4)) (some 665) ([2, 4, 6, 8, 10]) (some (2, optimizedBody667_33, 667, 5))

def optimizedBody667_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody667_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody667_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody667_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 4), (6, 6)]

def optimizedBody667_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody667_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 52), (50, 6)]

def optimizedBody667_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 24), (48, 18), (50, 50),
    (52, 52), (54, 20), (56, 22)]

def optimizedBody667_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 8), (20, 2), (6, 6), (44, 44), (10, 46), (14, 48), (0, 50), (18, 52), (12, 54), (16, 56)]

def optimizedBody667_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (14, 48), (0, 50), (18, 52), (12, 54), (16, 56)]

def optimizedBody667_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_43 optimizedBody667_25

def optimizedBody667_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody667_42, 667, 6)) (some 659) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody667_44, 667, 7))

def optimizedBody667_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody667_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 18 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody667_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody667_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody667_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (20, 20), (8, 8), (6, 6), (4, 4)]

def optimizedBody667_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody667_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody667_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody667_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody667_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody667_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody667_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody667_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 18 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody667_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody667_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody667_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 18), (0, 0)]

def optimizedBody667_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody667_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody667_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (48, 48), (46, 0)]

def optimizedBody667_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody667_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (48, 48), (46, 46)]

def optimizedBody667_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody667_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48)]

def optimizedBody667_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (10, 2), (6, 6), (16, 44), (14, 46), (12, 48)]

def optimizedBody667_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (14, 46), (12, 48)]

def optimizedBody667_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_70 optimizedBody667_25

def optimizedBody667_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody667_69, 667, 8)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody667_71, 667, 9))

def optimizedBody667_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody667_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody667_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody667_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody667_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody667_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody667_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody667_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody667_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody667_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody667_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 16), (14, 14), (12, 12)]

def optimizedBody667_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody667_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_83 optimizedBody667_84

def optimizedBody667_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_82 optimizedBody667_85

def optimizedBody667_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_81 optimizedBody667_86

def optimizedBody667_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_80 optimizedBody667_87

def optimizedBody667_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_79 optimizedBody667_88

def optimizedBody667_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_78 optimizedBody667_89

def optimizedBody667_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_77 optimizedBody667_90

def optimizedBody667_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_76 optimizedBody667_91

def optimizedBody667_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_75 optimizedBody667_92

def optimizedBody667_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_74 optimizedBody667_93

def optimizedBody667_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_10 optimizedBody667_94

def optimizedBody667_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_9 optimizedBody667_95

def optimizedBody667_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_73 optimizedBody667_96

def optimizedBody667_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_5 optimizedBody667_97

def optimizedBody667_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_2 optimizedBody667_98

def optimizedBody667_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_72 optimizedBody667_99

def optimizedBody667_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_68 optimizedBody667_100

def optimizedBody667_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_67 optimizedBody667_101

def optimizedBody667_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_66 optimizedBody667_102

def optimizedBody667_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_65 optimizedBody667_103

def optimizedBody667_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_64 optimizedBody667_104

def optimizedBody667_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_63 optimizedBody667_105

def optimizedBody667_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_62 optimizedBody667_106

def optimizedBody667_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_61 optimizedBody667_107

def optimizedBody667_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_12 optimizedBody667_108

def optimizedBody667_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_60 optimizedBody667_109

def optimizedBody667_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_48 optimizedBody667_110

def optimizedBody667_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_59 optimizedBody667_111

def optimizedBody667_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_58 optimizedBody667_112

def optimizedBody667_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_46 optimizedBody667_113

def optimizedBody667_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_57 optimizedBody667_114

def optimizedBody667_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_56 optimizedBody667_115

def optimizedBody667_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_55 optimizedBody667_116

def optimizedBody667_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_54 optimizedBody667_117

def optimizedBody667_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_53 optimizedBody667_118

def optimizedBody667_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_52 optimizedBody667_119

def optimizedBody667_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_51 optimizedBody667_120

def optimizedBody667_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_50 optimizedBody667_121

def optimizedBody667_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_49 optimizedBody667_122

def optimizedBody667_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_48 optimizedBody667_123

def optimizedBody667_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_47 optimizedBody667_124

def optimizedBody667_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_46 optimizedBody667_125

def optimizedBody667_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_2 optimizedBody667_126

def optimizedBody667_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_45 optimizedBody667_127

def optimizedBody667_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_41 optimizedBody667_128

def optimizedBody667_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_19 optimizedBody667_129

def optimizedBody667_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_18 optimizedBody667_130

def optimizedBody667_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_17 optimizedBody667_131

def optimizedBody667_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_40 optimizedBody667_132

def optimizedBody667_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_15 optimizedBody667_133

def optimizedBody667_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_39 optimizedBody667_134

def optimizedBody667_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_38 optimizedBody667_135

def optimizedBody667_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_12 optimizedBody667_136

def optimizedBody667_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_37 optimizedBody667_137

def optimizedBody667_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_36 optimizedBody667_138

def optimizedBody667_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_35 optimizedBody667_139

def optimizedBody667_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_7 optimizedBody667_140

def optimizedBody667_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_2 optimizedBody667_141

def optimizedBody667_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_34 optimizedBody667_142

def optimizedBody667_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_30 optimizedBody667_143

def optimizedBody667_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_29 optimizedBody667_144

def optimizedBody667_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_28 optimizedBody667_145

def optimizedBody667_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_2 optimizedBody667_146

def optimizedBody667_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_27 optimizedBody667_147

def optimizedBody667_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_22 optimizedBody667_148

def optimizedBody667_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_21 optimizedBody667_149

def optimizedBody667_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_20 optimizedBody667_150

def optimizedBody667_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_19 optimizedBody667_151

def optimizedBody667_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_18 optimizedBody667_152

def optimizedBody667_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_17 optimizedBody667_153

def optimizedBody667_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_16 optimizedBody667_154

def optimizedBody667_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_15 optimizedBody667_155

def optimizedBody667_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_14 optimizedBody667_156

def optimizedBody667_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_13 optimizedBody667_157

def optimizedBody667_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_12 optimizedBody667_158

def optimizedBody667_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_11 optimizedBody667_159

def optimizedBody667_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_10 optimizedBody667_160

def optimizedBody667_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_9 optimizedBody667_161

def optimizedBody667_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_8 optimizedBody667_162

def optimizedBody667_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_7 optimizedBody667_163

def optimizedBody667_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_6 optimizedBody667_164

def optimizedBody667_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_5 optimizedBody667_165

def optimizedBody667_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_2 optimizedBody667_166

def optimizedBody667_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody667_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_2 optimizedBody667_168

def optimizedBody667_170 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 12) optimizedBody667_167 optimizedBody667_169

def optimizedBody667_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (14, 14), (12, 12)]

def optimizedBody667_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_2 optimizedBody667_171

def optimizedBody667_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_170 optimizedBody667_172

def optimizedBody667_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_5 optimizedBody667_173

def optimizedBody667_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_4 optimizedBody667_174

def optimizedBody667_176 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody667_175 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody667_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody667_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody667_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody667_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_178 optimizedBody667_179

def optimizedBody667_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_177 optimizedBody667_180

def optimizedBody667_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_2 optimizedBody667_181

def optimizedBody667_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_176 optimizedBody667_182

def optimizedBody667_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_3 optimizedBody667_183

def optimizedBody667_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_2 optimizedBody667_184

def optimizedBody667_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_1 optimizedBody667_185

def optimizedBody667_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody667_0 optimizedBody667_186

def oracle667 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 25 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 8)))
                0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)) 25 Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 3)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 10)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 1)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 9 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 0)) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 1)) 6
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 (Flapjack.Spt.ls 2)) 25 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 10 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 Flapjack.Spt.ln))
                1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 6)))
                0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 3 Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 3)) 2 (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 9))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.ls 9)) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 10)) Flapjack.Spt.ln) 6
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 12 (Flapjack.Spt.ls 2)) 4 (Flapjack.Spt.ls 8)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 4)) 4 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 3)) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 28)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 26))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 27)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 25)))))))))
def optimized667 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(667, 2, optimizedBody667_187)
theorem optimize667_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source667, oracle667) = optimized667 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize667_eq
end InitECandidate.Proofs.WordStages
