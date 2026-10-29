import InitECandidate.Proofs.WordStages.Optimize534
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source550
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody550_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody550_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody550_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody550_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody550_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_2 optimizedBody550_3

def optimizedBody550_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_1, 550, 2)) (some 492) ([]) (some (2, optimizedBody550_4, 550, 3))

def optimizedBody550_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody550_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (8, 8), (44, 44)]

def optimizedBody550_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_7, 550, 4)) (some 475) ([]) (some (2, optimizedBody550_4, 550, 5))

def optimizedBody550_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 4), (48, 0), (50, 6), (52, 8)]

def optimizedBody550_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (18, 2), (4, 4), (44, 44), (0, 46), (16, 48), (12, 50), (14, 52)]

def optimizedBody550_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (16, 48), (12, 50), (14, 52)]

def optimizedBody550_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_11 optimizedBody550_3

def optimizedBody550_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_10, 550, 6)) (some 475) ([]) (some (2, optimizedBody550_12, 550, 7))

def optimizedBody550_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody550_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody550_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody550_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 18446744073709551336#64))

def optimizedBody550_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 0), (6, 12), (8, 14), (10, 10), (44, 44), (46, 10), (50, 6), (52, 8), (68, 18), (70, 4)]

def optimizedBody550_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody550_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody550_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_20 optimizedBody550_3

def optimizedBody550_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_19, 550, 8)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody550_21, 550, 9))

def optimizedBody550_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody550_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody550_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody550_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody550_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody550_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody550_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4), (48, 2), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody550_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody550_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody550_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_31 optimizedBody550_3

def optimizedBody550_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_30, 550, 10)) (some 547) ([2, 4]) (some (2, optimizedBody550_32, 550, 11))

def optimizedBody550_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody550_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody550_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody550_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2100#64)

def optimizedBody550_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody550_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_37 optimizedBody550_38

def optimizedBody550_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_39

def optimizedBody550_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_38

def optimizedBody550_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody550_40 optimizedBody550_41

def optimizedBody550_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody550_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2301#64)

def optimizedBody550_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 2), (56, 0), (68, 68), (70, 70)]

def optimizedBody550_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (68, 68), (70, 70)]

def optimizedBody550_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (68, 68), (70, 70)]

def optimizedBody550_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_47 optimizedBody550_3

def optimizedBody550_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_46, 550, 12)) (some 93) ([2, 4]) (some (2, optimizedBody550_48, 550, 13))

def optimizedBody550_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (68, 68), (70, 70)]

def optimizedBody550_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (54, 56), (68, 68), (70, 70)]

def optimizedBody550_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (54, 56), (68, 68), (70, 70)]

def optimizedBody550_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_52 optimizedBody550_3

def optimizedBody550_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_51, 550, 14)) (some 469) ([2]) (some (2, optimizedBody550_53, 550, 15))

def optimizedBody550_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 0), (54, 54), (68, 68), (70, 70)]

def optimizedBody550_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (50, 50), (52, 52), (56, 56), (6, 54), (68, 68), (70, 70)]

def optimizedBody550_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (0, 48), (50, 50), (52, 52), (56, 56), (6, 54), (68, 68), (70, 70)]

def optimizedBody550_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_57 optimizedBody550_3

def optimizedBody550_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_56, 550, 16)) (some 470) ([2]) (some (2, optimizedBody550_58, 550, 17))

def optimizedBody550_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody550_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody550_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 4), (48, 0), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody550_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody550_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody550_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_64 optimizedBody550_3

def optimizedBody550_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_63, 550, 18)) (some 548) ([2, 4]) (some (2, optimizedBody550_65, 550, 19))

def optimizedBody550_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (0, 0), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody550_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_67

def optimizedBody550_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_66 optimizedBody550_68

def optimizedBody550_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_62 optimizedBody550_69

def optimizedBody550_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_70

def optimizedBody550_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody550_71 optimizedBody550_68

