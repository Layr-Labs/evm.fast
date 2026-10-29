import InitECandidate.Proofs.WordStages.Optimize851
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source867
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody867_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody867_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody867_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody867_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody867_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551200#64))

def optimizedBody867_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody867_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody867_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody867_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody867_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody867_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (50, 4), (46, 6), (48, 8)]

def optimizedBody867_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (50, 50), (6, 46), (4, 48)]

def optimizedBody867_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (6, 46), (4, 48)]

def optimizedBody867_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody867_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_12 optimizedBody867_13

def optimizedBody867_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_11, 867, 2)) (some 68) ([2]) (some (2, optimizedBody867_14, 867, 3))

def optimizedBody867_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody867_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody867_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody867_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody867_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (52, 2), (50, 50), (48, 8), (46, 10), (6, 6), (4, 4)]

def optimizedBody867_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody867_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody867_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody867_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody867_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody867_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody867_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody867_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody867_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody867_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody867_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (22, 22), (60, 2), (58, 0), (52, 52), (50, 50), (10, 10), (48, 48), (16, 16), (46, 46), (54, 6), (56, 4)]

def optimizedBody867_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (16, 16)]

def optimizedBody867_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody867_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody867_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody867_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody867_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody867_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody867_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody867_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody867_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody867_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551104#64))

def optimizedBody867_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody867_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 22), (48, 60), (50, 58), (52, 52), (54, 50), (56, 0), (60, 10), (58, 48),
    (64, 16), (62, 46), (66, 54), (68, 56)]

def optimizedBody867_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (60, 60), (58, 58), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody867_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (60, 60), (58, 58), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody867_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_46 optimizedBody867_13

def optimizedBody867_48 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody867_45, 867, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody867_47, 867, 5))

def optimizedBody867_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody867_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody867_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551096#64))

def optimizedBody867_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody867_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 0), (60, 60), (58, 58),
    (64, 64), (62, 62), (66, 66), (68, 68)]

def optimizedBody867_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (12, 52), (54, 54), (56, 56), (60, 60), (8, 58), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody867_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (12, 52), (54, 54), (56, 56), (60, 60), (8, 58), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody867_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_55 optimizedBody867_13

def optimizedBody867_57 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody867_54, 867, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody867_56, 867, 7))

def optimizedBody867_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def optimizedBody867_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody867_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody867_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody867_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1024#64)))

def optimizedBody867_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 12), (54, 54), (56, 56), (60, 60), (58, 8), (64, 64), (62, 62),
    (66, 66), (68, 68)]

def optimizedBody867_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (60, 60), (6, 58), (64, 64), (4, 62),
    (66, 66), (68, 68)]

def optimizedBody867_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (60, 60), (6, 58), (64, 64), (4, 62),
    (66, 66), (68, 68)]

def optimizedBody867_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_65 optimizedBody867_13

def optimizedBody867_67 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody867_64, 867, 8)) (some 68) ([2]) (some (2, optimizedBody867_66, 867, 9))

def optimizedBody867_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 0), (60, 60),
    (62, 6), (64, 64), (66, 66), (68, 68)]

def optimizedBody867_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (54, 54), (4, 56), (0, 58), (56, 60), (8, 62), (60, 64), (64, 66),
    (66, 68)]

def optimizedBody867_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (54, 54), (4, 56), (0, 58), (56, 60), (8, 62), (60, 64),
    (64, 66), (66, 68)]

def optimizedBody867_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_70 optimizedBody867_13

def optimizedBody867_72 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody867_69, 867, 10)) (some 77) ([2, 4, 6]) (some (2, optimizedBody867_71, 867, 11))

def optimizedBody867_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody867_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody867_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1024#64)))

def optimizedBody867_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 2), (54, 54), (4, 4), (56, 56), (8, 8), (60, 60), (0, 0), (64, 64),
    (66, 66)]

def optimizedBody867_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_75 optimizedBody867_76

def optimizedBody867_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_74 optimizedBody867_77

def optimizedBody867_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_73 optimizedBody867_78

def optimizedBody867_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_79

def optimizedBody867_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_72 optimizedBody867_80

