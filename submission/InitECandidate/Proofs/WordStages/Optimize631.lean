import InitECandidate.Proofs.WordStages.Optimize615
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source631
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody631_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody631_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 8 Flapjack.WordStore.heapLength

def optimizedBody631_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody631_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8 8

def optimizedBody631_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 18446744073709551280#64))

def optimizedBody631_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1732584193#64)

def optimizedBody631_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody631_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody631_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody631_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody631_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 4023233417#64)

def optimizedBody631_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody631_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 2562383102#64)

def optimizedBody631_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody631_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 271733878#64)

def optimizedBody631_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 18446744073709551280#64))

def optimizedBody631_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody631_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 3285377520#64)

def optimizedBody631_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody631_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody631_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody631_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody631_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (0, 4), (48, 2), (8, 8), (54, 6)]

def optimizedBody631_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody631_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody631_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody631_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody631_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody631_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551280#64))

def optimizedBody631_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48), (8, 8)]

def optimizedBody631_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody631_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6), (50, 8), (54, 54)]

def optimizedBody631_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (4, 50), (54, 54)]

def optimizedBody631_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50), (54, 54)]

def optimizedBody631_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody631_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_33 optimizedBody631_34

def optimizedBody631_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody631_32, 631, 2)) (some 630) ([2, 4]) (some (2, optimizedBody631_35, 631, 3))

def optimizedBody631_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody631_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody631_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (48, 48), (8, 8), (54, 54)]

def optimizedBody631_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody631_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_39 optimizedBody631_40

def optimizedBody631_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_38 optimizedBody631_41

def optimizedBody631_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_37 optimizedBody631_42

def optimizedBody631_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_43

def optimizedBody631_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_36 optimizedBody631_44

def optimizedBody631_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_31 optimizedBody631_45

def optimizedBody631_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_30 optimizedBody631_46

def optimizedBody631_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_29 optimizedBody631_47

def optimizedBody631_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_28 optimizedBody631_48

def optimizedBody631_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_27 optimizedBody631_49

def optimizedBody631_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_26 optimizedBody631_50

def optimizedBody631_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_25 optimizedBody631_51

def optimizedBody631_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_52

def optimizedBody631_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8)]

def optimizedBody631_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody631_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_54 optimizedBody631_55

def optimizedBody631_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_56

def optimizedBody631_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody631_53 optimizedBody631_57

def optimizedBody631_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (48, 4), (8, 8), (54, 6)]

def optimizedBody631_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_59

def optimizedBody631_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_58 optimizedBody631_60

def optimizedBody631_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_24 optimizedBody631_61

def optimizedBody631_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_23 optimizedBody631_62

def optimizedBody631_64 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody631_63 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody631_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody631_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551272#64))

def optimizedBody631_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody631_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 6), (52, 8), (54, 54)]

def optimizedBody631_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (6, 50), (4, 52), (52, 54)]

def optimizedBody631_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (6, 50), (4, 52), (52, 54)]

def optimizedBody631_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_70 optimizedBody631_34

def optimizedBody631_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody631_69, 631, 4)) (some 78) ([2, 4]) (some (2, optimizedBody631_71, 631, 5))

def optimizedBody631_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody631_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody631_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 6), (52, 52)]

def optimizedBody631_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (6, 50), (46, 52)]

def optimizedBody631_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50), (46, 52)]

def optimizedBody631_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_77 optimizedBody631_34

def optimizedBody631_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody631_76, 631, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody631_78, 631, 7))

def optimizedBody631_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody631_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551272#64))

def optimizedBody631_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody631_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody631_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 64#64)

def optimizedBody631_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 56#64)

def optimizedBody631_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody631_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_86 optimizedBody631_8

def optimizedBody631_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_87

def optimizedBody631_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_8

def optimizedBody631_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody631_88 optimizedBody631_89

def optimizedBody631_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 8)]

def optimizedBody631_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody631_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody631_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody631_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody631_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 0), (48, 48), (50, 6), (46, 46), (54, 8)]

def optimizedBody631_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (54, 54)]

def optimizedBody631_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (54, 54)]

def optimizedBody631_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_98 optimizedBody631_34

def optimizedBody631_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody631_97, 631, 8)) (some 87) ([2, 4]) (some (2, optimizedBody631_99, 631, 9))

def optimizedBody631_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody631_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody631_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody631_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551280#64))

def optimizedBody631_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody631_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551272#64))

def optimizedBody631_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (54, 54)]

def optimizedBody631_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (0, 54)]

def optimizedBody631_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (0, 54)]

def optimizedBody631_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_109 optimizedBody631_34

def optimizedBody631_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody631_108, 631, 10)) (some 630) ([2, 4]) (some (2, optimizedBody631_110, 631, 11))

