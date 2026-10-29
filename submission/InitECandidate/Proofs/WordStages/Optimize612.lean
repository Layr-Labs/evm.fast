import InitECandidate.Proofs.WordStages.Optimize596
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source612
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody612_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24), (26, 26), (28, 28), (30, 30), (32, 32), (34, 34)]

def optimizedBody612_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 36 Flapjack.WordStore.heapLength

def optimizedBody612_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 36 36 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody612_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 36 36

def optimizedBody612_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 36 18446744073709551360#64))

def optimizedBody612_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 36 112#64))

def optimizedBody612_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (46, 32), (48, 16), (50, 8), (52, 36), (54, 24), (56, 4), (58, 20), (60, 12), (62, 28), (64, 2), (66, 34),
    (68, 18), (70, 10), (72, 26), (74, 6), (76, 22), (78, 14), (80, 30)]

def optimizedBody612_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (40, 44), (38, 46), (36, 48), (34, 50), (6, 52), (30, 54), (32, 56), (26, 58), (28, 60), (22, 62), (24, 64),
    (18, 66), (20, 68), (14, 70), (12, 72), (16, 74), (8, 76), (10, 78), (4, 80)]

def optimizedBody612_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (40, 44), (38, 46), (36, 48), (34, 50), (6, 52), (30, 54), (32, 56), (26, 58), (28, 60), (22, 62), (24, 64),
    (18, 66), (20, 68), (14, 70), (12, 72), (16, 74), (8, 76), (10, 78), (4, 80)]

def optimizedBody612_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody612_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_8 optimizedBody612_9

def optimizedBody612_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody612_7, 612, 2)) (some 488) ([]) (some (2, optimizedBody612_10, 612, 3))

def optimizedBody612_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody612_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody612_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody612_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody612_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody612_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody612_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody612_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody612_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody612_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (42, 42)]

def optimizedBody612_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 42 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody612_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (24, 24)]

def optimizedBody612_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody612_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (32, 32)]

def optimizedBody612_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 32 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody612_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16)]

def optimizedBody612_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody612_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (34, 34)]

def optimizedBody612_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 34 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody612_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody612_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody612_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (28, 28), (20, 20), (36, 36), (10, 10)]

def optimizedBody612_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody612_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody612_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (36, 36)]

def optimizedBody612_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 36 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody612_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (20, 20)]

def optimizedBody612_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody612_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody612_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26)]

def optimizedBody612_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody612_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody612_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody612_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (30, 30)]

def optimizedBody612_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody612_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody612_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody612_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22)]

def optimizedBody612_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody612_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 128#64))

def optimizedBody612_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody612_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody612_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody612_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody612_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody612_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (38, 38)]

def optimizedBody612_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 144#64))

def optimizedBody612_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody612_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 1#64)

def optimizedBody612_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(38, 38)]

def optimizedBody612_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_73 optimizedBody612_74

def optimizedBody612_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_12 optimizedBody612_75

def optimizedBody612_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_12 optimizedBody612_74

def optimizedBody612_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody612_76 optimizedBody612_77

def optimizedBody612_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody612_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (38, 38)]

def optimizedBody612_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 38 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody612_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody612_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody612_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody612_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody612_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 168#64))

def optimizedBody612_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody612_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody612_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody612_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody612_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody612_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 176#64))

def optimizedBody612_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody612_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody612_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody612_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (18, 18)]

def optimizedBody612_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody612_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody612_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 40 [2]

def optimizedBody612_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_99 optimizedBody612_100

def optimizedBody612_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_98 optimizedBody612_101

def optimizedBody612_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_97 optimizedBody612_102

def optimizedBody612_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_96 optimizedBody612_103

def optimizedBody612_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_104

def optimizedBody612_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_95 optimizedBody612_105

def optimizedBody612_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_94 optimizedBody612_106

def optimizedBody612_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_93 optimizedBody612_107

def optimizedBody612_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_92 optimizedBody612_108

def optimizedBody612_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_91 optimizedBody612_109

def optimizedBody612_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_90 optimizedBody612_110

def optimizedBody612_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_111

def optimizedBody612_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_89 optimizedBody612_112

def optimizedBody612_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_88 optimizedBody612_113

def optimizedBody612_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_87 optimizedBody612_114

def optimizedBody612_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_86 optimizedBody612_115

def optimizedBody612_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_85 optimizedBody612_116

def optimizedBody612_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_84 optimizedBody612_117

def optimizedBody612_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_83 optimizedBody612_118

def optimizedBody612_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_82 optimizedBody612_119

def optimizedBody612_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_120

def optimizedBody612_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_81 optimizedBody612_121

def optimizedBody612_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_80 optimizedBody612_122

def optimizedBody612_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_79 optimizedBody612_123

def optimizedBody612_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_124

def optimizedBody612_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_12 optimizedBody612_125

def optimizedBody612_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_78 optimizedBody612_126

def optimizedBody612_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_72 optimizedBody612_127

def optimizedBody612_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_71 optimizedBody612_128

def optimizedBody612_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_70 optimizedBody612_129