def optimizedBody867_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_68 optimizedBody867_81

def optimizedBody867_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_82

def optimizedBody867_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_67 optimizedBody867_83

def optimizedBody867_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_63 optimizedBody867_84

def optimizedBody867_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_62 optimizedBody867_85

def optimizedBody867_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_61 optimizedBody867_86

def optimizedBody867_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_60 optimizedBody867_87

def optimizedBody867_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_88

def optimizedBody867_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 12), (54, 54), (4, 56), (56, 60), (8, 8), (60, 64), (0, 62), (64, 66),
    (66, 68)]

def optimizedBody867_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_90

def optimizedBody867_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 0) optimizedBody867_89 optimizedBody867_91

def optimizedBody867_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody867_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody867_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody867_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody867_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 8), (60, 60),
    (62, 0), (64, 64), (66, 66)]

def optimizedBody867_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (22, 46), (20, 48), (18, 50), (12, 52), (14, 54), (10, 56), (8, 58), (16, 60), (6, 62), (4, 64), (0, 66)]

def optimizedBody867_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (22, 46), (20, 48), (18, 50), (12, 52), (14, 54), (10, 56), (8, 58), (16, 60), (6, 62), (4, 64),
    (0, 66)]

def optimizedBody867_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_99 optimizedBody867_13

def optimizedBody867_101 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_98, 867, 12)) (some 848) ([2, 4, 6]) (some (2, optimizedBody867_100, 867, 13))

def optimizedBody867_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody867_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody867_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (22, 22), (20, 20), (18, 18), (12, 12), (14, 14), (10, 10), (8, 8), (16, 16), (6, 6), (4, 4), (0, 0)]

def optimizedBody867_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_103 optimizedBody867_104

def optimizedBody867_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_102 optimizedBody867_105

def optimizedBody867_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_106

def optimizedBody867_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_101 optimizedBody867_107

def optimizedBody867_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_97 optimizedBody867_108

def optimizedBody867_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_96 optimizedBody867_109

def optimizedBody867_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_95 optimizedBody867_110

def optimizedBody867_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_94 optimizedBody867_111

def optimizedBody867_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_6 optimizedBody867_112

def optimizedBody867_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_93 optimizedBody867_113

def optimizedBody867_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_6 optimizedBody867_114

def optimizedBody867_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_115

def optimizedBody867_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_92 optimizedBody867_116

def optimizedBody867_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_59 optimizedBody867_117

def optimizedBody867_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_58 optimizedBody867_118

def optimizedBody867_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_119

def optimizedBody867_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (22, 46), (20, 48), (18, 50), (12, 12), (14, 54), (10, 60), (8, 8), (16, 64), (6, 62), (4, 66), (0, 68)]

def optimizedBody867_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_121

def optimizedBody867_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody867_120 optimizedBody867_122

def optimizedBody867_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_104

def optimizedBody867_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_123 optimizedBody867_124

def optimizedBody867_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_125

def optimizedBody867_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_126

def optimizedBody867_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_127

def optimizedBody867_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_57 optimizedBody867_128

def optimizedBody867_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_53 optimizedBody867_129

def optimizedBody867_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_52 optimizedBody867_130

def optimizedBody867_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_51 optimizedBody867_131

def optimizedBody867_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_41 optimizedBody867_132

def optimizedBody867_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_40 optimizedBody867_133

def optimizedBody867_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_39 optimizedBody867_134

def optimizedBody867_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_50 optimizedBody867_135

def optimizedBody867_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_136

def optimizedBody867_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_137

def optimizedBody867_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (22, 46), (20, 48), (18, 50), (12, 52), (14, 54), (10, 60), (8, 58), (16, 64), (6, 62), (4, 66), (0, 68)]

def optimizedBody867_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_139

def optimizedBody867_141 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody867_138 optimizedBody867_140

def optimizedBody867_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_141 optimizedBody867_124

def optimizedBody867_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_49 optimizedBody867_142

def optimizedBody867_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_143

def optimizedBody867_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_144

def optimizedBody867_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_145

def optimizedBody867_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody867_146 optimizedBody867_140

