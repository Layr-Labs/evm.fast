import InitECandidate.Proofs.WordStages.Optimize434
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source450
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody450_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 2), (6, 4)]

def optimizedBody450_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody450_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody450_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody450_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551368#64))

def optimizedBody450_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def optimizedBody450_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551392#64))

def optimizedBody450_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6), (48, 8), (50, 2)]

def optimizedBody450_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody450_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody450_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody450_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_9 optimizedBody450_10

def optimizedBody450_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody450_8, 450, 2)) (some 87) ([2, 4]) (some (2, optimizedBody450_11, 450, 3))

def optimizedBody450_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody450_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody450_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody450_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody450_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody450_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 4), (50, 0)]

def optimizedBody450_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody450_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody450_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_20 optimizedBody450_10

def optimizedBody450_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody450_19, 450, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody450_21, 450, 5))

def optimizedBody450_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 28#64)))

def optimizedBody450_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody450_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 0)]

def optimizedBody450_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50)]

def optimizedBody450_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50)]

def optimizedBody450_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_27 optimizedBody450_10

def optimizedBody450_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody450_26, 450, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody450_28, 450, 7))

def optimizedBody450_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody450_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody450_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody450_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551376#64))

def optimizedBody450_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (56, 4)]

def optimizedBody450_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (14, 44), (12, 46), (10, 48), (56, 56)]

def optimizedBody450_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (12, 46), (10, 48), (56, 56)]

def optimizedBody450_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_36 optimizedBody450_10

def optimizedBody450_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody450_35, 450, 8)) (some 186) ([2, 4]) (some (2, optimizedBody450_37, 450, 9))

def optimizedBody450_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody450_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody450_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody450_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody450_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody450_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6), (8, 8)]

def optimizedBody450_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4, 6, 8]

def optimizedBody450_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_44 optimizedBody450_45

def optimizedBody450_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_43 optimizedBody450_46

def optimizedBody450_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_16 optimizedBody450_47

def optimizedBody450_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_42 optimizedBody450_48

def optimizedBody450_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_16 optimizedBody450_49

def optimizedBody450_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_41 optimizedBody450_50

def optimizedBody450_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_16 optimizedBody450_51

def optimizedBody450_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_40 optimizedBody450_52

def optimizedBody450_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_16 optimizedBody450_53

def optimizedBody450_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_54

def optimizedBody450_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody450_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody450_55 optimizedBody450_56

def optimizedBody450_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 12), (44, 14), (50, 12), (54, 10), (56, 56)]

def optimizedBody450_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44), (50, 50), (54, 54), (56, 56)]

def optimizedBody450_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54), (56, 56)]

def optimizedBody450_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_60 optimizedBody450_10

def optimizedBody450_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody450_59, 450, 10)) (some 448) ([2, 4]) (some (2, optimizedBody450_61, 450, 11))

def optimizedBody450_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody450_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 6), (50, 50), (52, 8), (54, 54), (56, 56), (58, 4)]

def optimizedBody450_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (6, 48), (50, 50), (8, 52), (54, 54), (4, 56), (12, 58)]

def optimizedBody450_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (50, 50), (8, 52), (54, 54), (4, 56), (12, 58)]

def optimizedBody450_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_66 optimizedBody450_10

def optimizedBody450_68 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody450_65, 450, 12)) (some 68) ([2]) (some (2, optimizedBody450_67, 450, 13))

def optimizedBody450_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0), (8, 8), (6, 6), (12, 12)]

def optimizedBody450_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody450_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody450_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody450_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody450_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody450_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody450_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody450_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody450_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody450_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody450_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody450_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6), (50, 50), (52, 8), (54, 54), (56, 2), (58, 10), (60, 12)]

def optimizedBody450_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (0, 56), (56, 58), (58, 60)]

def optimizedBody450_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (0, 56), (56, 58), (58, 60)]

def optimizedBody450_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_83 optimizedBody450_10

def optimizedBody450_85 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody450_82, 450, 14)) (some 87) ([2, 4]) (some (2, optimizedBody450_84, 450, 15))

def optimizedBody450_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56), (58, 58)]

def optimizedBody450_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (0, 54), (54, 56), (56, 58)]

def optimizedBody450_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (0, 54), (54, 56), (56, 58)]

def optimizedBody450_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_88 optimizedBody450_10

def optimizedBody450_90 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody450_87, 450, 16)) (some 77) ([2, 4, 6]) (some (2, optimizedBody450_89, 450, 17))

def optimizedBody450_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody450_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (6, 54), (52, 56)]

def optimizedBody450_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (6, 54), (52, 56)]

def optimizedBody450_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_93 optimizedBody450_10

def optimizedBody450_95 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody450_92, 450, 18)) (some 77) ([2, 4, 6]) (some (2, optimizedBody450_94, 450, 19))

