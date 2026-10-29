import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source635
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles635
def optimizedBody635_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (14, 2), (4, 4), (16, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody635_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody635_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody635_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody635_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551248#64))

def optimizedBody635_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody635_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 64#64)

def optimizedBody635_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8), (48, 4), (50, 12), (52, 14), (54, 10), (56, 16)]

def optimizedBody635_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody635_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody635_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody635_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_9 optimizedBody635_10

def optimizedBody635_12 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody635_8, 635, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody635_11, 635, 3))

def optimizedBody635_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody635_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody635_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody635_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody635_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551248#64))

def optimizedBody635_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody635_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody635_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551256#64))

def optimizedBody635_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody635_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 46), (48, 48), (10, 50), (52, 52), (8, 54), (4, 56)]

def optimizedBody635_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (48, 48), (10, 50), (52, 52), (8, 54), (4, 56)]

def optimizedBody635_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_23 optimizedBody635_10

def optimizedBody635_25 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody635_22, 635, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody635_24, 635, 5))

def optimizedBody635_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551248#64))

def optimizedBody635_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody635_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 0), (14, 14)]

def optimizedBody635_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody635_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody635_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (6, 6)]

def optimizedBody635_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody635_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody635_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551248#64))

def optimizedBody635_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody635_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2), (8, 8)]

def optimizedBody635_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 104#64))

def optimizedBody635_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody635_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody635_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody635_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody635_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody635_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody635_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody635_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody635_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_44 optimizedBody635_45

def optimizedBody635_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_43 optimizedBody635_46

def optimizedBody635_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_42 optimizedBody635_47

def optimizedBody635_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_33 optimizedBody635_48

def optimizedBody635_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_41 optimizedBody635_49

def optimizedBody635_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_50

def optimizedBody635_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_33 optimizedBody635_51

def optimizedBody635_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_52

def optimizedBody635_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 6) optimizedBody635_53 optimizedBody635_13

def optimizedBody635_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551240#64))

def optimizedBody635_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 128#64)

def optimizedBody635_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 14), (48, 48), (50, 10), (52, 52), (54, 8), (56, 4)]

def optimizedBody635_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (10, 52), (52, 54), (54, 56)]

def optimizedBody635_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (10, 52), (52, 54), (54, 56)]

def optimizedBody635_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_59 optimizedBody635_10

def optimizedBody635_61 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody635_58, 635, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody635_60, 635, 7))

def optimizedBody635_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody635_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody635_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (10, 10), (52, 52), (2, 2), (54, 54), (0, 0)]

def optimizedBody635_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody635_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody635_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody635_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody635_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551232#64))

def optimizedBody635_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody635_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody635_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody635_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody635_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 264#64)

def optimizedBody635_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody635_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (6, 6), (8, 8), (46, 44), (48, 46), (50, 48), (52, 50), (54, 10), (56, 52), (44, 2), (58, 54),
    (60, 0)]

def optimizedBody635_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 114#8, 111#8, 117#8, 110#8, 100#8])
  2 4 6 8
  (Flapjack.Spt.bn
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
    Flapjack.Spt.ln)

def optimizedBody635_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44), (4, 46), (6, 48), (8, 50), (12, 52), (10, 54), (14, 56), (16, 58), (0, 60)]

def optimizedBody635_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody635_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody635_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody635_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody635_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 10#64)

def optimizedBody635_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_63 optimizedBody635_19

def optimizedBody635_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_84

def optimizedBody635_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_19

def optimizedBody635_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 18) optimizedBody635_85 optimizedBody635_86

def optimizedBody635_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 4), (46, 6), (48, 8), (50, 12), (10, 10), (52, 14), (2, 2), (54, 16), (0, 0)]

def optimizedBody635_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody635_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_88 optimizedBody635_89

def optimizedBody635_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_90

def optimizedBody635_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_87 optimizedBody635_91

def optimizedBody635_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_83 optimizedBody635_92

def optimizedBody635_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_82 optimizedBody635_93