def optimizedBody550_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (6, 6), (12, 2), (8, 8), (44, 44), (0, 46), (10, 48), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody550_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody550_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_74 optimizedBody550_3

def optimizedBody550_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_73, 550, 20)) (some 411) ([2, 4]) (some (2, optimizedBody550_75, 550, 21))

def optimizedBody550_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 0), (44, 44), (46, 0), (48, 10), (50, 50), (52, 52), (54, 4), (56, 56), (58, 6), (60, 12), (68, 68),
    (70, 70), (62, 8)]

def optimizedBody550_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 6), (12, 4), (16, 8), (10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (6, 58),
    (0, 60), (68, 68), (70, 70), (8, 62)]

def optimizedBody550_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (6, 58), (0, 60), (68, 68), (70, 70),
    (8, 62)]

def optimizedBody550_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_79 optimizedBody550_3

def optimizedBody550_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_78, 550, 22)) (some 410) ([2, 4]) (some (2, optimizedBody550_80, 550, 23))

def optimizedBody550_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 4), (56, 56), (58, 6), (60, 0), (62, 14), (64, 12), (66, 16), (68, 68), (70, 70), (72, 10), (74, 8)]

def optimizedBody550_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (48, 48), (14, 50), (16, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62), (4, 64),
    (8, 66), (10, 68), (12, 70), (0, 72), (74, 74)]

def optimizedBody550_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (14, 50), (16, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62), (4, 64),
    (8, 66), (10, 68), (12, 70), (0, 72), (74, 74)]

def optimizedBody550_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_84 optimizedBody550_3

def optimizedBody550_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_83, 550, 24)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody550_85, 550, 25))

def optimizedBody550_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 14),
    (52, 16), (54, 54), (56, 56), (58, 58), (60, 60), (64, 6), (66, 4), (68, 8), (70, 18), (62, 10), (72, 12), (76, 0),
    (74, 74)]

def optimizedBody550_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (48, 48), (14, 50), (16, 52), (4, 54), (56, 56), (6, 58), (0, 60), (64, 64), (66, 66),
    (68, 68), (70, 70), (10, 62), (12, 72), (76, 76), (8, 74)]

def optimizedBody550_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (14, 50), (16, 52), (4, 54), (56, 56), (6, 58), (0, 60), (64, 64), (66, 66),
    (68, 68), (70, 70), (10, 62), (12, 72), (76, 76), (8, 74)]

def optimizedBody550_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_89 optimizedBody550_3

def optimizedBody550_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_88, 550, 26)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody550_90, 550, 27))

def optimizedBody550_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 14),
    (52, 16), (54, 4), (56, 56), (58, 6), (60, 18), (62, 0), (64, 64), (66, 66), (68, 68), (70, 70), (72, 10), (74, 12),
    (76, 76), (78, 8)]

def optimizedBody550_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (6, 58), (60, 60), (0, 62), (56, 64),
    (58, 66), (64, 68), (66, 70), (68, 72), (70, 74), (72, 76), (8, 78)]

def optimizedBody550_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (6, 58), (60, 60), (0, 62), (56, 64),
    (58, 66), (64, 68), (66, 70), (68, 72), (70, 74), (72, 76), (8, 78)]

def optimizedBody550_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_94 optimizedBody550_3

def optimizedBody550_96 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_93, 550, 28)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody550_95, 550, 29))

def optimizedBody550_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 10),
    (56, 56), (58, 58), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72)]

def optimizedBody550_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 62), (6, 56), (4, 58), (8, 64),
    (64, 66), (58, 68), (66, 70), (0, 72)]

def optimizedBody550_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 62), (6, 56), (4, 58), (8, 64),
    (64, 66), (58, 68), (66, 70), (0, 72)]

def optimizedBody550_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_99 optimizedBody550_3

def optimizedBody550_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_98, 550, 30)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody550_100, 550, 31))

def optimizedBody550_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 10), (60, 60),
    (62, 62), (64, 64), (58, 58), (66, 66)]