def optimizedBody631_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody631_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody631_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551280#64))

def optimizedBody631_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody631_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551272#64))

def optimizedBody631_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody631_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (54, 0)]

def optimizedBody631_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (48, 48), (50, 50), (6, 46), (46, 54)]

def optimizedBody631_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (48, 48), (50, 50), (6, 46), (46, 54)]

def optimizedBody631_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_120 optimizedBody631_34

def optimizedBody631_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody631_119, 631, 12)) (some 630) ([2, 4]) (some (2, optimizedBody631_121, 631, 13))

def optimizedBody631_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (48, 48), (50, 50), (6, 6), (46, 46)]

def optimizedBody631_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_123

def optimizedBody631_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_122 optimizedBody631_124

def optimizedBody631_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_118 optimizedBody631_125

def optimizedBody631_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_117 optimizedBody631_126

def optimizedBody631_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_116 optimizedBody631_127

def optimizedBody631_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_115 optimizedBody631_128

def optimizedBody631_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_114 optimizedBody631_129

def optimizedBody631_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_113 optimizedBody631_130

def optimizedBody631_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_26 optimizedBody631_131

def optimizedBody631_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_25 optimizedBody631_132

def optimizedBody631_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_133

def optimizedBody631_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (48, 48), (50, 50), (6, 46), (46, 0)]

def optimizedBody631_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_135

def optimizedBody631_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody631_134 optimizedBody631_136

def optimizedBody631_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody631_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (48, 48), (50, 50), (0, 0), (6, 6), (46, 46)]

def optimizedBody631_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody631_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody631_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody631_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody631_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody631_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (48, 48), (50, 50), (46, 0), (54, 6), (56, 46)]

def optimizedBody631_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (8, 52), (10, 48), (12, 50), (0, 46), (6, 54), (14, 56)]

def optimizedBody631_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (8, 52), (10, 48), (12, 50), (0, 46), (6, 54), (14, 56)]

def optimizedBody631_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_147 optimizedBody631_34

def optimizedBody631_149 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody631_146, 631, 14)) (some 86) ([2, 4]) (some (2, optimizedBody631_148, 631, 15))

def optimizedBody631_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody631_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 4), (52, 8), (48, 10), (50, 12), (0, 0), (6, 6), (46, 14)]

def optimizedBody631_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_151 optimizedBody631_40

def optimizedBody631_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_150 optimizedBody631_152

def optimizedBody631_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_94 optimizedBody631_153

def optimizedBody631_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_154

def optimizedBody631_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_149 optimizedBody631_155

def optimizedBody631_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_145 optimizedBody631_156

def optimizedBody631_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_144 optimizedBody631_157

def optimizedBody631_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_143 optimizedBody631_158

def optimizedBody631_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_15 optimizedBody631_159

def optimizedBody631_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_3 optimizedBody631_160

def optimizedBody631_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_161

def optimizedBody631_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_1 optimizedBody631_162

def optimizedBody631_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_95 optimizedBody631_163

def optimizedBody631_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_94 optimizedBody631_164

def optimizedBody631_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_142 optimizedBody631_165

def optimizedBody631_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_80 optimizedBody631_166

def optimizedBody631_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_141 optimizedBody631_167

def optimizedBody631_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_94 optimizedBody631_168

def optimizedBody631_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_169

def optimizedBody631_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_55

def optimizedBody631_172 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 2) optimizedBody631_170 optimizedBody631_171

def optimizedBody631_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (52, 4), (48, 8), (50, 10), (0, 0), (6, 6), (46, 12)]

def optimizedBody631_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_173

def optimizedBody631_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_172 optimizedBody631_174

def optimizedBody631_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_140 optimizedBody631_175

def optimizedBody631_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_94 optimizedBody631_176

def optimizedBody631_178 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody631_177 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody631_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody631_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody631_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody631_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_180 optimizedBody631_181

def optimizedBody631_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_179 optimizedBody631_182

def optimizedBody631_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_183

def optimizedBody631_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_178 optimizedBody631_184

def optimizedBody631_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_139 optimizedBody631_185

def optimizedBody631_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_186

def optimizedBody631_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_138 optimizedBody631_187

def optimizedBody631_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_188

def optimizedBody631_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_137 optimizedBody631_189

def optimizedBody631_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_112 optimizedBody631_190

def optimizedBody631_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_94 optimizedBody631_191

def optimizedBody631_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_192

def optimizedBody631_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_111 optimizedBody631_193

def optimizedBody631_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_107 optimizedBody631_194

def optimizedBody631_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_106 optimizedBody631_195

def optimizedBody631_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_105 optimizedBody631_196

def optimizedBody631_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_104 optimizedBody631_197

def optimizedBody631_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_103 optimizedBody631_198

def optimizedBody631_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_102 optimizedBody631_199

