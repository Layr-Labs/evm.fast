import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source660
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles660
def optimizedBody660_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 4), (48, 2), (50, 6)]

def optimizedBody660_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (44, 48), (0, 50)]

def optimizedBody660_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (44, 48), (0, 50)]

def optimizedBody660_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody660_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_2 optimizedBody660_3

def optimizedBody660_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody660_1, 660, 2)) (some 658) ([]) (some (2, optimizedBody660_4, 660, 3))

def optimizedBody660_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody660_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody660_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody660_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody660_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551160#64))

def optimizedBody660_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody660_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody660_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody660_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody660_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody660_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (14, 14)]

def optimizedBody660_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody660_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def optimizedBody660_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody660_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody660_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody660_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody660_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody660_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody660_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551160#64))

def optimizedBody660_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody660_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody660_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody660_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody660_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody660_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (12, 12)]

def optimizedBody660_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody660_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody660_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody660_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody660_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody660_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody660_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody660_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551152#64))

def optimizedBody660_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody660_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody660_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody660_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody660_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody660_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551152#64))

def optimizedBody660_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody660_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody660_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody660_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody660_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody660_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody660_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody660_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody660_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody660_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody660_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody660_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody660_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody660_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551144#64))

def optimizedBody660_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody660_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody660_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody660_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (46, 46), (44, 44)]

def optimizedBody660_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 102#8, 112#8, 50#8, 95#8, 97#8, 100#8, 100#8]) 2 4
  6 8
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

def optimizedBody660_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44), (12, 46)]

def optimizedBody660_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody660_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody660_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody660_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551160#64))

def optimizedBody660_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody660_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody660_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody660_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody660_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody660_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody660_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody660_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody660_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody660_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody660_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody660_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody660_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody660_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody660_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody660_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody660_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551160#64))

def optimizedBody660_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody660_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody660_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody660_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody660_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody660_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody660_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody660_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody660_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody660_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody660_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_83 optimizedBody660_96

def optimizedBody660_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_95 optimizedBody660_97

def optimizedBody660_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_94 optimizedBody660_98

def optimizedBody660_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_93 optimizedBody660_99

def optimizedBody660_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_92 optimizedBody660_100

def optimizedBody660_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_81 optimizedBody660_101

def optimizedBody660_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_91 optimizedBody660_102

def optimizedBody660_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_79 optimizedBody660_103

def optimizedBody660_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_90 optimizedBody660_104

def optimizedBody660_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_77 optimizedBody660_105

def optimizedBody660_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_50 optimizedBody660_106

def optimizedBody660_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_85 optimizedBody660_107

def optimizedBody660_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_89 optimizedBody660_108

def optimizedBody660_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_85 optimizedBody660_109

def optimizedBody660_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_88 optimizedBody660_110

def optimizedBody660_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_85 optimizedBody660_111

def optimizedBody660_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_87 optimizedBody660_112

def optimizedBody660_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_86 optimizedBody660_113

def optimizedBody660_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_85 optimizedBody660_114

def optimizedBody660_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_84 optimizedBody660_115

def optimizedBody660_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_83 optimizedBody660_116

def optimizedBody660_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_82 optimizedBody660_117

def optimizedBody660_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_81 optimizedBody660_118

def optimizedBody660_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_80 optimizedBody660_119

def optimizedBody660_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_79 optimizedBody660_120

def optimizedBody660_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_78 optimizedBody660_121

def optimizedBody660_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_77 optimizedBody660_122

def optimizedBody660_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_76 optimizedBody660_123

def optimizedBody660_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_75 optimizedBody660_124

def optimizedBody660_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_74 optimizedBody660_125

def optimizedBody660_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_71 optimizedBody660_126

def optimizedBody660_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_73 optimizedBody660_127

def optimizedBody660_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_71 optimizedBody660_128

def optimizedBody660_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_72 optimizedBody660_129

def optimizedBody660_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_71 optimizedBody660_130

def optimizedBody660_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_70 optimizedBody660_131

def optimizedBody660_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_69 optimizedBody660_132

def optimizedBody660_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_68 optimizedBody660_133

def optimizedBody660_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_67 optimizedBody660_134

def optimizedBody660_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_66 optimizedBody660_135

def optimizedBody660_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_65 optimizedBody660_136

def optimizedBody660_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_64 optimizedBody660_137

def optimizedBody660_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_63 optimizedBody660_138

def optimizedBody660_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_62 optimizedBody660_139

def optimizedBody660_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_61 optimizedBody660_140

def optimizedBody660_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_60 optimizedBody660_141

def optimizedBody660_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_59 optimizedBody660_142

def optimizedBody660_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_24 optimizedBody660_143

