import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source614
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles614
def optimizedBody614_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24), (26, 26), (28, 28), (30, 30), (32, 32), (34, 34)]

def optimizedBody614_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 36 Flapjack.WordStore.heapLength

def optimizedBody614_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 36 36 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody614_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 36 36

def optimizedBody614_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 36 18446744073709551360#64))

def optimizedBody614_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 36 112#64))

def optimizedBody614_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (46, 32), (48, 16), (50, 8), (52, 36), (54, 24), (56, 4), (58, 20), (60, 12), (62, 28), (64, 2), (66, 34),
    (68, 18), (70, 10), (72, 26), (74, 6), (76, 22), (78, 14), (80, 30)]

def optimizedBody614_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (40, 44), (38, 46), (36, 48), (34, 50), (6, 52), (30, 54), (32, 56), (26, 58), (28, 60), (22, 62), (24, 64),
    (18, 66), (20, 68), (14, 70), (12, 72), (16, 74), (8, 76), (10, 78), (4, 80)]

def optimizedBody614_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (40, 44), (38, 46), (36, 48), (34, 50), (6, 52), (30, 54), (32, 56), (26, 58), (28, 60), (22, 62), (24, 64),
    (18, 66), (20, 68), (14, 70), (12, 72), (16, 74), (8, 76), (10, 78), (4, 80)]

def optimizedBody614_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody614_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_8 optimizedBody614_9

def optimizedBody614_11 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody614_7, 614, 2)) (some 490) ([]) (some (2, optimizedBody614_10, 614, 3))

def optimizedBody614_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody614_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody614_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody614_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody614_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody614_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody614_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody614_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody614_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody614_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (42, 42)]

def optimizedBody614_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 42 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody614_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (24, 24)]

def optimizedBody614_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody614_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (32, 32)]

def optimizedBody614_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 32 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody614_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16)]

def optimizedBody614_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody614_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (34, 34)]

def optimizedBody614_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 34 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody614_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody614_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody614_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (28, 28), (20, 20), (36, 36), (10, 10)]

def optimizedBody614_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody614_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody614_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (36, 36)]

def optimizedBody614_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 36 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody614_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (20, 20)]

def optimizedBody614_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody614_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody614_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26)]

def optimizedBody614_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody614_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody614_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody614_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (30, 30)]

def optimizedBody614_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody614_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody614_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody614_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22)]

def optimizedBody614_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody614_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 128#64))

def optimizedBody614_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody614_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody614_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody614_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody614_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody614_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (38, 38)]

def optimizedBody614_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 144#64))

def optimizedBody614_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody614_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 1#64)

def optimizedBody614_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(38, 38)]

def optimizedBody614_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_73 optimizedBody614_74

def optimizedBody614_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_12 optimizedBody614_75

def optimizedBody614_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_12 optimizedBody614_74

def optimizedBody614_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody614_76 optimizedBody614_77

def optimizedBody614_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody614_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (38, 38)]

def optimizedBody614_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 38 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody614_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody614_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody614_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody614_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody614_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 168#64))

def optimizedBody614_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody614_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody614_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody614_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody614_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody614_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 176#64))

def optimizedBody614_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody614_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody614_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody614_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (18, 18)]

def optimizedBody614_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody614_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody614_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 40 [2]

def optimizedBody614_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_99 optimizedBody614_100

def optimizedBody614_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_98 optimizedBody614_101

def optimizedBody614_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_97 optimizedBody614_102

def optimizedBody614_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_96 optimizedBody614_103

def optimizedBody614_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_104

def optimizedBody614_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_95 optimizedBody614_105

def optimizedBody614_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_94 optimizedBody614_106

def optimizedBody614_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_93 optimizedBody614_107

def optimizedBody614_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_92 optimizedBody614_108

def optimizedBody614_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_91 optimizedBody614_109

def optimizedBody614_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_90 optimizedBody614_110

def optimizedBody614_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_111

def optimizedBody614_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_89 optimizedBody614_112

def optimizedBody614_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_88 optimizedBody614_113

def optimizedBody614_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_87 optimizedBody614_114

def optimizedBody614_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_86 optimizedBody614_115

def optimizedBody614_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_85 optimizedBody614_116

def optimizedBody614_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_84 optimizedBody614_117

def optimizedBody614_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_83 optimizedBody614_118

def optimizedBody614_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_82 optimizedBody614_119

def optimizedBody614_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_120

def optimizedBody614_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_81 optimizedBody614_121

def optimizedBody614_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_80 optimizedBody614_122

def optimizedBody614_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_79 optimizedBody614_123

def optimizedBody614_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_124

