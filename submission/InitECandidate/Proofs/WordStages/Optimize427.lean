import InitECandidate.Proofs.WordStages.Optimize411
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source427
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody427_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (50, 4), (48, 12), (54, 2), (52, 10), (56, 6)]

def optimizedBody427_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (12, 46), (50, 50), (16, 48), (54, 54), (14, 52), (10, 56)]

def optimizedBody427_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (50, 50), (16, 48), (54, 54), (14, 52), (10, 56)]

def optimizedBody427_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody427_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_2 optimizedBody427_3

def optimizedBody427_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody427_1, 427, 2)) (some 407) ([2]) (some (2, optimizedBody427_4, 427, 3))

def optimizedBody427_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody427_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody427_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody427_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody427_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody427_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody427_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 12), (48, 0), (50, 50),
    (52, 16), (54, 54), (56, 14), (58, 10)]

def optimizedBody427_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48), (50, 50), (48, 52), (54, 54), (52, 56), (56, 58)]

def optimizedBody427_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (48, 52), (54, 54), (52, 56), (56, 58)]

def optimizedBody427_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_14 optimizedBody427_3

def optimizedBody427_16 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody427_13, 427, 4)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody427_15, 427, 5))

def optimizedBody427_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody427_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody427_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody427_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody427_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody427_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_21 optimizedBody427_3

def optimizedBody427_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_20 optimizedBody427_22

def optimizedBody427_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_19 optimizedBody427_23

def optimizedBody427_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_24

def optimizedBody427_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_18 optimizedBody427_25

def optimizedBody427_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_26

def optimizedBody427_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody427_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody427_27 optimizedBody427_28

def optimizedBody427_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (46, 46), (50, 50), (48, 48), (54, 54), (52, 52), (56, 56)]

def optimizedBody427_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody427_1, 427, 6)) (some 395) ([2]) (some (2, optimizedBody427_4, 427, 7))

def optimizedBody427_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 4), (8, 8), (6, 6), (12, 2), (44, 44), (46, 46), (4, 48), (48, 50), (50, 52), (14, 54), (52, 56), (54, 58)]

def optimizedBody427_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (50, 52), (14, 54), (52, 56), (54, 58)]

def optimizedBody427_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_33 optimizedBody427_3

def optimizedBody427_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody427_32, 427, 8)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody427_34, 427, 9))

def optimizedBody427_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody427_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody427_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12), (8, 8), (6, 6), (10, 10)]

def optimizedBody427_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody427_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody427_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody427_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody427_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody427_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody427_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody427_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody427_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody427_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody427_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_48 optimizedBody427_3

def optimizedBody427_50 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody427_47, 427, 10)) (some 423) ([2, 4]) (some (2, optimizedBody427_49, 427, 11))

def optimizedBody427_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54)]

def optimizedBody427_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody427_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody427_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_53 optimizedBody427_3

def optimizedBody427_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody427_52, 427, 12)) (some 407) ([2]) (some (2, optimizedBody427_54, 427, 13))

def optimizedBody427_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody427_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (12, 46), (46, 48), (16, 50), (14, 52), (10, 54)]

def optimizedBody427_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (46, 48), (16, 50), (14, 52), (10, 54)]

def optimizedBody427_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_58 optimizedBody427_3

def optimizedBody427_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody427_57, 427, 14)) (some 395) ([2]) (some (2, optimizedBody427_59, 427, 15))

def optimizedBody427_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 0)]

def optimizedBody427_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 4), (8, 8), (6, 6), (12, 2), (44, 44), (14, 46), (4, 48)]

def optimizedBody427_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (4, 48)]

def optimizedBody427_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_63 optimizedBody427_3

def optimizedBody427_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody427_62, 427, 16)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody427_64, 427, 17))

def optimizedBody427_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (44, 44)]

def optimizedBody427_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody427_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody427_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_68 optimizedBody427_3

def optimizedBody427_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody427_67, 427, 18)) (some 423) ([2, 4]) (some (2, optimizedBody427_69, 427, 19))

def optimizedBody427_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody427_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody427_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_71 optimizedBody427_72

def optimizedBody427_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_17 optimizedBody427_73

def optimizedBody427_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_74

def optimizedBody427_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_70 optimizedBody427_75

def optimizedBody427_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_66 optimizedBody427_76

def optimizedBody427_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_45 optimizedBody427_77

