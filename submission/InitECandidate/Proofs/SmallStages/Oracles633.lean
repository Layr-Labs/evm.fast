import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source633
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles633
def optimizedBody633_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody633_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 8 Flapjack.WordStore.heapLength

def optimizedBody633_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody633_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8 8

def optimizedBody633_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 18446744073709551280#64))

def optimizedBody633_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1732584193#64)

def optimizedBody633_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody633_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody633_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody633_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody633_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 4023233417#64)

def optimizedBody633_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody633_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 2562383102#64)

def optimizedBody633_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody633_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 271733878#64)

def optimizedBody633_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 18446744073709551280#64))

def optimizedBody633_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody633_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 3285377520#64)

def optimizedBody633_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody633_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody633_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody633_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody633_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (0, 4), (48, 2), (8, 8), (54, 6)]

def optimizedBody633_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody633_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody633_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody633_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody633_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody633_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551280#64))

def optimizedBody633_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48), (8, 8)]

def optimizedBody633_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody633_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6), (50, 8), (54, 54)]

def optimizedBody633_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (4, 50), (54, 54)]

def optimizedBody633_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50), (54, 54)]

def optimizedBody633_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody633_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_33 optimizedBody633_34

def optimizedBody633_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody633_32, 633, 2)) (some 632) ([2, 4]) (some (2, optimizedBody633_35, 633, 3))

def optimizedBody633_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody633_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody633_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (48, 48), (8, 8), (54, 54)]

def optimizedBody633_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody633_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_39 optimizedBody633_40

def optimizedBody633_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_38 optimizedBody633_41

def optimizedBody633_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_37 optimizedBody633_42

def optimizedBody633_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_43

def optimizedBody633_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_36 optimizedBody633_44

def optimizedBody633_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_31 optimizedBody633_45

def optimizedBody633_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_30 optimizedBody633_46

def optimizedBody633_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_29 optimizedBody633_47

def optimizedBody633_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_28 optimizedBody633_48

def optimizedBody633_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_27 optimizedBody633_49

def optimizedBody633_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_26 optimizedBody633_50

def optimizedBody633_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_25 optimizedBody633_51

def optimizedBody633_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_52

def optimizedBody633_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8)]

def optimizedBody633_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody633_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_54 optimizedBody633_55

def optimizedBody633_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_56

def optimizedBody633_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody633_53 optimizedBody633_57

def optimizedBody633_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (48, 4), (8, 8), (54, 6)]

def optimizedBody633_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_59

def optimizedBody633_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_58 optimizedBody633_60

def optimizedBody633_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_24 optimizedBody633_61

def optimizedBody633_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_23 optimizedBody633_62

def optimizedBody633_64 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody633_63 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody633_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody633_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551272#64))

def optimizedBody633_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody633_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 6), (52, 8), (54, 54)]

def optimizedBody633_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (6, 50), (4, 52), (52, 54)]

def optimizedBody633_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (6, 50), (4, 52), (52, 54)]

def optimizedBody633_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_70 optimizedBody633_34

def optimizedBody633_72 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody633_69, 633, 4)) (some 78) ([2, 4]) (some (2, optimizedBody633_71, 633, 5))

def optimizedBody633_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody633_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody633_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 6), (52, 52)]

def optimizedBody633_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (6, 50), (46, 52)]

def optimizedBody633_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50), (46, 52)]

def optimizedBody633_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_77 optimizedBody633_34

def optimizedBody633_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody633_76, 633, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody633_78, 633, 7))

def optimizedBody633_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody633_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551272#64))

def optimizedBody633_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody633_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody633_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 64#64)

def optimizedBody633_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 56#64)

def optimizedBody633_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody633_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_86 optimizedBody633_8

def optimizedBody633_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_87

def optimizedBody633_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_8

def optimizedBody633_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody633_88 optimizedBody633_89

def optimizedBody633_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 8)]

def optimizedBody633_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody633_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody633_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody633_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody633_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 0), (48, 48), (50, 6), (46, 46), (54, 8)]

def optimizedBody633_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (54, 54)]

def optimizedBody633_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (54, 54)]

def optimizedBody633_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_98 optimizedBody633_34

def optimizedBody633_100 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody633_97, 633, 8)) (some 87) ([2, 4]) (some (2, optimizedBody633_99, 633, 9))

def optimizedBody633_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody633_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody633_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody633_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551280#64))

def optimizedBody633_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody633_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551272#64))

def optimizedBody633_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (54, 54)]

def optimizedBody633_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (0, 54)]

def optimizedBody633_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (0, 54)]

def optimizedBody633_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_109 optimizedBody633_34