def optimizedBody614_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_12 optimizedBody614_125

def optimizedBody614_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_78 optimizedBody614_126

def optimizedBody614_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_72 optimizedBody614_127

def optimizedBody614_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_71 optimizedBody614_128

def optimizedBody614_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_70 optimizedBody614_129

def optimizedBody614_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_69 optimizedBody614_130

def optimizedBody614_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_68 optimizedBody614_131

def optimizedBody614_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_67 optimizedBody614_132

def optimizedBody614_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_133

def optimizedBody614_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_66 optimizedBody614_134

def optimizedBody614_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_65 optimizedBody614_135

def optimizedBody614_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_64 optimizedBody614_136

def optimizedBody614_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_63 optimizedBody614_137

def optimizedBody614_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_19 optimizedBody614_138

def optimizedBody614_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_62 optimizedBody614_139

def optimizedBody614_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_140

def optimizedBody614_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_61 optimizedBody614_141

def optimizedBody614_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_60 optimizedBody614_142

def optimizedBody614_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_59 optimizedBody614_143

def optimizedBody614_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_144

def optimizedBody614_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_58 optimizedBody614_145

def optimizedBody614_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_57 optimizedBody614_146

def optimizedBody614_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_56 optimizedBody614_147

def optimizedBody614_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_148

def optimizedBody614_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_55 optimizedBody614_149

def optimizedBody614_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_54 optimizedBody614_150

def optimizedBody614_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_53 optimizedBody614_151

def optimizedBody614_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_152

def optimizedBody614_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_52 optimizedBody614_153

def optimizedBody614_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_51 optimizedBody614_154

def optimizedBody614_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_50 optimizedBody614_155

def optimizedBody614_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_156

def optimizedBody614_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_49 optimizedBody614_157

def optimizedBody614_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_48 optimizedBody614_158

def optimizedBody614_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_47 optimizedBody614_159

def optimizedBody614_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_160

def optimizedBody614_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_46 optimizedBody614_161

def optimizedBody614_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_45 optimizedBody614_162

def optimizedBody614_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_44 optimizedBody614_163

def optimizedBody614_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_43 optimizedBody614_164

def optimizedBody614_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_42 optimizedBody614_165

def optimizedBody614_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_41 optimizedBody614_166

def optimizedBody614_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_40 optimizedBody614_167

def optimizedBody614_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_39 optimizedBody614_168

def optimizedBody614_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_38 optimizedBody614_169

def optimizedBody614_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_170

def optimizedBody614_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_37 optimizedBody614_171

def optimizedBody614_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_36 optimizedBody614_172

def optimizedBody614_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_35 optimizedBody614_173

def optimizedBody614_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_174

def optimizedBody614_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_34 optimizedBody614_175

def optimizedBody614_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_33 optimizedBody614_176

def optimizedBody614_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_32 optimizedBody614_177

def optimizedBody614_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_178

def optimizedBody614_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_31 optimizedBody614_179

def optimizedBody614_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_30 optimizedBody614_180

def optimizedBody614_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_29 optimizedBody614_181

def optimizedBody614_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_182

def optimizedBody614_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_28 optimizedBody614_183

def optimizedBody614_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_27 optimizedBody614_184

def optimizedBody614_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_26 optimizedBody614_185

def optimizedBody614_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_186

def optimizedBody614_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_25 optimizedBody614_187

def optimizedBody614_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_24 optimizedBody614_188

def optimizedBody614_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_23 optimizedBody614_189

def optimizedBody614_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_190

def optimizedBody614_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_22 optimizedBody614_191

def optimizedBody614_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_21 optimizedBody614_192

def optimizedBody614_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_20 optimizedBody614_193

def optimizedBody614_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_19 optimizedBody614_194

def optimizedBody614_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_18 optimizedBody614_195

def optimizedBody614_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_196

def optimizedBody614_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_16 optimizedBody614_197

def optimizedBody614_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_15 optimizedBody614_198

def optimizedBody614_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_14 optimizedBody614_199

def optimizedBody614_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_13 optimizedBody614_200

def optimizedBody614_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_12 optimizedBody614_201

def optimizedBody614_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_11 optimizedBody614_202

def optimizedBody614_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_203

def optimizedBody614_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_5 optimizedBody614_204

def optimizedBody614_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_4 optimizedBody614_205

def optimizedBody614_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_3 optimizedBody614_206

def optimizedBody614_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_2 optimizedBody614_207

def optimizedBody614_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_1 optimizedBody614_208

def optimizedBody614_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_0 optimizedBody614_209

def oracle614 : Option (Spt Nat) :=
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
def optimized614 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(614, 18, optimizedBody614_210)
end InitECandidate.Proofs.SmallStages.Oracles614