def optimizedBody550_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (6, 50), (8, 52), (50, 54), (54, 56), (60, 60), (62, 62), (64, 64), (0, 58),
    (4, 66)]

def optimizedBody550_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (8, 52), (50, 54), (54, 56), (60, 60), (62, 62), (64, 64), (0, 58),
    (4, 66)]

def optimizedBody550_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_104 optimizedBody550_3

def optimizedBody550_106 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody550_103, 550, 32)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody550_105, 550, 33))

def optimizedBody550_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (52, 6), (56, 8), (50, 50), (54, 54), (58, 10),
    (60, 60), (62, 62), (64, 64), (66, 0), (68, 4)]

def optimizedBody550_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (0, 50), (4, 54), (8, 58), (10, 60), (6, 62), (14, 64),
    (60, 66), (58, 68)]

def optimizedBody550_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (0, 50), (4, 54), (8, 58), (10, 60), (6, 62), (14, 64),
    (60, 66), (58, 68)]

def optimizedBody550_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_109 optimizedBody550_3

def optimizedBody550_111 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody550_108, 550, 34)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody550_110, 550, 35))

def optimizedBody550_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (0, 0)]

def optimizedBody550_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 1#64)

def optimizedBody550_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody550_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_113 optimizedBody550_114

def optimizedBody550_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_115

def optimizedBody550_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody550_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_117 optimizedBody550_114

def optimizedBody550_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_118

def optimizedBody550_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 2) optimizedBody550_116 optimizedBody550_119

def optimizedBody550_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody550_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody550_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_122 optimizedBody550_38

def optimizedBody550_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_123

def optimizedBody550_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_38

def optimizedBody550_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_125

def optimizedBody550_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody550_124 optimizedBody550_126

def optimizedBody550_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2)]

def optimizedBody550_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody550_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody550_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 10000#64)

def optimizedBody550_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody550_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(54, 2)]

def optimizedBody550_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_132 optimizedBody550_133

def optimizedBody550_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_131 optimizedBody550_134

def optimizedBody550_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_130 optimizedBody550_135

def optimizedBody550_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(54, 0)]

def optimizedBody550_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody550_136 optimizedBody550_137

def optimizedBody550_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody550_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody550_124 optimizedBody550_126

def optimizedBody550_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody550_142 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 16) optimizedBody550_116 optimizedBody550_119

def optimizedBody550_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody550_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody550_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody550_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def optimizedBody550_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_145 optimizedBody550_146

def optimizedBody550_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_147

def optimizedBody550_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody550_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_149 optimizedBody550_146

def optimizedBody550_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_150

def optimizedBody550_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 18) optimizedBody550_148 optimizedBody550_151

def optimizedBody550_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (12, 12)]

def optimizedBody550_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 12 12 (Flapjack.WordRegImm.reg 16)))

def optimizedBody550_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 12 (Flapjack.WordRegImm.reg 2)))

def optimizedBody550_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody550_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody550_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 96#64))

def optimizedBody550_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 11616#64)

def optimizedBody550_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 2)]

def optimizedBody550_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody550_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_160 optimizedBody550_161

def optimizedBody550_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_132 optimizedBody550_162

def optimizedBody550_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_159 optimizedBody550_163

def optimizedBody550_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_158 optimizedBody550_164

def optimizedBody550_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_38 optimizedBody550_165

def optimizedBody550_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_157 optimizedBody550_166

def optimizedBody550_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_156 optimizedBody550_167

def optimizedBody550_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_16 optimizedBody550_168

def optimizedBody550_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_15 optimizedBody550_169

def optimizedBody550_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_14 optimizedBody550_170

def optimizedBody550_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody550_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody550_171 optimizedBody550_172

def optimizedBody550_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody550_148 optimizedBody550_151

def optimizedBody550_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) optimizedBody550_124 optimizedBody550_126