def optimizedBody633_111 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody633_108, 633, 10)) (some 632) ([2, 4]) (some (2, optimizedBody633_110, 633, 11))

def optimizedBody633_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody633_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody633_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551280#64))

def optimizedBody633_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody633_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551272#64))

def optimizedBody633_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody633_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (48, 48), (50, 50), (46, 46), (54, 0)]

def optimizedBody633_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (48, 48), (50, 50), (6, 46), (46, 54)]

def optimizedBody633_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (48, 48), (50, 50), (6, 46), (46, 54)]

def optimizedBody633_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_120 optimizedBody633_34

def optimizedBody633_122 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody633_119, 633, 12)) (some 632) ([2, 4]) (some (2, optimizedBody633_121, 633, 13))

def optimizedBody633_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (48, 48), (50, 50), (6, 6), (46, 46)]

def optimizedBody633_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_123

def optimizedBody633_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_122 optimizedBody633_124

def optimizedBody633_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_118 optimizedBody633_125

def optimizedBody633_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_117 optimizedBody633_126

def optimizedBody633_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_116 optimizedBody633_127

def optimizedBody633_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_115 optimizedBody633_128

def optimizedBody633_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_114 optimizedBody633_129

def optimizedBody633_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_113 optimizedBody633_130

def optimizedBody633_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_26 optimizedBody633_131

def optimizedBody633_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_25 optimizedBody633_132

def optimizedBody633_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_133

def optimizedBody633_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (48, 48), (50, 50), (6, 46), (46, 0)]

def optimizedBody633_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_135

def optimizedBody633_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody633_134 optimizedBody633_136

def optimizedBody633_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody633_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (48, 48), (50, 50), (0, 0), (6, 6), (46, 46)]

def optimizedBody633_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody633_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody633_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody633_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody633_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody633_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (48, 48), (50, 50), (46, 0), (54, 6), (56, 46)]

def optimizedBody633_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (8, 52), (10, 48), (12, 50), (0, 46), (6, 54), (14, 56)]

def optimizedBody633_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (8, 52), (10, 48), (12, 50), (0, 46), (6, 54), (14, 56)]

def optimizedBody633_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_147 optimizedBody633_34

def optimizedBody633_149 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody633_146, 633, 14)) (some 86) ([2, 4]) (some (2, optimizedBody633_148, 633, 15))

def optimizedBody633_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody633_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 4), (52, 8), (48, 10), (50, 12), (0, 0), (6, 6), (46, 14)]

def optimizedBody633_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_151 optimizedBody633_40

def optimizedBody633_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_150 optimizedBody633_152

def optimizedBody633_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_94 optimizedBody633_153

def optimizedBody633_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_154

def optimizedBody633_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_149 optimizedBody633_155

def optimizedBody633_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_145 optimizedBody633_156

def optimizedBody633_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_144 optimizedBody633_157

def optimizedBody633_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_143 optimizedBody633_158

def optimizedBody633_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_15 optimizedBody633_159

def optimizedBody633_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_3 optimizedBody633_160

def optimizedBody633_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_2 optimizedBody633_161

def optimizedBody633_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_1 optimizedBody633_162

def optimizedBody633_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_95 optimizedBody633_163

def optimizedBody633_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_94 optimizedBody633_164

def optimizedBody633_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_142 optimizedBody633_165

def optimizedBody633_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_80 optimizedBody633_166

def optimizedBody633_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_141 optimizedBody633_167

def optimizedBody633_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_94 optimizedBody633_168

def optimizedBody633_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_169

def optimizedBody633_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_55

def optimizedBody633_172 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 2) optimizedBody633_170 optimizedBody633_171

def optimizedBody633_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (52, 4), (48, 8), (50, 10), (0, 0), (6, 6), (46, 12)]

def optimizedBody633_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_173

def optimizedBody633_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_172 optimizedBody633_174

def optimizedBody633_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_140 optimizedBody633_175

def optimizedBody633_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_94 optimizedBody633_176

def optimizedBody633_178 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody633_177 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody633_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody633_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody633_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody633_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_180 optimizedBody633_181

def optimizedBody633_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_179 optimizedBody633_182

def optimizedBody633_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_183

def optimizedBody633_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_178 optimizedBody633_184

def optimizedBody633_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_139 optimizedBody633_185

def optimizedBody633_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_186

def optimizedBody633_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_138 optimizedBody633_187

def optimizedBody633_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_188

def optimizedBody633_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_137 optimizedBody633_189

def optimizedBody633_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_112 optimizedBody633_190

def optimizedBody633_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_94 optimizedBody633_191

def optimizedBody633_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_192

def optimizedBody633_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_111 optimizedBody633_193

def optimizedBody633_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_107 optimizedBody633_194

def optimizedBody633_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_106 optimizedBody633_195

