import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source864
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles864
def optimizedBody864_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody864_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody864_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody864_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody864_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody864_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody864_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_5

def optimizedBody864_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 2)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 3))

def optimizedBody864_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody864_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody864_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody864_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody864_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550976#64)))

def optimizedBody864_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody864_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody864_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550976#64))

def optimizedBody864_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody864_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody864_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody864_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 4)) (some 78) ([2, 4]) (some (2, optimizedBody864_6, 864, 5))

def optimizedBody864_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 360#64)

def optimizedBody864_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 6)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 7))

def optimizedBody864_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550984#64)))

def optimizedBody864_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550984#64))

def optimizedBody864_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 360#64)

def optimizedBody864_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 8)) (some 78) ([2, 4]) (some (2, optimizedBody864_6, 864, 9))

def optimizedBody864_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody864_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (2, 2)]

def optimizedBody864_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody864_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody864_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 20#64)

def optimizedBody864_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4)]

def optimizedBody864_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody864_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody864_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody864_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody864_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709550984#64))

def optimizedBody864_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody864_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 19#64)))

def optimizedBody864_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody864_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody864_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody864_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody864_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_41 optimizedBody864_42

def optimizedBody864_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_40 optimizedBody864_43

def optimizedBody864_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_39 optimizedBody864_44

def optimizedBody864_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_28 optimizedBody864_45

def optimizedBody864_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_38 optimizedBody864_46

def optimizedBody864_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_37 optimizedBody864_47

def optimizedBody864_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_36 optimizedBody864_48

def optimizedBody864_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_35 optimizedBody864_49

def optimizedBody864_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_34 optimizedBody864_50

def optimizedBody864_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_33 optimizedBody864_51

def optimizedBody864_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_52

def optimizedBody864_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_32 optimizedBody864_53

def optimizedBody864_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_31 optimizedBody864_54

def optimizedBody864_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_30 optimizedBody864_55

def optimizedBody864_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_28 optimizedBody864_56

def optimizedBody864_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_57

def optimizedBody864_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody864_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_59

def optimizedBody864_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 0) optimizedBody864_58 optimizedBody864_60

def optimizedBody864_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_41

def optimizedBody864_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_61 optimizedBody864_62

def optimizedBody864_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_29 optimizedBody864_63

def optimizedBody864_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_28 optimizedBody864_64

def optimizedBody864_66 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody864_65 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody864_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709550984#64))

def optimizedBody864_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 358#64)))

def optimizedBody864_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody864_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody864_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody864_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 10)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 11))

def optimizedBody864_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550944#64)))

def optimizedBody864_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550944#64))

def optimizedBody864_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 13311379508201171970#64)

def optimizedBody864_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15506597749690834871#64)

def optimizedBody864_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 998902#64)

def optimizedBody864_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody864_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 12)) (some 863) ([2, 4, 6, 8]) (some (2, optimizedBody864_6, 864, 13))

def optimizedBody864_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 14)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 15))

def optimizedBody864_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550936#64)))

def optimizedBody864_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550936#64))

def optimizedBody864_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 3700577164601600309#64)

def optimizedBody864_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2878298490047003138#64)

def optimizedBody864_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 63752#64)

def optimizedBody864_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 16)) (some 863) ([2, 4, 6, 8]) (some (2, optimizedBody864_6, 864, 17))

def optimizedBody864_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 18)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 19))

def optimizedBody864_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550928#64)))

def optimizedBody864_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550928#64))

def optimizedBody864_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 15579492241104728066#64)

def optimizedBody864_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17242047345525313946#64)

def optimizedBody864_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2401#64)

def optimizedBody864_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 20)) (some 863) ([2, 4, 6, 8]) (some (2, optimizedBody864_6, 864, 21))

def optimizedBody864_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 22)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 23))

def optimizedBody864_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550920#64)))

def optimizedBody864_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550920#64))

def optimizedBody864_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 10016273463683084881#64)

def optimizedBody864_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14397524800236640159#64)

def optimizedBody864_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48093#64)

def optimizedBody864_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 24)) (some 863) ([2, 4, 6, 8]) (some (2, optimizedBody864_6, 864, 25))