def optimizedBody450_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody450_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (10, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody450_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (10, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody450_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_98 optimizedBody450_10

def optimizedBody450_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody450_97, 450, 20)) (some 192) ([2, 4, 6]) (some (2, optimizedBody450_99, 450, 21))

def optimizedBody450_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody450_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody450_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_101 optimizedBody450_102

def optimizedBody450_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_103

def optimizedBody450_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_100 optimizedBody450_104

def optimizedBody450_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_96 optimizedBody450_105

def optimizedBody450_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_33 optimizedBody450_106

def optimizedBody450_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_32 optimizedBody450_107

def optimizedBody450_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_31 optimizedBody450_108

def optimizedBody450_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_30 optimizedBody450_109

def optimizedBody450_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_110

def optimizedBody450_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_95 optimizedBody450_111

def optimizedBody450_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_91 optimizedBody450_112

def optimizedBody450_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_24 optimizedBody450_113

def optimizedBody450_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_16 optimizedBody450_114

def optimizedBody450_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_23 optimizedBody450_115

def optimizedBody450_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_14 optimizedBody450_116

def optimizedBody450_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_117

def optimizedBody450_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_90 optimizedBody450_118

def optimizedBody450_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_86 optimizedBody450_119

def optimizedBody450_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_17 optimizedBody450_120

def optimizedBody450_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_16 optimizedBody450_121

def optimizedBody450_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_15 optimizedBody450_122

def optimizedBody450_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_14 optimizedBody450_123

def optimizedBody450_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_124

def optimizedBody450_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_85 optimizedBody450_125

def optimizedBody450_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_81 optimizedBody450_126

def optimizedBody450_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_6 optimizedBody450_127

def optimizedBody450_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_80 optimizedBody450_128

def optimizedBody450_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_79 optimizedBody450_129

def optimizedBody450_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_78 optimizedBody450_130

def optimizedBody450_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_77 optimizedBody450_131

def optimizedBody450_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_76 optimizedBody450_132

def optimizedBody450_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_75 optimizedBody450_133

def optimizedBody450_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_74 optimizedBody450_134

def optimizedBody450_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_73 optimizedBody450_135

def optimizedBody450_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_72 optimizedBody450_136

def optimizedBody450_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_71 optimizedBody450_137

def optimizedBody450_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_70 optimizedBody450_138

def optimizedBody450_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_69 optimizedBody450_139

def optimizedBody450_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_140

def optimizedBody450_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_68 optimizedBody450_141

def optimizedBody450_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_64 optimizedBody450_142

def optimizedBody450_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_63 optimizedBody450_143

def optimizedBody450_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_144

def optimizedBody450_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_62 optimizedBody450_145

def optimizedBody450_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_58 optimizedBody450_146

def optimizedBody450_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_147

def optimizedBody450_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_148

def optimizedBody450_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_57 optimizedBody450_149

def optimizedBody450_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_39 optimizedBody450_150

def optimizedBody450_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_14 optimizedBody450_151

def optimizedBody450_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_152

def optimizedBody450_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_38 optimizedBody450_153

def optimizedBody450_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_34 optimizedBody450_154

def optimizedBody450_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_33 optimizedBody450_155

def optimizedBody450_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_32 optimizedBody450_156

def optimizedBody450_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_31 optimizedBody450_157

def optimizedBody450_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_30 optimizedBody450_158

def optimizedBody450_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_159

def optimizedBody450_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_29 optimizedBody450_160

def optimizedBody450_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_25 optimizedBody450_161

def optimizedBody450_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_24 optimizedBody450_162

def optimizedBody450_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_16 optimizedBody450_163

def optimizedBody450_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_23 optimizedBody450_164

def optimizedBody450_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_14 optimizedBody450_165

def optimizedBody450_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_166

def optimizedBody450_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_22 optimizedBody450_167

def optimizedBody450_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_18 optimizedBody450_168

def optimizedBody450_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_17 optimizedBody450_169

def optimizedBody450_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_16 optimizedBody450_170

def optimizedBody450_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_15 optimizedBody450_171

def optimizedBody450_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_14 optimizedBody450_172

def optimizedBody450_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_173

def optimizedBody450_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_12 optimizedBody450_174

def optimizedBody450_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_7 optimizedBody450_175

def optimizedBody450_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_6 optimizedBody450_176

def optimizedBody450_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_5 optimizedBody450_177

def optimizedBody450_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_4 optimizedBody450_178

def optimizedBody450_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_3 optimizedBody450_179

def optimizedBody450_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_2 optimizedBody450_180

def optimizedBody450_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_1 optimizedBody450_181

def optimizedBody450_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_0 optimizedBody450_182

def oracle450 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 2 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 1)) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28 (Flapjack.Spt.ls 27))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)))
                0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 2 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 1)))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 6 (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 29)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.ls 22)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 3 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 0)) 22
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 5 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                2 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 24)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 0 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3)))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 28 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 23
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 25 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23 (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 25
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 24 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 24 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))))))
def optimized450 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(450, 3, optimizedBody450_183)
theorem optimize450_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source450, oracle450) = optimized450 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize450_eq
end InitECandidate.Proofs.WordStages