def optimizedBody550_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody550_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody550_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 18446744073709540000#64)

def optimizedBody550_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody550_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody550_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody550_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_180 optimizedBody550_181

def optimizedBody550_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_179 optimizedBody550_182

def optimizedBody550_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_178 optimizedBody550_183

def optimizedBody550_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_158 optimizedBody550_184

def optimizedBody550_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_38 optimizedBody550_185

def optimizedBody550_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_177 optimizedBody550_186

def optimizedBody550_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_156 optimizedBody550_187

def optimizedBody550_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_16 optimizedBody550_188

def optimizedBody550_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_15 optimizedBody550_189

def optimizedBody550_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_14 optimizedBody550_190

def optimizedBody550_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody550_191 optimizedBody550_172

def optimizedBody550_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 10000#64)

def optimizedBody550_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_193 optimizedBody550_183

def optimizedBody550_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_158 optimizedBody550_194

def optimizedBody550_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_38 optimizedBody550_195

def optimizedBody550_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_177 optimizedBody550_196

def optimizedBody550_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_156 optimizedBody550_197

def optimizedBody550_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_16 optimizedBody550_198

def optimizedBody550_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_15 optimizedBody550_199

def optimizedBody550_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_14 optimizedBody550_200

def optimizedBody550_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_201

def optimizedBody550_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody550_202 optimizedBody550_6

def optimizedBody550_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6)]

def optimizedBody550_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_204

def optimizedBody550_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_203 optimizedBody550_205

def optimizedBody550_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_206

def optimizedBody550_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_60 optimizedBody550_207

def optimizedBody550_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_208

def optimizedBody550_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_192 optimizedBody550_209

def optimizedBody550_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_176 optimizedBody550_210

def optimizedBody550_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_160 optimizedBody550_211

def optimizedBody550_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_212

def optimizedBody550_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_175 optimizedBody550_213

def optimizedBody550_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_214

def optimizedBody550_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_141 optimizedBody550_215

def optimizedBody550_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_216

def optimizedBody550_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_174 optimizedBody550_217

def optimizedBody550_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_218

def optimizedBody550_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_139 optimizedBody550_219

def optimizedBody550_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_220

def optimizedBody550_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_173 optimizedBody550_221

def optimizedBody550_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_155 optimizedBody550_222

def optimizedBody550_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_43 optimizedBody550_223

def optimizedBody550_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_154 optimizedBody550_224

def optimizedBody550_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_153 optimizedBody550_225

def optimizedBody550_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_226

def optimizedBody550_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_152 optimizedBody550_227

def optimizedBody550_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_144 optimizedBody550_228

def optimizedBody550_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_143 optimizedBody550_229

def optimizedBody550_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_230

def optimizedBody550_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_142 optimizedBody550_231

def optimizedBody550_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_117 optimizedBody550_232

def optimizedBody550_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_141 optimizedBody550_233

def optimizedBody550_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_234

def optimizedBody550_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_140 optimizedBody550_235

def optimizedBody550_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_236

def optimizedBody550_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_139 optimizedBody550_237

def optimizedBody550_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_238

def optimizedBody550_240 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody550_239 optimizedBody550_205

def optimizedBody550_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody550_242 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 2) optimizedBody550_124 optimizedBody550_126

def optimizedBody550_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody550_244 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 8) optimizedBody550_148 optimizedBody550_151

def optimizedBody550_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody550_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody550_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_245 optimizedBody550_246

def optimizedBody550_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_247

def optimizedBody550_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_243 optimizedBody550_246

def optimizedBody550_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_249

def optimizedBody550_251 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 8) optimizedBody550_248 optimizedBody550_250

def optimizedBody550_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody550_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody550_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody550_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 97920#64)

def optimizedBody550_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 2)]

def optimizedBody550_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_255 optimizedBody550_256

def optimizedBody550_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(50, 16)]

def optimizedBody550_259 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody550_257 optimizedBody550_258