def optimizedBody633_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_105 optimizedBody633_196

def optimizedBody633_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_104 optimizedBody633_197

def optimizedBody633_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_103 optimizedBody633_198

def optimizedBody633_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_102 optimizedBody633_199

def optimizedBody633_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_101 optimizedBody633_200

def optimizedBody633_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_201

def optimizedBody633_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_100 optimizedBody633_202

def optimizedBody633_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_96 optimizedBody633_203

def optimizedBody633_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_95 optimizedBody633_204

def optimizedBody633_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_94 optimizedBody633_205

def optimizedBody633_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_93 optimizedBody633_206

def optimizedBody633_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_92 optimizedBody633_207

def optimizedBody633_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_66 optimizedBody633_208

def optimizedBody633_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_91 optimizedBody633_209

def optimizedBody633_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_210

def optimizedBody633_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_90 optimizedBody633_211

def optimizedBody633_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_85 optimizedBody633_212

def optimizedBody633_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_80 optimizedBody633_213

def optimizedBody633_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_84 optimizedBody633_214

def optimizedBody633_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_83 optimizedBody633_215

def optimizedBody633_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_67 optimizedBody633_216

def optimizedBody633_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_82 optimizedBody633_217

def optimizedBody633_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_81 optimizedBody633_218

def optimizedBody633_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_27 optimizedBody633_219

def optimizedBody633_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_26 optimizedBody633_220

def optimizedBody633_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_25 optimizedBody633_221

def optimizedBody633_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_80 optimizedBody633_222

def optimizedBody633_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_223

def optimizedBody633_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_79 optimizedBody633_224

def optimizedBody633_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_75 optimizedBody633_225

def optimizedBody633_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_74 optimizedBody633_226

def optimizedBody633_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_73 optimizedBody633_227

def optimizedBody633_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_66 optimizedBody633_228

def optimizedBody633_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_27 optimizedBody633_229

def optimizedBody633_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_26 optimizedBody633_230

def optimizedBody633_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_25 optimizedBody633_231

def optimizedBody633_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_232

def optimizedBody633_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_72 optimizedBody633_233

def optimizedBody633_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_68 optimizedBody633_234

def optimizedBody633_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_67 optimizedBody633_235

def optimizedBody633_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_66 optimizedBody633_236

def optimizedBody633_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_27 optimizedBody633_237

def optimizedBody633_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_26 optimizedBody633_238

def optimizedBody633_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_25 optimizedBody633_239

def optimizedBody633_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_65 optimizedBody633_240

def optimizedBody633_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_23 optimizedBody633_241

def optimizedBody633_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_242

def optimizedBody633_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_64 optimizedBody633_243

def optimizedBody633_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_22 optimizedBody633_244

def optimizedBody633_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_245

def optimizedBody633_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_20 optimizedBody633_246

def optimizedBody633_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_19 optimizedBody633_247

def optimizedBody633_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_18 optimizedBody633_248

def optimizedBody633_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_17 optimizedBody633_249

def optimizedBody633_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_16 optimizedBody633_250

def optimizedBody633_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_15 optimizedBody633_251

def optimizedBody633_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_8 optimizedBody633_252

def optimizedBody633_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_7 optimizedBody633_253

def optimizedBody633_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_6 optimizedBody633_254

def optimizedBody633_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_14 optimizedBody633_255

def optimizedBody633_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_13 optimizedBody633_256

def optimizedBody633_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_4 optimizedBody633_257

def optimizedBody633_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_8 optimizedBody633_258

def optimizedBody633_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_7 optimizedBody633_259

def optimizedBody633_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_6 optimizedBody633_260

def optimizedBody633_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_12 optimizedBody633_261

def optimizedBody633_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_11 optimizedBody633_262

def optimizedBody633_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_4 optimizedBody633_263

def optimizedBody633_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_8 optimizedBody633_264

def optimizedBody633_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_7 optimizedBody633_265

def optimizedBody633_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_6 optimizedBody633_266

def optimizedBody633_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_10 optimizedBody633_267

def optimizedBody633_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_9 optimizedBody633_268

def optimizedBody633_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_4 optimizedBody633_269

def optimizedBody633_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_8 optimizedBody633_270

def optimizedBody633_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_7 optimizedBody633_271

def optimizedBody633_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_6 optimizedBody633_272

def optimizedBody633_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_5 optimizedBody633_273

def optimizedBody633_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_4 optimizedBody633_274

def optimizedBody633_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_3 optimizedBody633_275

def optimizedBody633_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_2 optimizedBody633_276

def optimizedBody633_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_1 optimizedBody633_277

def optimizedBody633_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_0 optimizedBody633_278

def oracle633 : Option (Spt Nat) :=
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
def optimized633 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(633, 4, optimizedBody633_279)
end InitECandidate.Proofs.SmallStages.Oracles633