def optimizedBody660_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_58 optimizedBody660_144

def optimizedBody660_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_57 optimizedBody660_145

def optimizedBody660_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_56 optimizedBody660_146

def optimizedBody660_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_55 optimizedBody660_147

def optimizedBody660_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_54 optimizedBody660_148

def optimizedBody660_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_53 optimizedBody660_149

def optimizedBody660_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_52 optimizedBody660_150

def optimizedBody660_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_51 optimizedBody660_151

def optimizedBody660_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_50 optimizedBody660_152

def optimizedBody660_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_40 optimizedBody660_153

def optimizedBody660_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_49 optimizedBody660_154

def optimizedBody660_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_40 optimizedBody660_155

def optimizedBody660_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_48 optimizedBody660_156

def optimizedBody660_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_40 optimizedBody660_157

def optimizedBody660_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_47 optimizedBody660_158

def optimizedBody660_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_40 optimizedBody660_159

def optimizedBody660_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_46 optimizedBody660_160

def optimizedBody660_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_45 optimizedBody660_161

def optimizedBody660_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_24 optimizedBody660_162

def optimizedBody660_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_38 optimizedBody660_163

def optimizedBody660_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_37 optimizedBody660_164

def optimizedBody660_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_36 optimizedBody660_165

def optimizedBody660_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_35 optimizedBody660_166

def optimizedBody660_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_34 optimizedBody660_167

def optimizedBody660_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_33 optimizedBody660_168

def optimizedBody660_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_32 optimizedBody660_169

def optimizedBody660_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_31 optimizedBody660_170

def optimizedBody660_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_44 optimizedBody660_171

def optimizedBody660_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_40 optimizedBody660_172

def optimizedBody660_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_43 optimizedBody660_173

def optimizedBody660_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_40 optimizedBody660_174

def optimizedBody660_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_42 optimizedBody660_175

def optimizedBody660_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_40 optimizedBody660_176

def optimizedBody660_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_41 optimizedBody660_177

def optimizedBody660_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_40 optimizedBody660_178

def optimizedBody660_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_39 optimizedBody660_179

def optimizedBody660_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_24 optimizedBody660_180

def optimizedBody660_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_38 optimizedBody660_181

def optimizedBody660_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_37 optimizedBody660_182

def optimizedBody660_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_36 optimizedBody660_183

def optimizedBody660_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_35 optimizedBody660_184

def optimizedBody660_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_34 optimizedBody660_185

def optimizedBody660_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_33 optimizedBody660_186

def optimizedBody660_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_32 optimizedBody660_187

def optimizedBody660_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_31 optimizedBody660_188

def optimizedBody660_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_30 optimizedBody660_189

def optimizedBody660_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_11 optimizedBody660_190

def optimizedBody660_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_29 optimizedBody660_191

def optimizedBody660_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_11 optimizedBody660_192

def optimizedBody660_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_28 optimizedBody660_193

def optimizedBody660_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_11 optimizedBody660_194

def optimizedBody660_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_27 optimizedBody660_195

def optimizedBody660_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_11 optimizedBody660_196

def optimizedBody660_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_26 optimizedBody660_197

def optimizedBody660_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_25 optimizedBody660_198

def optimizedBody660_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_24 optimizedBody660_199

def optimizedBody660_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_23 optimizedBody660_200

def optimizedBody660_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_22 optimizedBody660_201

def optimizedBody660_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_21 optimizedBody660_202

def optimizedBody660_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_20 optimizedBody660_203

def optimizedBody660_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_19 optimizedBody660_204

def optimizedBody660_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_18 optimizedBody660_205

def optimizedBody660_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_17 optimizedBody660_206

def optimizedBody660_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_16 optimizedBody660_207

def optimizedBody660_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_15 optimizedBody660_208

def optimizedBody660_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_11 optimizedBody660_209

def optimizedBody660_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_14 optimizedBody660_210

def optimizedBody660_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_11 optimizedBody660_211

def optimizedBody660_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_13 optimizedBody660_212

def optimizedBody660_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_11 optimizedBody660_213

def optimizedBody660_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_12 optimizedBody660_214

def optimizedBody660_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_11 optimizedBody660_215

def optimizedBody660_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_10 optimizedBody660_216

def optimizedBody660_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_9 optimizedBody660_217

def optimizedBody660_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_8 optimizedBody660_218

def optimizedBody660_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_7 optimizedBody660_219

def optimizedBody660_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_6 optimizedBody660_220

def optimizedBody660_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_5 optimizedBody660_221

def optimizedBody660_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody660_0 optimizedBody660_222

def oracle660 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))) 7
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 3)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 4 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 5)) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5))))
              23
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)))
                22 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 2 Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 25
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.ls 23))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))
def optimized660 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(660, 4, optimizedBody660_223)
end InitECandidate.Proofs.SmallStages.Oracles660