def optimizedBody550_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody550_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody550_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_260 optimizedBody550_261

def optimizedBody550_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_262

def optimizedBody550_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody550_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_264 optimizedBody550_261

def optimizedBody550_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_265

def optimizedBody550_267 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 8) optimizedBody550_263 optimizedBody550_266

def optimizedBody550_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody550_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody550_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_268 optimizedBody550_269

def optimizedBody550_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_270

def optimizedBody550_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_36 optimizedBody550_269

def optimizedBody550_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_272

def optimizedBody550_274 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 8) optimizedBody550_271 optimizedBody550_273

def optimizedBody550_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody550_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody550_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody550_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 0), (60, 60), (62, 58)]

def optimizedBody550_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (0, 58), (56, 60), (58, 62)]

def optimizedBody550_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (0, 58), (56, 60), (58, 62)]

def optimizedBody550_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_280 optimizedBody550_3

def optimizedBody550_282 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_279, 550, 36)) (some 472) ([2]) (some (2, optimizedBody550_281, 550, 37))

def optimizedBody550_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 4), (54, 54), (0, 0), (56, 56), (58, 58)]

def optimizedBody550_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_283

def optimizedBody550_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_282 optimizedBody550_284

def optimizedBody550_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_278 optimizedBody550_285

def optimizedBody550_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_255 optimizedBody550_286

def optimizedBody550_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (0, 0), (56, 60), (58, 58)]

def optimizedBody550_289 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody550_287 optimizedBody550_288

def optimizedBody550_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody550_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody550_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody550_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58)]

def optimizedBody550_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58)]

def optimizedBody550_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_294 optimizedBody550_3

def optimizedBody550_296 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody550_293, 550, 38)) (some 470) ([2]) (some (2, optimizedBody550_295, 550, 39))

def optimizedBody550_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody550_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (10, 50), (12, 52), (6, 54), (8, 56)]

def optimizedBody550_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (10, 50), (12, 52), (6, 54), (8, 56)]

def optimizedBody550_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_299 optimizedBody550_3

def optimizedBody550_301 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody550_298, 550, 40)) (some 471) ([2]) (some (2, optimizedBody550_300, 550, 41))

def optimizedBody550_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44)]

def optimizedBody550_303 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_1, 550, 42)) (some 420) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody550_4, 550, 43))

def optimizedBody550_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody550_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody550_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_305 optimizedBody550_3

def optimizedBody550_307 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody550_304, 550, 44)) (some 490) ([2]) (some (2, optimizedBody550_306, 550, 45))

def optimizedBody550_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody550_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_43 optimizedBody550_308

def optimizedBody550_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_309

def optimizedBody550_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_310

def optimizedBody550_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_307 optimizedBody550_311

def optimizedBody550_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_2 optimizedBody550_312

def optimizedBody550_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_122 optimizedBody550_313

def optimizedBody550_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_314

def optimizedBody550_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_303 optimizedBody550_315

def optimizedBody550_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_302 optimizedBody550_316

def optimizedBody550_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_317

def optimizedBody550_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_301 optimizedBody550_318

def optimizedBody550_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_297 optimizedBody550_319

def optimizedBody550_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_320

def optimizedBody550_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_296 optimizedBody550_321

def optimizedBody550_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_292 optimizedBody550_322

def optimizedBody550_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_291 optimizedBody550_323

def optimizedBody550_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_290 optimizedBody550_324

def optimizedBody550_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_325

def optimizedBody550_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_289 optimizedBody550_326

def optimizedBody550_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_277 optimizedBody550_327

def optimizedBody550_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_43 optimizedBody550_328

def optimizedBody550_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_276 optimizedBody550_329

def optimizedBody550_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_275 optimizedBody550_330

def optimizedBody550_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_331

def optimizedBody550_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_274 optimizedBody550_332

def optimizedBody550_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_243 optimizedBody550_333

def optimizedBody550_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_139 optimizedBody550_334

def optimizedBody550_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_335