def optimizedBody864_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 26)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 27))

def optimizedBody864_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550912#64)))

def optimizedBody864_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550912#64))

def optimizedBody864_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 760111669195932290#64)

def optimizedBody864_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7603452151126424148#64)

def optimizedBody864_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 49140#64)

def optimizedBody864_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 28)) (some 863) ([2, 4, 6, 8]) (some (2, optimizedBody864_6, 864, 29))

def optimizedBody864_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 30)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 31))

def optimizedBody864_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550904#64)))

def optimizedBody864_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550904#64))

def optimizedBody864_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4307224735379260034#64)

def optimizedBody864_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8669529151676140297#64)

def optimizedBody864_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 25814#64)

def optimizedBody864_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 32)) (some 863) ([2, 4, 6, 8]) (some (2, optimizedBody864_6, 864, 33))

def optimizedBody864_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 34)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 35))

def optimizedBody864_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550896#64)))

def optimizedBody864_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550896#64))

def optimizedBody864_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 11294470620239562234#64)

def optimizedBody864_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2421447037043915651#64)

def optimizedBody864_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody864_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 36)) (some 863) ([2, 4, 6, 8]) (some (2, optimizedBody864_6, 864, 37))

def optimizedBody864_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 38)) (some 68) ([2]) (some (2, optimizedBody864_6, 864, 39))

def optimizedBody864_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709550888#64)))

def optimizedBody864_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709550888#64))

def optimizedBody864_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 7249595157780304706#64)

def optimizedBody864_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 40)) (some 89) ([2, 4]) (some (2, optimizedBody864_6, 864, 41))

def optimizedBody864_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709550888#64))

def optimizedBody864_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody864_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12676030261858484297#64)

def optimizedBody864_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 42)) (some 89) ([2, 4]) (some (2, optimizedBody864_6, 864, 43))

def optimizedBody864_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody864_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16708898399860066458#64)

def optimizedBody864_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_18, 864, 44)) (some 89) ([2, 4]) (some (2, optimizedBody864_6, 864, 45))

def optimizedBody864_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody864_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12074291595689605317#64)

def optimizedBody864_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody864_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody864_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_137 optimizedBody864_5

def optimizedBody864_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_136, 864, 46)) (some 89) ([2, 4]) (some (2, optimizedBody864_138, 864, 47))

def optimizedBody864_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody864_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_28 optimizedBody864_140

def optimizedBody864_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_26 optimizedBody864_141

def optimizedBody864_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_142

def optimizedBody864_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_139 optimizedBody864_143

def optimizedBody864_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_17 optimizedBody864_144

def optimizedBody864_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_135 optimizedBody864_145

def optimizedBody864_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_134 optimizedBody864_146

def optimizedBody864_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_127 optimizedBody864_147

def optimizedBody864_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_148

def optimizedBody864_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_149

def optimizedBody864_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_150

def optimizedBody864_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_151

def optimizedBody864_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_133 optimizedBody864_152

def optimizedBody864_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_17 optimizedBody864_153

def optimizedBody864_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_132 optimizedBody864_154

def optimizedBody864_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_131 optimizedBody864_155

def optimizedBody864_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_127 optimizedBody864_156

def optimizedBody864_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_157

def optimizedBody864_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_158

def optimizedBody864_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_159

def optimizedBody864_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_160

def optimizedBody864_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_130 optimizedBody864_161

def optimizedBody864_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_17 optimizedBody864_162

def optimizedBody864_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_129 optimizedBody864_163

def optimizedBody864_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_128 optimizedBody864_164

def optimizedBody864_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_127 optimizedBody864_165

def optimizedBody864_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_166

def optimizedBody864_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_167

def optimizedBody864_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_168

def optimizedBody864_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_169

def optimizedBody864_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_126 optimizedBody864_170

def optimizedBody864_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_17 optimizedBody864_171

def optimizedBody864_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_125 optimizedBody864_172

def optimizedBody864_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_124 optimizedBody864_173

def optimizedBody864_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_174

def optimizedBody864_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_175

def optimizedBody864_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_176

def optimizedBody864_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_123 optimizedBody864_177

def optimizedBody864_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_178

