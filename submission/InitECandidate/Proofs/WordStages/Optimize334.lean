import InitECandidate.Proofs.WordStages.Optimize318
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source334
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody334_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (18, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody334_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 2#64)

def optimizedBody334_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody334_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody334_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 18), (44, 0), (46, 16), (48, 8), (50, 4), (52, 12), (54, 20), (56, 18), (58, 10), (60, 6), (64, 14)]

def optimizedBody334_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (6, 54), (56, 56), (4, 58), (60, 60), (64, 64)]

def optimizedBody334_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (6, 54), (56, 56), (4, 58), (60, 60), (64, 64)]

def optimizedBody334_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody334_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_6 optimizedBody334_7

def optimizedBody334_9 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody334_5, 334, 2)) (some 177) ([2, 4]) (some (2, optimizedBody334_8, 334, 3))

def optimizedBody334_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody334_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody334_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody334_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 2)]

def optimizedBody334_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody334_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody334_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody334_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551464#64))

def optimizedBody334_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4), (60, 60), (62, 0),
    (64, 64)]

def optimizedBody334_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody334_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody334_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_20 optimizedBody334_7

def optimizedBody334_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody334_19, 334, 4)) (some 89) ([2, 4]) (some (2, optimizedBody334_21, 334, 5))

def optimizedBody334_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody334_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody334_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody334_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551464#64))

def optimizedBody334_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody334_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody334_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (4, 60), (62, 62), (64, 64)]

def optimizedBody334_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (4, 60), (62, 62), (64, 64)]

def optimizedBody334_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_30 optimizedBody334_7

def optimizedBody334_32 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody334_29, 334, 6)) (some 89) ([2, 4]) (some (2, optimizedBody334_31, 334, 7))

def optimizedBody334_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody334_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 4), (62, 62),
    (64, 64)]

def optimizedBody334_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody334_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody334_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_36 optimizedBody334_7

def optimizedBody334_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody334_35, 334, 8)) (some 89) ([2, 4]) (some (2, optimizedBody334_37, 334, 9))

def optimizedBody334_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody334_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody334_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (8, 46), (10, 48), (16, 50), (48, 52), (0, 54), (4, 56), (18, 58), (12, 60), (14, 62), (52, 64)]

def optimizedBody334_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (10, 48), (16, 50), (48, 52), (0, 54), (4, 56), (18, 58), (12, 60), (14, 62), (52, 64)]

def optimizedBody334_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_42 optimizedBody334_7

def optimizedBody334_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody334_41, 334, 10)) (some 89) ([2, 4]) (some (2, optimizedBody334_43, 334, 11))

def optimizedBody334_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody334_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 6), (8, 8), (10, 10), (16, 16), (48, 48), (0, 0), (4, 4), (18, 18), (12, 12), (14, 14), (52, 52)]

def optimizedBody334_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody334_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody334_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody334_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody334_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody334_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody334_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody334_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody334_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_53 optimizedBody334_54

def optimizedBody334_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_55

def optimizedBody334_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 20) optimizedBody334_56 optimizedBody334_10

def optimizedBody334_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody334_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody334_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_53 optimizedBody334_59

def optimizedBody334_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_58 optimizedBody334_60

def optimizedBody334_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_47 optimizedBody334_61

def optimizedBody334_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_62

def optimizedBody334_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_57 optimizedBody334_63

def optimizedBody334_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_52 optimizedBody334_64

def optimizedBody334_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_51 optimizedBody334_65

def optimizedBody334_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_50 optimizedBody334_66

def optimizedBody334_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_49 optimizedBody334_67

def optimizedBody334_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_17 optimizedBody334_68

def optimizedBody334_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_16 optimizedBody334_69

def optimizedBody334_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_15 optimizedBody334_70

def optimizedBody334_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_14 optimizedBody334_71

def optimizedBody334_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_47 optimizedBody334_72

def optimizedBody334_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_73

def optimizedBody334_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 2) optimizedBody334_74 optimizedBody334_56

def optimizedBody334_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_53

def optimizedBody334_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_75 optimizedBody334_76

def optimizedBody334_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_48 optimizedBody334_77

def optimizedBody334_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_47 optimizedBody334_78

def optimizedBody334_80 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody334_79 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody334_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody334_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody334_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody334_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody334_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody334_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551464#64))

def optimizedBody334_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody334_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 32#64)

def optimizedBody334_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody334_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 8), (48, 48), (50, 0), (52, 52)]

def optimizedBody334_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48), (8, 50), (50, 52)]

def optimizedBody334_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (8, 50), (50, 52)]

def optimizedBody334_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_92 optimizedBody334_7

def optimizedBody334_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody334_91, 334, 12)) (some 176) ([2, 4, 6]) (some (2, optimizedBody334_93, 334, 13))

def optimizedBody334_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody334_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody334_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody334_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody334_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody334_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody334_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 50)]

def optimizedBody334_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (8, 48), (4, 50)]

def optimizedBody334_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (4, 50)]

def optimizedBody334_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_103 optimizedBody334_7

def optimizedBody334_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody334_102, 334, 14)) (some 176) ([2, 4, 6]) (some (2, optimizedBody334_104, 334, 15))

def optimizedBody334_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8)]

def optimizedBody334_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody334_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody334_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_108 optimizedBody334_7

def optimizedBody334_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody334_107, 334, 16)) (some 176) ([2, 4, 6]) (some (2, optimizedBody334_109, 334, 17))

def optimizedBody334_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody334_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody334_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody334_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 248#64)

def optimizedBody334_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody334_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody334_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody334_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def optimizedBody334_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody334_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody334_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_51 optimizedBody334_120