def optimizedBody635_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_81 optimizedBody635_94

def optimizedBody635_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_80 optimizedBody635_95

def optimizedBody635_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_79 optimizedBody635_96

def optimizedBody635_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_78 optimizedBody635_97

def optimizedBody635_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_77 optimizedBody635_98

def optimizedBody635_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_76 optimizedBody635_99

def optimizedBody635_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_75 optimizedBody635_100

def optimizedBody635_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_74 optimizedBody635_101

def optimizedBody635_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_73 optimizedBody635_102

def optimizedBody635_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_69 optimizedBody635_103

def optimizedBody635_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_72 optimizedBody635_104

def optimizedBody635_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_71 optimizedBody635_105

def optimizedBody635_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_70 optimizedBody635_106

def optimizedBody635_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_69 optimizedBody635_107

def optimizedBody635_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_68 optimizedBody635_108

def optimizedBody635_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_67 optimizedBody635_109

def optimizedBody635_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_66 optimizedBody635_110

def optimizedBody635_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_111

def optimizedBody635_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (2, 2)]

def optimizedBody635_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody635_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_113 optimizedBody635_114

def optimizedBody635_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_115

def optimizedBody635_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 10) optimizedBody635_112 optimizedBody635_116

def optimizedBody635_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_88

def optimizedBody635_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_117 optimizedBody635_118

def optimizedBody635_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_65 optimizedBody635_119

def optimizedBody635_121 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody635_120 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody635_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(16, 44), (18, 46), (6, 48), (4, 4), (20, 50), (10, 10), (24, 52), (2, 2), (22, 54), (0, 0)]

def optimizedBody635_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 8#64)

def optimizedBody635_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody635_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody635_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody635_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody635_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody635_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 12 Flapjack.WordStore.heapLength

def optimizedBody635_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody635_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12 12

def optimizedBody635_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 18446744073709551248#64))

def optimizedBody635_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 26 (Flapjack.WordRegImm.reg 12)))

def optimizedBody635_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 26 0#64))

def optimizedBody635_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (14, 14), (4, 4)]

def optimizedBody635_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody635_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody635_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 26 (Flapjack.WordRegImm.reg 12)))

def optimizedBody635_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4)]

def optimizedBody635_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody635_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody635_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def optimizedBody635_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody635_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody635_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody635_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_145 optimizedBody635_89

def optimizedBody635_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_144 optimizedBody635_146

def optimizedBody635_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_5 optimizedBody635_147

def optimizedBody635_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_143 optimizedBody635_148

def optimizedBody635_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_142 optimizedBody635_149

def optimizedBody635_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_141 optimizedBody635_150

def optimizedBody635_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_140 optimizedBody635_151

def optimizedBody635_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_139 optimizedBody635_152

def optimizedBody635_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_138 optimizedBody635_153

def optimizedBody635_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_137 optimizedBody635_154

def optimizedBody635_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_136 optimizedBody635_155

def optimizedBody635_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_135 optimizedBody635_156

def optimizedBody635_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_134 optimizedBody635_157

def optimizedBody635_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_133 optimizedBody635_158

def optimizedBody635_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_132 optimizedBody635_159

def optimizedBody635_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_131 optimizedBody635_160

def optimizedBody635_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_130 optimizedBody635_161

def optimizedBody635_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_129 optimizedBody635_162

def optimizedBody635_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_128 optimizedBody635_163

def optimizedBody635_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_127 optimizedBody635_164

def optimizedBody635_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_5 optimizedBody635_165

def optimizedBody635_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_126 optimizedBody635_166

def optimizedBody635_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_125 optimizedBody635_167

def optimizedBody635_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_124 optimizedBody635_168

def optimizedBody635_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_5 optimizedBody635_169

def optimizedBody635_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_170

def optimizedBody635_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_114

def optimizedBody635_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 8) optimizedBody635_171 optimizedBody635_172

def optimizedBody635_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_145

def optimizedBody635_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_173 optimizedBody635_174

def optimizedBody635_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_123 optimizedBody635_175