def optimizedBody864_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_179

def optimizedBody864_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_180

def optimizedBody864_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_181

def optimizedBody864_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_122 optimizedBody864_182

def optimizedBody864_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_183

def optimizedBody864_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_1 optimizedBody864_184

def optimizedBody864_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_185

def optimizedBody864_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_121 optimizedBody864_186

def optimizedBody864_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_78 optimizedBody864_187

def optimizedBody864_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_120 optimizedBody864_188

def optimizedBody864_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_119 optimizedBody864_189

def optimizedBody864_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_118 optimizedBody864_190

def optimizedBody864_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_117 optimizedBody864_191

def optimizedBody864_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_192

def optimizedBody864_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_193

def optimizedBody864_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_194

def optimizedBody864_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_116 optimizedBody864_195

def optimizedBody864_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_196

def optimizedBody864_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_197

def optimizedBody864_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_198

def optimizedBody864_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_199

def optimizedBody864_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_115 optimizedBody864_200

def optimizedBody864_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_201

def optimizedBody864_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_71 optimizedBody864_202

def optimizedBody864_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_203

def optimizedBody864_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_114 optimizedBody864_204

def optimizedBody864_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_78 optimizedBody864_205

def optimizedBody864_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_113 optimizedBody864_206

def optimizedBody864_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_112 optimizedBody864_207

def optimizedBody864_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_111 optimizedBody864_208

def optimizedBody864_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_110 optimizedBody864_209

def optimizedBody864_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_210

def optimizedBody864_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_211

def optimizedBody864_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_212

def optimizedBody864_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_109 optimizedBody864_213

def optimizedBody864_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_214

def optimizedBody864_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_215

def optimizedBody864_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_216

def optimizedBody864_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_217

def optimizedBody864_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_108 optimizedBody864_218

def optimizedBody864_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_219

def optimizedBody864_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_71 optimizedBody864_220

def optimizedBody864_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_221

def optimizedBody864_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_107 optimizedBody864_222

def optimizedBody864_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_78 optimizedBody864_223

def optimizedBody864_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_106 optimizedBody864_224

def optimizedBody864_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_105 optimizedBody864_225

def optimizedBody864_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_104 optimizedBody864_226

def optimizedBody864_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_103 optimizedBody864_227

def optimizedBody864_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_228

def optimizedBody864_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_229

def optimizedBody864_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_230

def optimizedBody864_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_102 optimizedBody864_231

def optimizedBody864_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_232

def optimizedBody864_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_233

def optimizedBody864_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_234

def optimizedBody864_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_235

def optimizedBody864_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_101 optimizedBody864_236

def optimizedBody864_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_237

def optimizedBody864_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_71 optimizedBody864_238

def optimizedBody864_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_239

def optimizedBody864_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_100 optimizedBody864_240

def optimizedBody864_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_78 optimizedBody864_241

def optimizedBody864_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_99 optimizedBody864_242

def optimizedBody864_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_98 optimizedBody864_243

def optimizedBody864_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_97 optimizedBody864_244

def optimizedBody864_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_96 optimizedBody864_245

def optimizedBody864_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_246

def optimizedBody864_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_247

def optimizedBody864_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_248

def optimizedBody864_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_95 optimizedBody864_249

def optimizedBody864_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_250

def optimizedBody864_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_251

def optimizedBody864_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_252

def optimizedBody864_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_253

def optimizedBody864_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_94 optimizedBody864_254

def optimizedBody864_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_255

def optimizedBody864_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_71 optimizedBody864_256

def optimizedBody864_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_257

def optimizedBody864_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_93 optimizedBody864_258

def optimizedBody864_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_78 optimizedBody864_259

def optimizedBody864_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_92 optimizedBody864_260

def optimizedBody864_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_91 optimizedBody864_261

def optimizedBody864_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_90 optimizedBody864_262

def optimizedBody864_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_89 optimizedBody864_263

def optimizedBody864_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_264

def optimizedBody864_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_265

def optimizedBody864_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_266

def optimizedBody864_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_88 optimizedBody864_267

def optimizedBody864_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_268

def optimizedBody864_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_269

def optimizedBody864_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_270

def optimizedBody864_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_271

