import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source451
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles451
def optimizedBody451_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2)]

def optimizedBody451_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody451_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody451_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody451_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551368#64))

def optimizedBody451_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def optimizedBody451_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551392#64))

def optimizedBody451_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6), (48, 2)]

def optimizedBody451_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody451_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody451_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody451_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_9 optimizedBody451_10

def optimizedBody451_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_8, 451, 2)) (some 87) ([2, 4]) (some (2, optimizedBody451_11, 451, 3))

def optimizedBody451_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody451_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody451_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody451_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody451_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody451_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 0)]

def optimizedBody451_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48)]

def optimizedBody451_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48)]

def optimizedBody451_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_20 optimizedBody451_10

def optimizedBody451_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_19, 451, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody451_21, 451, 5))

def optimizedBody451_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody451_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody451_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody451_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551384#64))

def optimizedBody451_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (50, 4)]

def optimizedBody451_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (8, 44), (6, 46), (50, 50)]

def optimizedBody451_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (50, 50)]

def optimizedBody451_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_29 optimizedBody451_10

def optimizedBody451_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_28, 451, 6)) (some 186) ([2, 4]) (some (2, optimizedBody451_30, 451, 7))

def optimizedBody451_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody451_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody451_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody451_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_33 optimizedBody451_34

def optimizedBody451_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_35

def optimizedBody451_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody451_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody451_36 optimizedBody451_37

def optimizedBody451_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6), (50, 50)]

def optimizedBody451_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody451_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody451_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_41 optimizedBody451_10

def optimizedBody451_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_40, 451, 8)) (some 449) ([2]) (some (2, optimizedBody451_42, 451, 9))

def optimizedBody451_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 80#64)

def optimizedBody451_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody451_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody451_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody451_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_47 optimizedBody451_10

def optimizedBody451_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_46, 451, 10)) (some 68) ([2]) (some (2, optimizedBody451_48, 451, 11))

def optimizedBody451_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody451_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 80#64)

def optimizedBody451_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 2)]

def optimizedBody451_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52)]

def optimizedBody451_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52)]

def optimizedBody451_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_54 optimizedBody451_10

def optimizedBody451_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_53, 451, 12)) (some 78) ([2, 4]) (some (2, optimizedBody451_55, 451, 13))

def optimizedBody451_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody451_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody451_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody451_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody451_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551480#64))

def optimizedBody451_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody451_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0)]

def optimizedBody451_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody451_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody451_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_65 optimizedBody451_10

def optimizedBody451_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_64, 451, 14)) (some 77) ([2, 4, 6]) (some (2, optimizedBody451_66, 451, 15))

def optimizedBody451_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody451_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 50)]

def optimizedBody451_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody451_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody451_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody451_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody451_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody451_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody451_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody451_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody451_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody451_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody451_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody451_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (12, 12)]

def optimizedBody451_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody451_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody451_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody451_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody451_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody451_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody451_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody451_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody451_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody451_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody451_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_91 optimizedBody451_10

def optimizedBody451_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_90, 451, 16)) (some 77) ([2, 4, 6]) (some (2, optimizedBody451_92, 451, 17))

def optimizedBody451_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (50, 50)]

def optimizedBody451_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_94

def optimizedBody451_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_93 optimizedBody451_95

def optimizedBody451_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_89 optimizedBody451_96

def optimizedBody451_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_62 optimizedBody451_97

def optimizedBody451_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_88 optimizedBody451_98

def optimizedBody451_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_99

def optimizedBody451_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_57 optimizedBody451_100

def optimizedBody451_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_101

def optimizedBody451_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_87 optimizedBody451_102

def optimizedBody451_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_74 optimizedBody451_103

def optimizedBody451_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_86 optimizedBody451_104

def optimizedBody451_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_85 optimizedBody451_105

def optimizedBody451_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_84 optimizedBody451_106

def optimizedBody451_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_83 optimizedBody451_107

def optimizedBody451_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_82 optimizedBody451_108

def optimizedBody451_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_81 optimizedBody451_109

def optimizedBody451_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_80 optimizedBody451_110

def optimizedBody451_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_111

def optimizedBody451_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_79 optimizedBody451_112

def optimizedBody451_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_113

def optimizedBody451_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_78 optimizedBody451_114

def optimizedBody451_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_115

def optimizedBody451_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_77 optimizedBody451_116

def optimizedBody451_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_117

def optimizedBody451_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_76 optimizedBody451_118

def optimizedBody451_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_119

def optimizedBody451_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_75 optimizedBody451_120

def optimizedBody451_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_74 optimizedBody451_121

def optimizedBody451_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_73 optimizedBody451_122

def optimizedBody451_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_123

def optimizedBody451_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_72 optimizedBody451_124

def optimizedBody451_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_125

def optimizedBody451_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_71 optimizedBody451_126

def optimizedBody451_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_127

def optimizedBody451_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_70 optimizedBody451_128

def optimizedBody451_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_69 optimizedBody451_129

def optimizedBody451_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_130

def optimizedBody451_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody451_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_132

def optimizedBody451_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody451_131 optimizedBody451_133

def optimizedBody451_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551392#64))