def optimizedBody334_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_119 optimizedBody334_121

def optimizedBody334_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_118 optimizedBody334_122

def optimizedBody334_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_51 optimizedBody334_123

def optimizedBody334_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_117 optimizedBody334_124

def optimizedBody334_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_116 optimizedBody334_125

def optimizedBody334_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_115 optimizedBody334_126

def optimizedBody334_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_114 optimizedBody334_127

def optimizedBody334_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_113 optimizedBody334_128

def optimizedBody334_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_112 optimizedBody334_129

def optimizedBody334_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_111 optimizedBody334_130

def optimizedBody334_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_131

def optimizedBody334_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_110 optimizedBody334_132

def optimizedBody334_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_106 optimizedBody334_133

def optimizedBody334_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_100 optimizedBody334_134

def optimizedBody334_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_99 optimizedBody334_135

def optimizedBody334_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_98 optimizedBody334_136

def optimizedBody334_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_97 optimizedBody334_137

def optimizedBody334_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_96 optimizedBody334_138

def optimizedBody334_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_95 optimizedBody334_139

def optimizedBody334_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_140

def optimizedBody334_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_105 optimizedBody334_141

def optimizedBody334_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_101 optimizedBody334_142

def optimizedBody334_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_100 optimizedBody334_143

def optimizedBody334_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_99 optimizedBody334_144

def optimizedBody334_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_98 optimizedBody334_145

def optimizedBody334_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_97 optimizedBody334_146

def optimizedBody334_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_96 optimizedBody334_147

def optimizedBody334_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_95 optimizedBody334_148

def optimizedBody334_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_149

def optimizedBody334_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_94 optimizedBody334_150

def optimizedBody334_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_90 optimizedBody334_151

def optimizedBody334_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_89 optimizedBody334_152

def optimizedBody334_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_47 optimizedBody334_153

def optimizedBody334_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_88 optimizedBody334_154

def optimizedBody334_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_87 optimizedBody334_155

def optimizedBody334_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_86 optimizedBody334_156

def optimizedBody334_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_85 optimizedBody334_157

def optimizedBody334_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_84 optimizedBody334_158

def optimizedBody334_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_83 optimizedBody334_159

def optimizedBody334_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_47 optimizedBody334_160

def optimizedBody334_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_82 optimizedBody334_161

def optimizedBody334_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_81 optimizedBody334_162

def optimizedBody334_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_163

def optimizedBody334_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_80 optimizedBody334_164

def optimizedBody334_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_46 optimizedBody334_165

def optimizedBody334_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_166

def optimizedBody334_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_45 optimizedBody334_167

def optimizedBody334_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_168

def optimizedBody334_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_44 optimizedBody334_169

def optimizedBody334_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_40 optimizedBody334_170

def optimizedBody334_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_39 optimizedBody334_171

def optimizedBody334_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_26 optimizedBody334_172

def optimizedBody334_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_25 optimizedBody334_173

def optimizedBody334_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_24 optimizedBody334_174

def optimizedBody334_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_23 optimizedBody334_175

def optimizedBody334_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_176

def optimizedBody334_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_38 optimizedBody334_177

def optimizedBody334_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_34 optimizedBody334_178

def optimizedBody334_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_33 optimizedBody334_179

def optimizedBody334_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_26 optimizedBody334_180

def optimizedBody334_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_25 optimizedBody334_181

def optimizedBody334_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_24 optimizedBody334_182

def optimizedBody334_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_23 optimizedBody334_183

def optimizedBody334_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_184

def optimizedBody334_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_32 optimizedBody334_185

def optimizedBody334_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_28 optimizedBody334_186

def optimizedBody334_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_27 optimizedBody334_187

def optimizedBody334_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_26 optimizedBody334_188

def optimizedBody334_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_25 optimizedBody334_189

def optimizedBody334_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_24 optimizedBody334_190

def optimizedBody334_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_23 optimizedBody334_191

def optimizedBody334_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_192

def optimizedBody334_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_22 optimizedBody334_193

def optimizedBody334_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_18 optimizedBody334_194

def optimizedBody334_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_17 optimizedBody334_195

def optimizedBody334_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_16 optimizedBody334_196

def optimizedBody334_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_15 optimizedBody334_197

def optimizedBody334_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_14 optimizedBody334_198

def optimizedBody334_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_13 optimizedBody334_199

def optimizedBody334_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_12 optimizedBody334_200

def optimizedBody334_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_11 optimizedBody334_201

def optimizedBody334_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_10 optimizedBody334_202

def optimizedBody334_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_9 optimizedBody334_203

def optimizedBody334_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_4 optimizedBody334_204

def optimizedBody334_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_3 optimizedBody334_205

def optimizedBody334_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_2 optimizedBody334_206

def optimizedBody334_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_1 optimizedBody334_207

def optimizedBody334_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody334_0 optimizedBody334_208

def oracle334 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 31 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 32 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 0)))))
              5
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 3)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))) 32
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 26))))
              9
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  27 Flapjack.Spt.ln)
                10
                (Flapjack.Spt.bs Flapjack.Spt.ln 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 29 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 30 (Flapjack.Spt.ls 28))))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 2))))
                7
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)))))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))) 30
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2))) 1
                  Flapjack.Spt.ln)
                8 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 (Flapjack.Spt.ls 27))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                8
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 22)) 28
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 4))))
                6
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24))) 29
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)) 25
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 29))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))) 27
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))) 32
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 27)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23))) 28
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.ls 23)) 26
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30)))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25)) 30
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26))))))))))
def optimized334 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(334, 9, optimizedBody334_209)
theorem optimize334_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source334, oracle334) = optimized334 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize334_eq
end InitECandidate.Proofs.WordStages