def optimizedBody631_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_101 optimizedBody631_200

def optimizedBody631_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_201

def optimizedBody631_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_100 optimizedBody631_202

def optimizedBody631_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_96 optimizedBody631_203

def optimizedBody631_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_95 optimizedBody631_204

def optimizedBody631_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_94 optimizedBody631_205

def optimizedBody631_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_93 optimizedBody631_206

def optimizedBody631_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_92 optimizedBody631_207

def optimizedBody631_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_66 optimizedBody631_208

def optimizedBody631_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_91 optimizedBody631_209

def optimizedBody631_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_210

def optimizedBody631_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_90 optimizedBody631_211

def optimizedBody631_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_85 optimizedBody631_212

def optimizedBody631_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_80 optimizedBody631_213

def optimizedBody631_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_84 optimizedBody631_214

def optimizedBody631_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_83 optimizedBody631_215

def optimizedBody631_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_67 optimizedBody631_216

def optimizedBody631_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_82 optimizedBody631_217

def optimizedBody631_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_81 optimizedBody631_218

def optimizedBody631_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_27 optimizedBody631_219

def optimizedBody631_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_26 optimizedBody631_220

def optimizedBody631_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_25 optimizedBody631_221

def optimizedBody631_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_80 optimizedBody631_222

def optimizedBody631_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_223

def optimizedBody631_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_79 optimizedBody631_224

def optimizedBody631_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_75 optimizedBody631_225

def optimizedBody631_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_74 optimizedBody631_226

def optimizedBody631_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_73 optimizedBody631_227

def optimizedBody631_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_66 optimizedBody631_228

def optimizedBody631_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_27 optimizedBody631_229

def optimizedBody631_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_26 optimizedBody631_230

def optimizedBody631_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_25 optimizedBody631_231

def optimizedBody631_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_232

def optimizedBody631_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_72 optimizedBody631_233

def optimizedBody631_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_68 optimizedBody631_234

def optimizedBody631_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_67 optimizedBody631_235

def optimizedBody631_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_66 optimizedBody631_236

def optimizedBody631_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_27 optimizedBody631_237

def optimizedBody631_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_26 optimizedBody631_238

def optimizedBody631_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_25 optimizedBody631_239

def optimizedBody631_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_65 optimizedBody631_240

def optimizedBody631_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_23 optimizedBody631_241

def optimizedBody631_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_242

def optimizedBody631_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_64 optimizedBody631_243

def optimizedBody631_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_22 optimizedBody631_244

def optimizedBody631_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_245

def optimizedBody631_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_20 optimizedBody631_246

def optimizedBody631_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_19 optimizedBody631_247

def optimizedBody631_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_18 optimizedBody631_248

def optimizedBody631_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_17 optimizedBody631_249

def optimizedBody631_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_16 optimizedBody631_250

def optimizedBody631_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_15 optimizedBody631_251

def optimizedBody631_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_8 optimizedBody631_252

def optimizedBody631_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_7 optimizedBody631_253

def optimizedBody631_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_6 optimizedBody631_254

def optimizedBody631_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_14 optimizedBody631_255

def optimizedBody631_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_13 optimizedBody631_256

def optimizedBody631_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_4 optimizedBody631_257

def optimizedBody631_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_8 optimizedBody631_258

def optimizedBody631_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_7 optimizedBody631_259

def optimizedBody631_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_6 optimizedBody631_260

def optimizedBody631_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_12 optimizedBody631_261

def optimizedBody631_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_11 optimizedBody631_262

def optimizedBody631_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_4 optimizedBody631_263

def optimizedBody631_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_8 optimizedBody631_264

def optimizedBody631_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_7 optimizedBody631_265

def optimizedBody631_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_6 optimizedBody631_266

def optimizedBody631_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_10 optimizedBody631_267

def optimizedBody631_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_9 optimizedBody631_268

def optimizedBody631_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_4 optimizedBody631_269

def optimizedBody631_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_8 optimizedBody631_270

def optimizedBody631_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_7 optimizedBody631_271

def optimizedBody631_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_6 optimizedBody631_272

def optimizedBody631_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_5 optimizedBody631_273

def optimizedBody631_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_4 optimizedBody631_274

def optimizedBody631_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_3 optimizedBody631_275

def optimizedBody631_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_276

def optimizedBody631_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_1 optimizedBody631_277

def optimizedBody631_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_0 optimizedBody631_278

def oracle631 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln) 6
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              6
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 25)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
                6
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7))) 6
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 2))) 4
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0)) 4
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)))))
              5
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 4))) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 27)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 4
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 1 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))) 4
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 5))) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6))) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
                5
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 5
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 4
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                5 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  Flapjack.Spt.ln))))))))
def optimized631 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(631, 4, optimizedBody631_279)
theorem optimize631_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source631, oracle631) = optimized631 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize631_eq
end InitECandidate.Proofs.WordStages