def optimizedBody864_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_87 optimizedBody864_272

def optimizedBody864_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_273

def optimizedBody864_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_71 optimizedBody864_274

def optimizedBody864_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_275

def optimizedBody864_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_86 optimizedBody864_276

def optimizedBody864_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_78 optimizedBody864_277

def optimizedBody864_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_85 optimizedBody864_278

def optimizedBody864_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_84 optimizedBody864_279

def optimizedBody864_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_83 optimizedBody864_280

def optimizedBody864_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_82 optimizedBody864_281

def optimizedBody864_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_282

def optimizedBody864_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_283

def optimizedBody864_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_284

def optimizedBody864_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_81 optimizedBody864_285

def optimizedBody864_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_286

def optimizedBody864_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_287

def optimizedBody864_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_288

def optimizedBody864_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_289

def optimizedBody864_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_80 optimizedBody864_290

def optimizedBody864_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_291

def optimizedBody864_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_71 optimizedBody864_292

def optimizedBody864_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_293

def optimizedBody864_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_79 optimizedBody864_294

def optimizedBody864_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_78 optimizedBody864_295

def optimizedBody864_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_77 optimizedBody864_296

def optimizedBody864_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_76 optimizedBody864_297

def optimizedBody864_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_75 optimizedBody864_298

def optimizedBody864_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_74 optimizedBody864_299

def optimizedBody864_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_300

def optimizedBody864_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_301

def optimizedBody864_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_302

def optimizedBody864_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_73 optimizedBody864_303

def optimizedBody864_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_304

def optimizedBody864_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_305

def optimizedBody864_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_306

def optimizedBody864_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_307

def optimizedBody864_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_72 optimizedBody864_308

def optimizedBody864_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_309

def optimizedBody864_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_71 optimizedBody864_310

def optimizedBody864_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_70 optimizedBody864_311

def optimizedBody864_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_69 optimizedBody864_312

def optimizedBody864_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_68 optimizedBody864_313

def optimizedBody864_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_67 optimizedBody864_314

def optimizedBody864_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_315

def optimizedBody864_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_316

def optimizedBody864_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_317

def optimizedBody864_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_318

def optimizedBody864_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_66 optimizedBody864_319

def optimizedBody864_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_27 optimizedBody864_320

def optimizedBody864_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_321

def optimizedBody864_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_26 optimizedBody864_322

def optimizedBody864_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_323

def optimizedBody864_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_25 optimizedBody864_324

def optimizedBody864_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_17 optimizedBody864_325

def optimizedBody864_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_24 optimizedBody864_326

def optimizedBody864_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_23 optimizedBody864_327

def optimizedBody864_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_328

def optimizedBody864_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_329

def optimizedBody864_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_330

def optimizedBody864_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_22 optimizedBody864_331

def optimizedBody864_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_332

def optimizedBody864_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_333

def optimizedBody864_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_334

def optimizedBody864_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_335

def optimizedBody864_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_21 optimizedBody864_336

def optimizedBody864_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_337

def optimizedBody864_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_20 optimizedBody864_338

def optimizedBody864_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_339

def optimizedBody864_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_19 optimizedBody864_340

def optimizedBody864_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_17 optimizedBody864_341

def optimizedBody864_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_16 optimizedBody864_342

def optimizedBody864_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_15 optimizedBody864_343

def optimizedBody864_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_344

def optimizedBody864_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_14 optimizedBody864_345

def optimizedBody864_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_13 optimizedBody864_346

def optimizedBody864_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_12 optimizedBody864_347

def optimizedBody864_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_11 optimizedBody864_348

def optimizedBody864_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_10 optimizedBody864_349

def optimizedBody864_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_350

def optimizedBody864_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_351

def optimizedBody864_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_7 optimizedBody864_352

def optimizedBody864_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_2 optimizedBody864_353

def optimizedBody864_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_1 optimizedBody864_354

def optimizedBody864_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_355

def oracle864 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  0 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln)))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
              22
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 1 (Flapjack.Spt.ls 0)))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 4))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22))))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                  22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 22)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))))
            0
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0)))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))))))
def optimized864 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(864, 1, optimizedBody864_356)
end InitECandidate.Proofs.SmallStages.Oracles864
