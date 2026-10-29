import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source690
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles690
def optimizedBody690_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 32), (48, 16), (50, 8), (52, 24), (54, 4), (56, 20), (58, 12), (60, 28), (62, 2), (64, 34), (66, 18),
    (68, 10), (70, 26), (72, 6), (74, 22), (76, 14), (78, 30)]

def optimizedBody690_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (24, 46), (22, 48), (26, 50), (18, 52), (30, 54), (14, 56), (20, 58), (10, 60), (46, 62), (12, 64),
    (6, 66), (28, 68), (0, 70), (32, 72), (4, 74), (16, 76), (8, 78)]

def optimizedBody690_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (22, 48), (26, 50), (18, 52), (30, 54), (14, 56), (20, 58), (10, 60), (46, 62), (12, 64),
    (6, 66), (28, 68), (0, 70), (32, 72), (4, 74), (16, 76), (8, 78)]

def optimizedBody690_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody690_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_2 optimizedBody690_3

def optimizedBody690_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody690_1, 690, 2)) (some 658) ([]) (some (2, optimizedBody690_4, 690, 3))

def optimizedBody690_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody690_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody690_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody690_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody690_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 2 18446744073709551136#64))

def optimizedBody690_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (30, 30), (28, 28), (26, 26), (32, 32)]

def optimizedBody690_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 34 0#64))

def optimizedBody690_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (32, 32)]

def optimizedBody690_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 32 (Flapjack.WordLangAddr.addr 34 8#64))

def optimizedBody690_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (26, 26)]

def optimizedBody690_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 34 16#64))

def optimizedBody690_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (28, 28)]

def optimizedBody690_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 34 24#64))

def optimizedBody690_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody690_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 2 18446744073709551136#64))

def optimizedBody690_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 26 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody690_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (20, 20), (6, 6), (22, 22), (16, 16)]

def optimizedBody690_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 26 0#64))

def optimizedBody690_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (16, 16)]

def optimizedBody690_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 26 8#64))

def optimizedBody690_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (22, 22)]

def optimizedBody690_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 26 16#64))

def optimizedBody690_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (6, 6)]

def optimizedBody690_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 26 24#64))

def optimizedBody690_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551128#64))

def optimizedBody690_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (14, 14), (0, 0), (18, 18), (4, 4)]

def optimizedBody690_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody690_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody690_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody690_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (18, 18)]

def optimizedBody690_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody690_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody690_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody690_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 18446744073709551128#64))

def optimizedBody690_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody690_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10), (12, 12), (24, 24), (8, 8)]

def optimizedBody690_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody690_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody690_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody690_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (24, 24)]

def optimizedBody690_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody690_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody690_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody690_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551120#64))

def optimizedBody690_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody690_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody690_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody690_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody690_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 103#8, 49#8, 95#8, 97#8, 100#8, 100#8]) 2 4 6 8
  (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln,
    Flapjack.Spt.ln)

def optimizedBody690_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 44), (0, 46)]

def optimizedBody690_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 18446744073709551136#64))

def optimizedBody690_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody690_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody690_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody690_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody690_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody690_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 16 32#64))

def optimizedBody690_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 16 40#64))

def optimizedBody690_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 16 48#64))

def optimizedBody690_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 16 56#64))

def optimizedBody690_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (14, 14), (8, 8), (10, 10), (12, 12)]

def optimizedBody690_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody690_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody690_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody690_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody690_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody690_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody690_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody690_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2), (16, 16), (4, 4), (6, 6)]

def optimizedBody690_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody690_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody690_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody690_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody690_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody690_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody690_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody690_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody690_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody690_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody690_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody690_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody690_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody690_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody690_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody690_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2]

def optimizedBody690_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_89 optimizedBody690_90

def optimizedBody690_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_85 optimizedBody690_91

def optimizedBody690_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_88 optimizedBody690_92

def optimizedBody690_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_72 optimizedBody690_93

def optimizedBody690_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_85 optimizedBody690_94

def optimizedBody690_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_87 optimizedBody690_95

def optimizedBody690_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_72 optimizedBody690_96

def optimizedBody690_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_85 optimizedBody690_97

def optimizedBody690_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_86 optimizedBody690_98

def optimizedBody690_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_72 optimizedBody690_99

def optimizedBody690_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_85 optimizedBody690_100

def optimizedBody690_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_84 optimizedBody690_101

def optimizedBody690_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_72 optimizedBody690_102

def optimizedBody690_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_83 optimizedBody690_103

def optimizedBody690_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_82 optimizedBody690_104

def optimizedBody690_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_72 optimizedBody690_105

def optimizedBody690_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_81 optimizedBody690_106

def optimizedBody690_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_80 optimizedBody690_107

def optimizedBody690_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_79 optimizedBody690_108

def optimizedBody690_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_78 optimizedBody690_109

def optimizedBody690_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_77 optimizedBody690_110

def optimizedBody690_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_76 optimizedBody690_111

def optimizedBody690_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_75 optimizedBody690_112

def optimizedBody690_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_74 optimizedBody690_113

def optimizedBody690_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_73 optimizedBody690_114

def optimizedBody690_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_72 optimizedBody690_115