def optimizedBody451_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2), (50, 50)]

def optimizedBody451_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (48, 50)]

def optimizedBody451_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (48, 50)]

def optimizedBody451_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_138 optimizedBody451_10

def optimizedBody451_140 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_137, 451, 18)) (some 87) ([2, 4]) (some (2, optimizedBody451_139, 451, 19))

def optimizedBody451_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48)]

def optimizedBody451_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48)]

def optimizedBody451_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody451_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_143 optimizedBody451_10

def optimizedBody451_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_142, 451, 20)) (some 77) ([2, 4, 6]) (some (2, optimizedBody451_144, 451, 21))

def optimizedBody451_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody451_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody451_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody451_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_148 optimizedBody451_10

def optimizedBody451_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody451_147, 451, 22)) (some 190) ([2, 4, 6]) (some (2, optimizedBody451_149, 451, 23))

def optimizedBody451_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody451_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_33 optimizedBody451_151

def optimizedBody451_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_152

def optimizedBody451_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_150 optimizedBody451_153

def optimizedBody451_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_146 optimizedBody451_154

def optimizedBody451_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_26 optimizedBody451_155

def optimizedBody451_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_25 optimizedBody451_156

def optimizedBody451_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_24 optimizedBody451_157

def optimizedBody451_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_23 optimizedBody451_158

def optimizedBody451_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_159

def optimizedBody451_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_145 optimizedBody451_160

def optimizedBody451_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_141 optimizedBody451_161

def optimizedBody451_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_17 optimizedBody451_162

def optimizedBody451_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_163

def optimizedBody451_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_15 optimizedBody451_164

def optimizedBody451_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_165

def optimizedBody451_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_166

def optimizedBody451_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_140 optimizedBody451_167

def optimizedBody451_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_136 optimizedBody451_168

def optimizedBody451_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_135 optimizedBody451_169

def optimizedBody451_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_25 optimizedBody451_170

def optimizedBody451_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_24 optimizedBody451_171

def optimizedBody451_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_23 optimizedBody451_172

def optimizedBody451_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_50 optimizedBody451_173

def optimizedBody451_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_174

def optimizedBody451_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_134 optimizedBody451_175

def optimizedBody451_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_68 optimizedBody451_176

def optimizedBody451_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_177

def optimizedBody451_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_178

def optimizedBody451_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_67 optimizedBody451_179

def optimizedBody451_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_63 optimizedBody451_180

def optimizedBody451_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_62 optimizedBody451_181

def optimizedBody451_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_61 optimizedBody451_182

def optimizedBody451_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_60 optimizedBody451_183

def optimizedBody451_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_59 optimizedBody451_184

def optimizedBody451_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_58 optimizedBody451_185

def optimizedBody451_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_57 optimizedBody451_186

def optimizedBody451_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_187

def optimizedBody451_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_188

def optimizedBody451_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_56 optimizedBody451_189

def optimizedBody451_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_52 optimizedBody451_190

def optimizedBody451_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_51 optimizedBody451_191

def optimizedBody451_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_50 optimizedBody451_192

def optimizedBody451_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_193

def optimizedBody451_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_49 optimizedBody451_194

def optimizedBody451_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_45 optimizedBody451_195

def optimizedBody451_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_44 optimizedBody451_196

def optimizedBody451_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_197

def optimizedBody451_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_43 optimizedBody451_198

def optimizedBody451_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_39 optimizedBody451_199

def optimizedBody451_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_200

def optimizedBody451_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_201

def optimizedBody451_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_38 optimizedBody451_202

def optimizedBody451_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_32 optimizedBody451_203

def optimizedBody451_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_204

def optimizedBody451_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_205

def optimizedBody451_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_31 optimizedBody451_206

def optimizedBody451_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_27 optimizedBody451_207

def optimizedBody451_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_26 optimizedBody451_208

def optimizedBody451_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_25 optimizedBody451_209

def optimizedBody451_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_24 optimizedBody451_210

def optimizedBody451_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_23 optimizedBody451_211

def optimizedBody451_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_212

def optimizedBody451_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_22 optimizedBody451_213

def optimizedBody451_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_18 optimizedBody451_214

def optimizedBody451_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_17 optimizedBody451_215

def optimizedBody451_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_16 optimizedBody451_216

def optimizedBody451_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_15 optimizedBody451_217

def optimizedBody451_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_14 optimizedBody451_218

def optimizedBody451_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_13 optimizedBody451_219

def optimizedBody451_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_12 optimizedBody451_220

def optimizedBody451_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_7 optimizedBody451_221

def optimizedBody451_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_6 optimizedBody451_222

def optimizedBody451_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_5 optimizedBody451_223

def optimizedBody451_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_4 optimizedBody451_224

def optimizedBody451_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_3 optimizedBody451_225

def optimizedBody451_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_2 optimizedBody451_226

def optimizedBody451_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_1 optimizedBody451_227

def optimizedBody451_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody451_0 optimizedBody451_228

def oracle451 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 6))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 3))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
              2
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 Flapjack.Spt.ln))
                2 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)) 3 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 5)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)) 24
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 24 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 23
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))))
def optimized451 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(451, 2, optimizedBody451_229)
end InitECandidate.Proofs.SmallStages.Oracles451