def optimizedBody867_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody867_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (22, 22), (60, 20), (58, 18), (52, 12), (50, 14), (10, 10), (48, 8), (16, 16), (46, 6), (54, 4), (56, 0)]

def optimizedBody867_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody867_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_149 optimizedBody867_150

def optimizedBody867_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_148 optimizedBody867_151

def optimizedBody867_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_33 optimizedBody867_152

def optimizedBody867_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_153

def optimizedBody867_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_147 optimizedBody867_154

def optimizedBody867_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_155

def optimizedBody867_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_6 optimizedBody867_156

def optimizedBody867_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_157

def optimizedBody867_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_48 optimizedBody867_158

def optimizedBody867_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_44 optimizedBody867_159

def optimizedBody867_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_43 optimizedBody867_160

def optimizedBody867_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_42 optimizedBody867_161

def optimizedBody867_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_41 optimizedBody867_162

def optimizedBody867_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_40 optimizedBody867_163

def optimizedBody867_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_39 optimizedBody867_164

def optimizedBody867_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_38 optimizedBody867_165

def optimizedBody867_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_166

def optimizedBody867_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_37 optimizedBody867_167

def optimizedBody867_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_36 optimizedBody867_168

def optimizedBody867_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_35 optimizedBody867_169

def optimizedBody867_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_34 optimizedBody867_170

def optimizedBody867_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_33 optimizedBody867_171

def optimizedBody867_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_172

def optimizedBody867_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody867_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_174

def optimizedBody867_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 16 (Flapjack.WordRegImm.reg 22) optimizedBody867_173 optimizedBody867_175

def optimizedBody867_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (22, 22), (60, 2), (58, 4), (52, 6), (50, 8), (10, 10), (48, 12), (16, 16), (46, 14), (54, 18), (56, 20)]

def optimizedBody867_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_177

def optimizedBody867_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_176 optimizedBody867_178

def optimizedBody867_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_32 optimizedBody867_179

def optimizedBody867_181 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody867_180 (Flapjack.Spt.bn
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
  Flapjack.Spt.ln)

def optimizedBody867_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 58)]

def optimizedBody867_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody867_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (52, 52), (50, 50), (48, 48), (46, 46), (6, 54), (4, 56)]

def optimizedBody867_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_184 optimizedBody867_150

def optimizedBody867_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_183 optimizedBody867_185

def optimizedBody867_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_182 optimizedBody867_186

def optimizedBody867_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_187

def optimizedBody867_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_181 optimizedBody867_188

def optimizedBody867_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_31 optimizedBody867_189

def optimizedBody867_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_190

def optimizedBody867_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_30 optimizedBody867_191

def optimizedBody867_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_29 optimizedBody867_192

def optimizedBody867_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_27 optimizedBody867_193

def optimizedBody867_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_28 optimizedBody867_194

def optimizedBody867_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_27 optimizedBody867_195

def optimizedBody867_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_26 optimizedBody867_196

def optimizedBody867_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_25 optimizedBody867_197

def optimizedBody867_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_24 optimizedBody867_198

def optimizedBody867_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_23 optimizedBody867_199

def optimizedBody867_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_200

def optimizedBody867_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_201

def optimizedBody867_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 4) optimizedBody867_202 optimizedBody867_175

def optimizedBody867_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (52, 8), (50, 10), (48, 12), (46, 14), (6, 6), (4, 4)]

def optimizedBody867_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_204

def optimizedBody867_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_203 optimizedBody867_205

def optimizedBody867_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_21 optimizedBody867_206

def optimizedBody867_208 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody867_207 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody867_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48)]

def optimizedBody867_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 46)]

def optimizedBody867_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody867_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody867_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody867_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_213 optimizedBody867_13

def optimizedBody867_215 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_212, 867, 14)) (some 866) ([2, 4, 6]) (some (2, optimizedBody867_214, 867, 15))

def optimizedBody867_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44)]

def optimizedBody867_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_216

def optimizedBody867_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_215 optimizedBody867_217

def optimizedBody867_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_211 optimizedBody867_218

def optimizedBody867_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_219

def optimizedBody867_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_210 optimizedBody867_220

def optimizedBody867_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_221

def optimizedBody867_223 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody867_222 optimizedBody867_217

def optimizedBody867_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody867_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody867_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody867_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551136#64))