def optimizedBody635_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_5 optimizedBody635_176

def optimizedBody635_178 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody635_177 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody635_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody635_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody635_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_179 optimizedBody635_180

def optimizedBody635_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_62 optimizedBody635_181

def optimizedBody635_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_182

def optimizedBody635_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_178 optimizedBody635_183

def optimizedBody635_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_122 optimizedBody635_184

def optimizedBody635_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_185

def optimizedBody635_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_75 optimizedBody635_186

def optimizedBody635_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_187

def optimizedBody635_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_121 optimizedBody635_188

def optimizedBody635_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_64 optimizedBody635_189

def optimizedBody635_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_190

def optimizedBody635_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_63 optimizedBody635_191

def optimizedBody635_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_62 optimizedBody635_192

def optimizedBody635_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_193

def optimizedBody635_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_61 optimizedBody635_194

def optimizedBody635_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_57 optimizedBody635_195

def optimizedBody635_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_56 optimizedBody635_196

def optimizedBody635_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_5 optimizedBody635_197

def optimizedBody635_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_55 optimizedBody635_198

def optimizedBody635_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_19 optimizedBody635_199

def optimizedBody635_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_200

def optimizedBody635_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_54 optimizedBody635_201

def optimizedBody635_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_40 optimizedBody635_202

def optimizedBody635_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_39 optimizedBody635_203

def optimizedBody635_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_32 optimizedBody635_204

def optimizedBody635_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_31 optimizedBody635_205

def optimizedBody635_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_38 optimizedBody635_206

def optimizedBody635_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_37 optimizedBody635_207

def optimizedBody635_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_36 optimizedBody635_208

def optimizedBody635_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_35 optimizedBody635_209

def optimizedBody635_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_34 optimizedBody635_210

def optimizedBody635_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_33 optimizedBody635_211

def optimizedBody635_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_32 optimizedBody635_212

def optimizedBody635_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_31 optimizedBody635_213

def optimizedBody635_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_30 optimizedBody635_214

def optimizedBody635_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_29 optimizedBody635_215

def optimizedBody635_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_28 optimizedBody635_216

def optimizedBody635_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_27 optimizedBody635_217

def optimizedBody635_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_26 optimizedBody635_218

def optimizedBody635_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_16 optimizedBody635_219

def optimizedBody635_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_15 optimizedBody635_220

def optimizedBody635_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_14 optimizedBody635_221

def optimizedBody635_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_222

def optimizedBody635_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_25 optimizedBody635_223

def optimizedBody635_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_21 optimizedBody635_224

def optimizedBody635_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_6 optimizedBody635_225

def optimizedBody635_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_20 optimizedBody635_226

def optimizedBody635_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_19 optimizedBody635_227

def optimizedBody635_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_18 optimizedBody635_228

def optimizedBody635_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_17 optimizedBody635_229

def optimizedBody635_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_16 optimizedBody635_230

def optimizedBody635_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_15 optimizedBody635_231

def optimizedBody635_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_14 optimizedBody635_232

def optimizedBody635_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_233

def optimizedBody635_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_12 optimizedBody635_234

def optimizedBody635_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_7 optimizedBody635_235

def optimizedBody635_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_6 optimizedBody635_236

def optimizedBody635_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_5 optimizedBody635_237

def optimizedBody635_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_238

def optimizedBody635_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_3 optimizedBody635_239

def optimizedBody635_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_2 optimizedBody635_240

def optimizedBody635_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_1 optimizedBody635_241

def optimizedBody635_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_0 optimizedBody635_242

def oracle635 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                23
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6)))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.ls 23))))
              8
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 3 (Flapjack.Spt.ls 3)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln) 7
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 6)))))
              5
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7))))
                3
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
              7
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 1 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 25
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 13))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 27)))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)))))
              6
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.ls 22))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 24))))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.ls 2)) 28
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 28 Flapjack.Spt.ln) 26
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                28 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 27 Flapjack.Spt.ln) 25
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                27 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))))))
def optimized635 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(635, 7, optimizedBody635_243)
end InitECandidate.Proofs.SmallStages.Oracles635