def optimizedBody690_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_71 optimizedBody690_116

def optimizedBody690_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_43 optimizedBody690_117

def optimizedBody690_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_70 optimizedBody690_118

def optimizedBody690_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_69 optimizedBody690_119

def optimizedBody690_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_68 optimizedBody690_120

def optimizedBody690_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_47 optimizedBody690_121

def optimizedBody690_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_67 optimizedBody690_122

def optimizedBody690_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_66 optimizedBody690_123

def optimizedBody690_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_65 optimizedBody690_124

def optimizedBody690_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_58 optimizedBody690_125

def optimizedBody690_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_64 optimizedBody690_126

def optimizedBody690_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_58 optimizedBody690_127

def optimizedBody690_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_63 optimizedBody690_128

def optimizedBody690_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_58 optimizedBody690_129

def optimizedBody690_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_62 optimizedBody690_130

def optimizedBody690_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_58 optimizedBody690_131

def optimizedBody690_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_61 optimizedBody690_132

def optimizedBody690_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_58 optimizedBody690_133

def optimizedBody690_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_60 optimizedBody690_134

def optimizedBody690_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_58 optimizedBody690_135

def optimizedBody690_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_59 optimizedBody690_136

def optimizedBody690_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_58 optimizedBody690_137

def optimizedBody690_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_57 optimizedBody690_138

def optimizedBody690_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_56 optimizedBody690_139

def optimizedBody690_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_9 optimizedBody690_140

def optimizedBody690_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_8 optimizedBody690_141

def optimizedBody690_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_7 optimizedBody690_142

def optimizedBody690_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_55 optimizedBody690_143

def optimizedBody690_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_54 optimizedBody690_144

def optimizedBody690_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_53 optimizedBody690_145

def optimizedBody690_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_52 optimizedBody690_146

def optimizedBody690_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_51 optimizedBody690_147

def optimizedBody690_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_50 optimizedBody690_148

def optimizedBody690_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_49 optimizedBody690_149

def optimizedBody690_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_19 optimizedBody690_150

def optimizedBody690_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_48 optimizedBody690_151

def optimizedBody690_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_47 optimizedBody690_152

def optimizedBody690_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_46 optimizedBody690_153

def optimizedBody690_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_45 optimizedBody690_154

def optimizedBody690_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_44 optimizedBody690_155

def optimizedBody690_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_43 optimizedBody690_156

def optimizedBody690_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_42 optimizedBody690_157

def optimizedBody690_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_41 optimizedBody690_158

def optimizedBody690_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_40 optimizedBody690_159

def optimizedBody690_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_39 optimizedBody690_160

def optimizedBody690_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_19 optimizedBody690_161

def optimizedBody690_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_38 optimizedBody690_162

def optimizedBody690_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_37 optimizedBody690_163

def optimizedBody690_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_36 optimizedBody690_164

def optimizedBody690_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_35 optimizedBody690_165

def optimizedBody690_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_34 optimizedBody690_166

def optimizedBody690_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_33 optimizedBody690_167

def optimizedBody690_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_32 optimizedBody690_168

def optimizedBody690_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_31 optimizedBody690_169

def optimizedBody690_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_30 optimizedBody690_170

def optimizedBody690_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_19 optimizedBody690_171

def optimizedBody690_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_29 optimizedBody690_172

def optimizedBody690_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_28 optimizedBody690_173

def optimizedBody690_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_27 optimizedBody690_174

def optimizedBody690_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_26 optimizedBody690_175

def optimizedBody690_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_25 optimizedBody690_176

def optimizedBody690_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_24 optimizedBody690_177

def optimizedBody690_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_23 optimizedBody690_178

def optimizedBody690_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_22 optimizedBody690_179

def optimizedBody690_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_21 optimizedBody690_180

def optimizedBody690_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_20 optimizedBody690_181

def optimizedBody690_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_19 optimizedBody690_182

def optimizedBody690_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_18 optimizedBody690_183

def optimizedBody690_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_17 optimizedBody690_184

def optimizedBody690_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_16 optimizedBody690_185

def optimizedBody690_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_15 optimizedBody690_186

def optimizedBody690_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_14 optimizedBody690_187

def optimizedBody690_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_13 optimizedBody690_188

def optimizedBody690_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_12 optimizedBody690_189

def optimizedBody690_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_11 optimizedBody690_190

def optimizedBody690_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_10 optimizedBody690_191

def optimizedBody690_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_9 optimizedBody690_192

def optimizedBody690_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_8 optimizedBody690_193

def optimizedBody690_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_7 optimizedBody690_194

def optimizedBody690_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_6 optimizedBody690_195

def optimizedBody690_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_5 optimizedBody690_196

def optimizedBody690_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_0 optimizedBody690_197

def oracle690 : Option (Spt Nat) :=
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
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 13 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 11 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 13 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 13 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 13 (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 15 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 12))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 8)) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 8 (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 9 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 14 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 13 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 12))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 13 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 8 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 14))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 13 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 17 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 12
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 17 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8)) 15
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 17 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 14 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 11 (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 9)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 17 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 2 (Flapjack.Spt.ls 6)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 13 (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 17 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 11 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 16 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.ls 30))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.ls 29))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))))))
def optimized690 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(690, 18, optimizedBody690_198)
end InitECandidate.Proofs.SmallStages.Oracles690