def optimizedBody867_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody867_229 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_228, 867, 16)) (some 861) ([2]) (some (2, optimizedBody867_214, 867, 17))

def optimizedBody867_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody867_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody867_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody867_233 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_212, 867, 18)) (some 866) ([2, 4, 6]) (some (2, optimizedBody867_214, 867, 19))

def optimizedBody867_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_233 optimizedBody867_217

def optimizedBody867_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_211 optimizedBody867_234

def optimizedBody867_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_232 optimizedBody867_235

def optimizedBody867_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_24 optimizedBody867_236

def optimizedBody867_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_231 optimizedBody867_237

def optimizedBody867_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_238

def optimizedBody867_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_239

def optimizedBody867_241 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody867_240 optimizedBody867_217

def optimizedBody867_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551128#64))

def optimizedBody867_243 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_228, 867, 20)) (some 861) ([2]) (some (2, optimizedBody867_214, 867, 21))

def optimizedBody867_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody867_245 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_212, 867, 22)) (some 866) ([2, 4, 6]) (some (2, optimizedBody867_214, 867, 23))

def optimizedBody867_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_245 optimizedBody867_217

def optimizedBody867_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_211 optimizedBody867_246

def optimizedBody867_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_244 optimizedBody867_247

def optimizedBody867_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_24 optimizedBody867_248

def optimizedBody867_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_231 optimizedBody867_249

def optimizedBody867_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_250

def optimizedBody867_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_251

def optimizedBody867_253 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody867_252 optimizedBody867_217

def optimizedBody867_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551120#64))

def optimizedBody867_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_228, 867, 24)) (some 861) ([2]) (some (2, optimizedBody867_214, 867, 25))

def optimizedBody867_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody867_257 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_212, 867, 26)) (some 866) ([2, 4, 6]) (some (2, optimizedBody867_214, 867, 27))

def optimizedBody867_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_257 optimizedBody867_217

def optimizedBody867_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_211 optimizedBody867_258

def optimizedBody867_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_256 optimizedBody867_259

def optimizedBody867_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_24 optimizedBody867_260

def optimizedBody867_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_231 optimizedBody867_261

def optimizedBody867_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_262

def optimizedBody867_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_263

def optimizedBody867_265 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody867_264 optimizedBody867_217

def optimizedBody867_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551112#64))

def optimizedBody867_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_228, 867, 28)) (some 861) ([2]) (some (2, optimizedBody867_214, 867, 29))

def optimizedBody867_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody867_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody867_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody867_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_270 optimizedBody867_13

def optimizedBody867_272 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody867_269, 867, 30)) (some 866) ([2, 4, 6]) (some (2, optimizedBody867_271, 867, 31))

def optimizedBody867_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_0

def optimizedBody867_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_272 optimizedBody867_273

def optimizedBody867_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_211 optimizedBody867_274

def optimizedBody867_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_268 optimizedBody867_275

def optimizedBody867_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_24 optimizedBody867_276

def optimizedBody867_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_231 optimizedBody867_277

def optimizedBody867_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_278

def optimizedBody867_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_279

def optimizedBody867_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody867_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_281

def optimizedBody867_283 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody867_280 optimizedBody867_282

def optimizedBody867_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody867_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_27 optimizedBody867_284

def optimizedBody867_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_285

def optimizedBody867_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_286

def optimizedBody867_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_283 optimizedBody867_287

def optimizedBody867_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_230 optimizedBody867_288

def optimizedBody867_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_289

def optimizedBody867_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_290

def optimizedBody867_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_291

def optimizedBody867_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_267 optimizedBody867_292

def optimizedBody867_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_213 optimizedBody867_293

def optimizedBody867_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_266 optimizedBody867_294

def optimizedBody867_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_226 optimizedBody867_295

def optimizedBody867_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_225 optimizedBody867_296

def optimizedBody867_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_224 optimizedBody867_297

def optimizedBody867_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_298

def optimizedBody867_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_265 optimizedBody867_299

def optimizedBody867_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_230 optimizedBody867_300

def optimizedBody867_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_301

def optimizedBody867_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_302

def optimizedBody867_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_303