def optimizedBody612_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_69 optimizedBody612_130

def optimizedBody612_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_68 optimizedBody612_131

def optimizedBody612_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_67 optimizedBody612_132

def optimizedBody612_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_133

def optimizedBody612_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_66 optimizedBody612_134

def optimizedBody612_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_65 optimizedBody612_135

def optimizedBody612_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_64 optimizedBody612_136

def optimizedBody612_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_63 optimizedBody612_137

def optimizedBody612_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_19 optimizedBody612_138

def optimizedBody612_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_62 optimizedBody612_139

def optimizedBody612_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_140

def optimizedBody612_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_61 optimizedBody612_141

def optimizedBody612_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_60 optimizedBody612_142

def optimizedBody612_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_59 optimizedBody612_143

def optimizedBody612_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_144

def optimizedBody612_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_58 optimizedBody612_145

def optimizedBody612_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_57 optimizedBody612_146

def optimizedBody612_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_56 optimizedBody612_147

def optimizedBody612_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_148

def optimizedBody612_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_55 optimizedBody612_149

def optimizedBody612_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_54 optimizedBody612_150

def optimizedBody612_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_53 optimizedBody612_151

def optimizedBody612_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_152

def optimizedBody612_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_52 optimizedBody612_153

def optimizedBody612_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_51 optimizedBody612_154

def optimizedBody612_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_50 optimizedBody612_155

def optimizedBody612_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_156

def optimizedBody612_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_49 optimizedBody612_157

def optimizedBody612_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_48 optimizedBody612_158

def optimizedBody612_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_47 optimizedBody612_159

def optimizedBody612_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_160

def optimizedBody612_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_46 optimizedBody612_161

def optimizedBody612_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_45 optimizedBody612_162

def optimizedBody612_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_44 optimizedBody612_163

def optimizedBody612_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_43 optimizedBody612_164

def optimizedBody612_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_42 optimizedBody612_165

def optimizedBody612_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_41 optimizedBody612_166

def optimizedBody612_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_40 optimizedBody612_167

def optimizedBody612_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_39 optimizedBody612_168

def optimizedBody612_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_38 optimizedBody612_169

def optimizedBody612_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_170

def optimizedBody612_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_37 optimizedBody612_171

def optimizedBody612_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_36 optimizedBody612_172

def optimizedBody612_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_35 optimizedBody612_173

def optimizedBody612_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_174

def optimizedBody612_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_34 optimizedBody612_175

def optimizedBody612_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_33 optimizedBody612_176

def optimizedBody612_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_32 optimizedBody612_177

def optimizedBody612_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_178

def optimizedBody612_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_31 optimizedBody612_179

def optimizedBody612_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_30 optimizedBody612_180

def optimizedBody612_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_29 optimizedBody612_181

def optimizedBody612_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_182

def optimizedBody612_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_28 optimizedBody612_183

def optimizedBody612_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_27 optimizedBody612_184

def optimizedBody612_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_26 optimizedBody612_185

def optimizedBody612_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_186

def optimizedBody612_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_25 optimizedBody612_187

def optimizedBody612_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_24 optimizedBody612_188

def optimizedBody612_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_23 optimizedBody612_189

def optimizedBody612_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_190

def optimizedBody612_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_22 optimizedBody612_191

def optimizedBody612_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_21 optimizedBody612_192

def optimizedBody612_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_20 optimizedBody612_193

def optimizedBody612_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_19 optimizedBody612_194

def optimizedBody612_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_18 optimizedBody612_195

def optimizedBody612_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_17 optimizedBody612_196

def optimizedBody612_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_16 optimizedBody612_197

def optimizedBody612_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_15 optimizedBody612_198

def optimizedBody612_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_14 optimizedBody612_199

def optimizedBody612_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_13 optimizedBody612_200

def optimizedBody612_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_12 optimizedBody612_201

def optimizedBody612_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_11 optimizedBody612_202

def optimizedBody612_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_6 optimizedBody612_203

def optimizedBody612_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_5 optimizedBody612_204

def optimizedBody612_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_4 optimizedBody612_205

def optimizedBody612_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_3 optimizedBody612_206

def optimizedBody612_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_2 optimizedBody612_207

def optimizedBody612_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_1 optimizedBody612_208

def optimizedBody612_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody612_0 optimizedBody612_209

def oracle612 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 17))))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 16)))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 3)) 13
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                18
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 19))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 21)) 10
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 17
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))
                14 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)))
                6 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 18 (Flapjack.Spt.ls 9)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 2)) 15
                  (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 1)))
                16 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                8
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 1)) 19
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                12
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 18
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 11 (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 16
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                17 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 15))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                9
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 18
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                13 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 1)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 1)) 18
                  (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                15
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 19))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 7
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 10 (Flapjack.Spt.ls 13)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 3)) 20
                  (Flapjack.Spt.bs Flapjack.Spt.ln 21 (Flapjack.Spt.ls 11)))
                11
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                3
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 18
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 14 (Flapjack.Spt.ls 1))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))))))
def optimized612 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(612, 18, optimizedBody612_210)
theorem optimize612_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source612, oracle612) = optimized612 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize612_eq
end InitECandidate.Proofs.WordStages