def optimizedBody550_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_267 optimizedBody550_336

def optimizedBody550_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_243 optimizedBody550_337

def optimizedBody550_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_60 optimizedBody550_338

def optimizedBody550_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_339

def optimizedBody550_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_127 optimizedBody550_340

def optimizedBody550_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_341

def optimizedBody550_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_121 optimizedBody550_342

def optimizedBody550_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_343

def optimizedBody550_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_259 optimizedBody550_344

def optimizedBody550_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_254 optimizedBody550_345

def optimizedBody550_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_43 optimizedBody550_346

def optimizedBody550_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_253 optimizedBody550_347

def optimizedBody550_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_252 optimizedBody550_348

def optimizedBody550_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_349

def optimizedBody550_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_251 optimizedBody550_350

def optimizedBody550_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_243 optimizedBody550_351

def optimizedBody550_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_139 optimizedBody550_352

def optimizedBody550_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_353

def optimizedBody550_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_244 optimizedBody550_354

def optimizedBody550_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_243 optimizedBody550_355

def optimizedBody550_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_121 optimizedBody550_356

def optimizedBody550_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_357

def optimizedBody550_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_242 optimizedBody550_358

def optimizedBody550_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_359

def optimizedBody550_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_241 optimizedBody550_360

def optimizedBody550_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_117 optimizedBody550_361

def optimizedBody550_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_362

def optimizedBody550_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_240 optimizedBody550_363

def optimizedBody550_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_364

def optimizedBody550_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_121 optimizedBody550_365

def optimizedBody550_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_366

def optimizedBody550_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_138 optimizedBody550_367

def optimizedBody550_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_129 optimizedBody550_368

def optimizedBody550_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_128 optimizedBody550_369

def optimizedBody550_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_370

def optimizedBody550_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_127 optimizedBody550_371

def optimizedBody550_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_372

def optimizedBody550_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_121 optimizedBody550_373

def optimizedBody550_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_374

def optimizedBody550_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_120 optimizedBody550_375

def optimizedBody550_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_376

def optimizedBody550_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_112 optimizedBody550_377

def optimizedBody550_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_378

def optimizedBody550_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_111 optimizedBody550_379

def optimizedBody550_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_107 optimizedBody550_380

def optimizedBody550_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_381

def optimizedBody550_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_106 optimizedBody550_382

def optimizedBody550_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_102 optimizedBody550_383

def optimizedBody550_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_384

def optimizedBody550_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_101 optimizedBody550_385

def optimizedBody550_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_97 optimizedBody550_386

def optimizedBody550_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_387

def optimizedBody550_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_96 optimizedBody550_388

def optimizedBody550_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_92 optimizedBody550_389

def optimizedBody550_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_390

def optimizedBody550_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_91 optimizedBody550_391

def optimizedBody550_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_87 optimizedBody550_392

def optimizedBody550_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_393

def optimizedBody550_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_86 optimizedBody550_394

def optimizedBody550_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_82 optimizedBody550_395

def optimizedBody550_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_396

def optimizedBody550_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_81 optimizedBody550_397

def optimizedBody550_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_77 optimizedBody550_398

def optimizedBody550_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_399

def optimizedBody550_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_76 optimizedBody550_400

def optimizedBody550_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_62 optimizedBody550_401

def optimizedBody550_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_402

def optimizedBody550_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_72 optimizedBody550_403

def optimizedBody550_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_61 optimizedBody550_404

def optimizedBody550_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_60 optimizedBody550_405

def optimizedBody550_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_406

def optimizedBody550_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_59 optimizedBody550_407

def optimizedBody550_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_55 optimizedBody550_408

def optimizedBody550_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_409

def optimizedBody550_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_54 optimizedBody550_410

def optimizedBody550_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_50 optimizedBody550_411

def optimizedBody550_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_412

def optimizedBody550_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_49 optimizedBody550_413

def optimizedBody550_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_45 optimizedBody550_414

def optimizedBody550_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_44 optimizedBody550_415