def optimizedBody427_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_44 optimizedBody427_78

def optimizedBody427_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_43 optimizedBody427_79

def optimizedBody427_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_42 optimizedBody427_80

def optimizedBody427_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_41 optimizedBody427_81

def optimizedBody427_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_40 optimizedBody427_82

def optimizedBody427_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_39 optimizedBody427_83

def optimizedBody427_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_38 optimizedBody427_84

def optimizedBody427_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_37 optimizedBody427_85

def optimizedBody427_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_36 optimizedBody427_86

def optimizedBody427_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_87

def optimizedBody427_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_65 optimizedBody427_88

def optimizedBody427_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_61 optimizedBody427_89

def optimizedBody427_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_11 optimizedBody427_90

def optimizedBody427_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_91

def optimizedBody427_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_10 optimizedBody427_92

def optimizedBody427_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_93

def optimizedBody427_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_9 optimizedBody427_94

def optimizedBody427_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_95

def optimizedBody427_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_8 optimizedBody427_96

def optimizedBody427_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_97

def optimizedBody427_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_98

def optimizedBody427_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_60 optimizedBody427_99

def optimizedBody427_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_56 optimizedBody427_100

def optimizedBody427_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_101

def optimizedBody427_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_55 optimizedBody427_102

def optimizedBody427_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_51 optimizedBody427_103

def optimizedBody427_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_104

def optimizedBody427_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_50 optimizedBody427_105

def optimizedBody427_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_46 optimizedBody427_106

def optimizedBody427_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_45 optimizedBody427_107

def optimizedBody427_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_44 optimizedBody427_108

def optimizedBody427_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_43 optimizedBody427_109

def optimizedBody427_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_42 optimizedBody427_110

def optimizedBody427_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_41 optimizedBody427_111

def optimizedBody427_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_40 optimizedBody427_112

def optimizedBody427_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_39 optimizedBody427_113

def optimizedBody427_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_38 optimizedBody427_114

def optimizedBody427_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_37 optimizedBody427_115

def optimizedBody427_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_36 optimizedBody427_116

def optimizedBody427_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_117

def optimizedBody427_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_35 optimizedBody427_118

def optimizedBody427_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_12 optimizedBody427_119

def optimizedBody427_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_11 optimizedBody427_120

def optimizedBody427_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_121

def optimizedBody427_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_10 optimizedBody427_122

def optimizedBody427_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_123

def optimizedBody427_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_9 optimizedBody427_124

def optimizedBody427_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_125

def optimizedBody427_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_8 optimizedBody427_126

def optimizedBody427_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_127

def optimizedBody427_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_128

def optimizedBody427_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_31 optimizedBody427_129

def optimizedBody427_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_30 optimizedBody427_130

def optimizedBody427_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_131

def optimizedBody427_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_132

def optimizedBody427_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_29 optimizedBody427_133

def optimizedBody427_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_17 optimizedBody427_134

def optimizedBody427_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_135

def optimizedBody427_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_136

def optimizedBody427_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_16 optimizedBody427_137

def optimizedBody427_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_12 optimizedBody427_138

def optimizedBody427_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_11 optimizedBody427_139

def optimizedBody427_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_140

def optimizedBody427_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_10 optimizedBody427_141

def optimizedBody427_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_142

def optimizedBody427_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_9 optimizedBody427_143

def optimizedBody427_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_144

def optimizedBody427_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_8 optimizedBody427_145

def optimizedBody427_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_7 optimizedBody427_146

def optimizedBody427_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_6 optimizedBody427_147

def optimizedBody427_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_5 optimizedBody427_148

def optimizedBody427_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody427_0 optimizedBody427_149

def oracle427 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 25)) 27
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)) 1 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 25)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 4)))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 27)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 27)) 2 (Flapjack.Spt.ls 22))
                25
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25)) 2 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 25)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln) 25 (Flapjack.Spt.ls 6)) 8
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22)) 0 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 7))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 26)) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27)) 26 (Flapjack.Spt.ls 23)) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)) 24 Flapjack.Spt.ln) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 (Flapjack.Spt.ls 24)) 26
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) 25 (Flapjack.Spt.ls 22)) 25
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 29 (Flapjack.Spt.ls 27)) 28 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 23 Flapjack.Spt.ln) 22
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 (Flapjack.Spt.ls 25)) 27
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))))
def optimized427 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(427, 7, optimizedBody427_150)
theorem optimize427_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source427, oracle427) = optimized427 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize427_eq
end InitECandidate.Proofs.WordStages