def optimizedBody867_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_255 optimizedBody867_304

def optimizedBody867_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_213 optimizedBody867_305

def optimizedBody867_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_254 optimizedBody867_306

def optimizedBody867_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_226 optimizedBody867_307

def optimizedBody867_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_225 optimizedBody867_308

def optimizedBody867_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_224 optimizedBody867_309

def optimizedBody867_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_310

def optimizedBody867_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_253 optimizedBody867_311

def optimizedBody867_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_230 optimizedBody867_312

def optimizedBody867_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_313

def optimizedBody867_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_314

def optimizedBody867_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_315

def optimizedBody867_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_243 optimizedBody867_316

def optimizedBody867_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_213 optimizedBody867_317

def optimizedBody867_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_242 optimizedBody867_318

def optimizedBody867_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_226 optimizedBody867_319

def optimizedBody867_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_225 optimizedBody867_320

def optimizedBody867_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_224 optimizedBody867_321

def optimizedBody867_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_322

def optimizedBody867_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_241 optimizedBody867_323

def optimizedBody867_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_230 optimizedBody867_324

def optimizedBody867_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_22 optimizedBody867_325

def optimizedBody867_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_326

def optimizedBody867_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_327

def optimizedBody867_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_229 optimizedBody867_328

def optimizedBody867_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_213 optimizedBody867_329

def optimizedBody867_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_227 optimizedBody867_330

def optimizedBody867_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_226 optimizedBody867_331

def optimizedBody867_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_225 optimizedBody867_332

def optimizedBody867_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_224 optimizedBody867_333

def optimizedBody867_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_334

def optimizedBody867_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_223 optimizedBody867_335

def optimizedBody867_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_209 optimizedBody867_336

def optimizedBody867_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_19 optimizedBody867_337

def optimizedBody867_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_338

def optimizedBody867_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_208 optimizedBody867_339

def optimizedBody867_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_20 optimizedBody867_340

def optimizedBody867_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_341

def optimizedBody867_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_19 optimizedBody867_342

def optimizedBody867_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_18 optimizedBody867_343

def optimizedBody867_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_17 optimizedBody867_344

def optimizedBody867_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_16 optimizedBody867_345

def optimizedBody867_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_15 optimizedBody867_346

def optimizedBody867_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_10 optimizedBody867_347

def optimizedBody867_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_9 optimizedBody867_348

def optimizedBody867_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_8 optimizedBody867_349

def optimizedBody867_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_6 optimizedBody867_350

def optimizedBody867_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_7 optimizedBody867_351

def optimizedBody867_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_6 optimizedBody867_352

def optimizedBody867_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_5 optimizedBody867_353

def optimizedBody867_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_4 optimizedBody867_354

def optimizedBody867_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_3 optimizedBody867_355

def optimizedBody867_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_2 optimizedBody867_356

def optimizedBody867_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_1 optimizedBody867_357

def optimizedBody867_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody867_0 optimizedBody867_358

def oracle867 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 8)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  30
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 23 Flapjack.Spt.ln)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.ls 3)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 7)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 28 Flapjack.Spt.ln) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 25)))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 2 (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  5
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 4)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 Flapjack.Spt.ln) 32
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0))) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 33)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  22
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                25
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 9))) 3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 8
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 27)))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.ls 7)) 33
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                  3 (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 2 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5)) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 1 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  11
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  26
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 2))) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)) 30
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 26 (Flapjack.Spt.ls 2)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln) 11
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 22 Flapjack.Spt.ln)))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2)) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 6)))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 26)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 32 Flapjack.Spt.ln) 34 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  0 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.ls 32))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 11)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 34 (Flapjack.Spt.ls 22)))
                  25
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 10)) 11
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  5
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 8
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  23
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) 31
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.ls 2)))
                  1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 33 (Flapjack.Spt.ls 0)) 2 Flapjack.Spt.ln))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  4
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3))) 24
                    (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 30)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 8)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 24 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 29
                    (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 33 Flapjack.Spt.ln) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                24 Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 34)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                25
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 32)))
                23 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 33
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))))))))
def optimized867 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(867, 1, optimizedBody867_359)
theorem optimize867_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source867, oracle867) = optimized867 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize867_eq
end InitECandidate.Proofs.WordStages