def optimizedBody550_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_43 optimizedBody550_416

def optimizedBody550_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_417

def optimizedBody550_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_42 optimizedBody550_418

def optimizedBody550_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_36 optimizedBody550_419

def optimizedBody550_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_35 optimizedBody550_420

def optimizedBody550_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_34 optimizedBody550_421

def optimizedBody550_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_422

def optimizedBody550_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_33 optimizedBody550_423

def optimizedBody550_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_29 optimizedBody550_424

def optimizedBody550_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_28 optimizedBody550_425

def optimizedBody550_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_27 optimizedBody550_426

def optimizedBody550_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_26 optimizedBody550_427

def optimizedBody550_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_25 optimizedBody550_428

def optimizedBody550_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_24 optimizedBody550_429

def optimizedBody550_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_23 optimizedBody550_430

def optimizedBody550_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_431

def optimizedBody550_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_22 optimizedBody550_432

def optimizedBody550_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_18 optimizedBody550_433

def optimizedBody550_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_17 optimizedBody550_434

def optimizedBody550_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_16 optimizedBody550_435

def optimizedBody550_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_15 optimizedBody550_436

def optimizedBody550_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_14 optimizedBody550_437

def optimizedBody550_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_438

def optimizedBody550_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_13 optimizedBody550_439

def optimizedBody550_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_9 optimizedBody550_440

def optimizedBody550_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_441

def optimizedBody550_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_8 optimizedBody550_442

def optimizedBody550_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_1 optimizedBody550_443

def optimizedBody550_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_6 optimizedBody550_444

def optimizedBody550_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_5 optimizedBody550_445

def optimizedBody550_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody550_0 optimizedBody550_446

def oracle550 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                  9
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 25 (Flapjack.Spt.ls 6)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 8))))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 5)))
                    34
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 34
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 32)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 29 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 8))) 35
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 35 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 25 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 8)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 33 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 2 (Flapjack.Spt.ls 4)) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 8))) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 35)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 Flapjack.Spt.ln)) 25
                    (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 30)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 3))))
                  4
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 23 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 28 (Flapjack.Spt.ls 37)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                    3 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 34 Flapjack.Spt.ln) Flapjack.Spt.ln))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 0 (Flapjack.Spt.ls 5)) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 9))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 Flapjack.Spt.ln)))
                  8
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 Flapjack.Spt.ln))
                    26 (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 25 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 31)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 6))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 3 (Flapjack.Spt.ls 7))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)) 34
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 34 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 6)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 4))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 32 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 34 (Flapjack.Spt.ls 29))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln)))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 27)))
                    2
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 6)) 26
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 9 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 23 (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 26
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 27)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 30 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7 Flapjack.Spt.ln)))
                  7
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 1)))
                    35
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 35
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 1)) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 34 (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 25 Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 35
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 22 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 1)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 37)) (Flapjack.Spt.ls 35))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23 Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 34)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))
                  22
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 35)) 25
                    (Flapjack.Spt.ls 35))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 25 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 35 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23 (Flapjack.Spt.ls 35)) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 30)))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 Flapjack.Spt.ln) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 26 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 25 (Flapjack.Spt.ls 36)) (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 32)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 33)) 22
                    (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 28 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 33)) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 28 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  24 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 37)) 34 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 25 Flapjack.Spt.ln) 24 (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 38)) (Flapjack.Spt.ls 34))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 33)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 34)) 23
                    (Flapjack.Spt.ls 34))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 24 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 34 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 22 (Flapjack.Spt.ls 34)) (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  25 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) 35 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 26 Flapjack.Spt.ln) 25 (Flapjack.Spt.ls 31)))
                  22 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 24 (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 31)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 22 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 27 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 26 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 36)) 26 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 24 Flapjack.Spt.ln) 23 (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))))))))))
def optimized550 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(550, 1, optimizedBody550_447)
theorem optimize550_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source550, oracle550) = optimized550 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize550_eq
end InitECandidate.Proofs.WordStages
