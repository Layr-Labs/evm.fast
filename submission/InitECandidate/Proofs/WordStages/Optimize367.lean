import InitECandidate.Proofs.WordStages.Optimize351
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source367
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody367_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 2), (54, 6)]

def optimizedBody367_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody367_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody367_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody367_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_2 optimizedBody367_3

def optimizedBody367_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody367_1, 367, 2)) (some 366) ([2]) (some (2, optimizedBody367_4, 367, 3))

def optimizedBody367_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody367_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody367_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (54, 54)]

def optimizedBody367_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (54, 54)]

def optimizedBody367_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_9 optimizedBody367_3

def optimizedBody367_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody367_8, 367, 4)) (some 68) ([2]) (some (2, optimizedBody367_10, 367, 5))

def optimizedBody367_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody367_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody367_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (50, 2)]

def optimizedBody367_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody367_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody367_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody367_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 50)]

def optimizedBody367_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody367_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 2), (52, 6), (54, 54), (56, 2)]

def optimizedBody367_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (6, 56)]

def optimizedBody367_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (6, 56)]

def optimizedBody367_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_22 optimizedBody367_3

def optimizedBody367_24 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_21, 367, 6)) (some 177) ([2, 4]) (some (2, optimizedBody367_23, 367, 7))

def optimizedBody367_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody367_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody367_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (50, 50), (52, 52), (54, 54), (2, 2)]

def optimizedBody367_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_27

def optimizedBody367_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_28

def optimizedBody367_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_29

def optimizedBody367_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_24 optimizedBody367_30

def optimizedBody367_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_20 optimizedBody367_31

def optimizedBody367_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_19 optimizedBody367_32

def optimizedBody367_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_18 optimizedBody367_33

def optimizedBody367_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_34

def optimizedBody367_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (50, 50), (52, 6), (54, 54), (2, 50)]

def optimizedBody367_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_36

def optimizedBody367_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody367_35 optimizedBody367_37

def optimizedBody367_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody367_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody367_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody367_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody367_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody367_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody367_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 2)]

def optimizedBody367_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (50, 50), (12, 52), (54, 54), (6, 56)]

def optimizedBody367_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (12, 52), (54, 54), (6, 56)]

def optimizedBody367_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_47 optimizedBody367_3

def optimizedBody367_49 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_46, 367, 8)) (some 357) ([2, 4, 6, 8, 10]) (some (2, optimizedBody367_48, 367, 9))

def optimizedBody367_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody367_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody367_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody367_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody367_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody367_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody367_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody367_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 0), (50, 50), (52, 12), (54, 54), (56, 2)]

def optimizedBody367_58 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_21, 367, 10)) (some 357) ([2, 4, 6, 8, 10]) (some (2, optimizedBody367_23, 367, 11))

def optimizedBody367_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_58 optimizedBody367_30

def optimizedBody367_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_57 optimizedBody367_59

def optimizedBody367_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_56 optimizedBody367_60

def optimizedBody367_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_61

def optimizedBody367_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_55 optimizedBody367_62

def optimizedBody367_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_63

def optimizedBody367_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_54 optimizedBody367_64

def optimizedBody367_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_65

def optimizedBody367_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_53 optimizedBody367_66

def optimizedBody367_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_67

def optimizedBody367_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_68

def optimizedBody367_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody367_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody367_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody367_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 104#64))

def optimizedBody367_74 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_21, 367, 12)) (some 357) ([2, 4, 6, 8, 10]) (some (2, optimizedBody367_23, 367, 13))

def optimizedBody367_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody367_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody367_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody367_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody367_79 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_21, 367, 14)) (some 357) ([2, 4, 6, 8, 10]) (some (2, optimizedBody367_23, 367, 15))

def optimizedBody367_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_79 optimizedBody367_30

def optimizedBody367_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_45 optimizedBody367_80

def optimizedBody367_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_78 optimizedBody367_81

def optimizedBody367_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_82

def optimizedBody367_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_77 optimizedBody367_83

def optimizedBody367_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_84

def optimizedBody367_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_76 optimizedBody367_85

def optimizedBody367_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_86

def optimizedBody367_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_75 optimizedBody367_87

def optimizedBody367_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_88

def optimizedBody367_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_89

def optimizedBody367_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_90

def optimizedBody367_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_91

def optimizedBody367_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_74 optimizedBody367_92

def optimizedBody367_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_57 optimizedBody367_93

def optimizedBody367_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_73 optimizedBody367_94

def optimizedBody367_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_95

def optimizedBody367_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_72 optimizedBody367_96

def optimizedBody367_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_97

def optimizedBody367_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_71 optimizedBody367_98

def optimizedBody367_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_99

def optimizedBody367_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_70 optimizedBody367_100

def optimizedBody367_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_101

def optimizedBody367_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_102

def optimizedBody367_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 12) optimizedBody367_69 optimizedBody367_103

def optimizedBody367_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 144#64))

def optimizedBody367_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 2)]

def optimizedBody367_107 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_21, 367, 16)) (some 177) ([2, 4]) (some (2, optimizedBody367_23, 367, 17))

def optimizedBody367_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody367_109 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_21, 367, 18)) (some 359) ([2, 4]) (some (2, optimizedBody367_23, 367, 19))

def optimizedBody367_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody367_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody367_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody367_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 184#64))

def optimizedBody367_114 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_21, 367, 20)) (some 357) ([2, 4, 6, 8, 10]) (some (2, optimizedBody367_23, 367, 21))

def optimizedBody367_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 192#64))

def optimizedBody367_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 200#64))

def optimizedBody367_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 2)]

def optimizedBody367_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (12, 48), (50, 50), (0, 52), (54, 54), (6, 56)]

def optimizedBody367_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (50, 50), (0, 52), (54, 54), (6, 56)]

def optimizedBody367_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_119 optimizedBody367_3

def optimizedBody367_121 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_118, 367, 22)) (some 176) ([2, 4, 6]) (some (2, optimizedBody367_120, 367, 23))

def optimizedBody367_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody367_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 2)]

def optimizedBody367_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 208#64))

def optimizedBody367_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 216#64))

def optimizedBody367_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 12), (50, 50), (52, 0), (54, 54), (56, 2)]

def optimizedBody367_127 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_118, 367, 24)) (some 361) ([2, 4, 6]) (some (2, optimizedBody367_120, 367, 25))

def optimizedBody367_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (12, 12), (50, 50), (0, 0), (54, 54), (2, 2)]

def optimizedBody367_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_128

def optimizedBody367_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_129

def optimizedBody367_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_130

def optimizedBody367_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_127 optimizedBody367_131

def optimizedBody367_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_126 optimizedBody367_132

def optimizedBody367_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_125 optimizedBody367_133

def optimizedBody367_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_52 optimizedBody367_134

def optimizedBody367_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_124 optimizedBody367_135

def optimizedBody367_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_123 optimizedBody367_136

def optimizedBody367_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_137

def optimizedBody367_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_128

def optimizedBody367_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody367_138 optimizedBody367_139

def optimizedBody367_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody367_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 224#64))

def optimizedBody367_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 232#64))

def optimizedBody367_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 240#64))

def optimizedBody367_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 248#64))

def optimizedBody367_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 12), (50, 50), (52, 0), (54, 54), (56, 2)]

def optimizedBody367_147 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_21, 367, 26)) (some 357) ([2, 4, 6, 8, 10]) (some (2, optimizedBody367_23, 367, 27))

def optimizedBody367_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 256#64))

def optimizedBody367_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 264#64))

def optimizedBody367_150 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_118, 367, 28)) (some 362) ([2, 4, 6]) (some (2, optimizedBody367_120, 367, 29))

def optimizedBody367_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_150 optimizedBody367_131

def optimizedBody367_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_117 optimizedBody367_151

def optimizedBody367_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_149 optimizedBody367_152

def optimizedBody367_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_153

def optimizedBody367_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_148 optimizedBody367_154

def optimizedBody367_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_155

def optimizedBody367_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_156

def optimizedBody367_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_157

def optimizedBody367_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_158

def optimizedBody367_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_147 optimizedBody367_159

def optimizedBody367_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_146 optimizedBody367_160

def optimizedBody367_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_145 optimizedBody367_161

def optimizedBody367_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_52 optimizedBody367_162

def optimizedBody367_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_144 optimizedBody367_163

def optimizedBody367_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_52 optimizedBody367_164

def optimizedBody367_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_143 optimizedBody367_165

def optimizedBody367_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_52 optimizedBody367_166

def optimizedBody367_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_142 optimizedBody367_167

def optimizedBody367_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_123 optimizedBody367_168

def optimizedBody367_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_169

def optimizedBody367_171 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody367_170 optimizedBody367_139

def optimizedBody367_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody367_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 272#64))

def optimizedBody367_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 280#64))

def optimizedBody367_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (14, 46), (12, 48), (46, 50), (50, 52), (54, 54), (4, 56)]

def optimizedBody367_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (12, 48), (46, 50), (50, 52), (54, 54), (4, 56)]

def optimizedBody367_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_176 optimizedBody367_3

def optimizedBody367_178 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_175, 367, 30)) (some 365) ([2, 4, 6]) (some (2, optimizedBody367_177, 367, 31))

def optimizedBody367_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody367_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody367_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 14), (12, 12), (46, 46), (50, 50), (54, 54), (2, 2)]

def optimizedBody367_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_180 optimizedBody367_181

def optimizedBody367_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_179 optimizedBody367_182

def optimizedBody367_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_183

def optimizedBody367_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_178 optimizedBody367_184

def optimizedBody367_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_126 optimizedBody367_185

def optimizedBody367_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_174 optimizedBody367_186

def optimizedBody367_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_52 optimizedBody367_187

def optimizedBody367_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_173 optimizedBody367_188

def optimizedBody367_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_123 optimizedBody367_189

def optimizedBody367_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_190

def optimizedBody367_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 46), (12, 12), (46, 50), (50, 0), (54, 54), (2, 2)]

def optimizedBody367_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_192

def optimizedBody367_194 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody367_191 optimizedBody367_193

def optimizedBody367_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody367_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody367_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 288#64))

def optimizedBody367_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 296#64))

def optimizedBody367_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 304#64))

def optimizedBody367_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 312#64))

def optimizedBody367_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 14), (48, 12), (50, 46), (52, 50), (54, 54), (56, 2)]

def optimizedBody367_202 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_21, 367, 32)) (some 357) ([2, 4, 6, 8, 10]) (some (2, optimizedBody367_23, 367, 33))

def optimizedBody367_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 320#64))

def optimizedBody367_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 328#64))

def optimizedBody367_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 336#64))

def optimizedBody367_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 344#64))

def optimizedBody367_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (6, 56)]

def optimizedBody367_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (6, 56)]

def optimizedBody367_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_208 optimizedBody367_3

def optimizedBody367_210 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_207, 367, 34)) (some 357) ([2, 4, 6, 8, 10]) (some (2, optimizedBody367_209, 367, 35))

def optimizedBody367_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 352#64))

def optimizedBody367_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 360#64))

def optimizedBody367_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 368#64))

def optimizedBody367_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 376#64))

def optimizedBody367_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 2)]

def optimizedBody367_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (14, 46), (46, 48), (50, 50), (4, 52), (6, 54)]

def optimizedBody367_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (46, 48), (50, 50), (4, 52), (6, 54)]

def optimizedBody367_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_217 optimizedBody367_3

def optimizedBody367_219 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody367_216, 367, 36)) (some 357) ([2, 4, 6, 8, 10]) (some (2, optimizedBody367_218, 367, 37))

def optimizedBody367_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody367_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody367_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 14), (46, 46), (50, 50), (4, 4), (2, 2)]

def optimizedBody367_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_221 optimizedBody367_222

def optimizedBody367_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_220 optimizedBody367_223

def optimizedBody367_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_224

def optimizedBody367_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_219 optimizedBody367_225

def optimizedBody367_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_215 optimizedBody367_226

def optimizedBody367_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_214 optimizedBody367_227

def optimizedBody367_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_228

def optimizedBody367_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_213 optimizedBody367_229

def optimizedBody367_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_230

def optimizedBody367_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_212 optimizedBody367_231

def optimizedBody367_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_232

def optimizedBody367_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_211 optimizedBody367_233

def optimizedBody367_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_234

def optimizedBody367_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_235

def optimizedBody367_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_236

def optimizedBody367_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_237

def optimizedBody367_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_210 optimizedBody367_238

def optimizedBody367_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_45 optimizedBody367_239

def optimizedBody367_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_206 optimizedBody367_240

def optimizedBody367_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_241

def optimizedBody367_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_205 optimizedBody367_242

def optimizedBody367_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_243

def optimizedBody367_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_204 optimizedBody367_244

def optimizedBody367_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_245

def optimizedBody367_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_203 optimizedBody367_246

def optimizedBody367_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_247

def optimizedBody367_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_248

def optimizedBody367_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_249

def optimizedBody367_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_250

def optimizedBody367_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_202 optimizedBody367_251

def optimizedBody367_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_201 optimizedBody367_252

def optimizedBody367_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_200 optimizedBody367_253

def optimizedBody367_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_52 optimizedBody367_254

def optimizedBody367_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_199 optimizedBody367_255

def optimizedBody367_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_52 optimizedBody367_256

def optimizedBody367_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_198 optimizedBody367_257

def optimizedBody367_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_52 optimizedBody367_258

def optimizedBody367_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_197 optimizedBody367_259

def optimizedBody367_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_123 optimizedBody367_260

def optimizedBody367_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_261

def optimizedBody367_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 14), (46, 46), (50, 50), (4, 54), (2, 2)]

def optimizedBody367_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_263

def optimizedBody367_265 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 0) optimizedBody367_262 optimizedBody367_264

def optimizedBody367_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody367_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (50, 50), (48, 2)]

def optimizedBody367_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50), (6, 48)]

def optimizedBody367_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (6, 48)]

def optimizedBody367_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_269 optimizedBody367_3

def optimizedBody367_271 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody367_268, 367, 38)) (some 177) ([2, 4]) (some (2, optimizedBody367_270, 367, 39))

def optimizedBody367_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody367_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody367_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody367_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody367_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody367_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50), (2, 2)]

def optimizedBody367_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_276 optimizedBody367_277

def optimizedBody367_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_50 optimizedBody367_278

def optimizedBody367_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_275 optimizedBody367_279

def optimizedBody367_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_272 optimizedBody367_280

def optimizedBody367_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_274 optimizedBody367_281

def optimizedBody367_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_50 optimizedBody367_282

def optimizedBody367_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_273 optimizedBody367_283

def optimizedBody367_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_272 optimizedBody367_284

def optimizedBody367_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_50 optimizedBody367_285

def optimizedBody367_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_286

def optimizedBody367_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_287

def optimizedBody367_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_288

def optimizedBody367_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_271 optimizedBody367_289

def optimizedBody367_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_267 optimizedBody367_290

def optimizedBody367_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_291

def optimizedBody367_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (50, 50), (2, 2)]

def optimizedBody367_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_293

def optimizedBody367_295 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 0) optimizedBody367_292 optimizedBody367_294

def optimizedBody367_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 2)]

def optimizedBody367_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody367_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2), (48, 0), (50, 50), (52, 4)]

def optimizedBody367_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (46, 50), (50, 52)]

def optimizedBody367_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (46, 50), (50, 52)]

def optimizedBody367_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_300 optimizedBody367_3

def optimizedBody367_302 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody367_299, 367, 40)) (some 180) ([2]) (some (2, optimizedBody367_301, 367, 41))

def optimizedBody367_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody367_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2), (50, 50)]

def optimizedBody367_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody367_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody367_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_306 optimizedBody367_3

def optimizedBody367_308 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody367_305, 367, 42)) (some 178) ([2, 4]) (some (2, optimizedBody367_307, 367, 43))

def optimizedBody367_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody367_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody367_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody367_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_310 optimizedBody367_311

def optimizedBody367_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_220 optimizedBody367_312

def optimizedBody367_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_309 optimizedBody367_313

def optimizedBody367_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_314

def optimizedBody367_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_315

def optimizedBody367_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_311

def optimizedBody367_318 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody367_316 optimizedBody367_317

def optimizedBody367_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody367_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody367_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0), (4, 4)]

def optimizedBody367_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody367_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_321 optimizedBody367_322

def optimizedBody367_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_320 optimizedBody367_323

def optimizedBody367_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_319 optimizedBody367_324

def optimizedBody367_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_325

def optimizedBody367_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_318 optimizedBody367_326

def optimizedBody367_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_17 optimizedBody367_327

def optimizedBody367_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_16 optimizedBody367_328

def optimizedBody367_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_329

def optimizedBody367_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_308 optimizedBody367_330

def optimizedBody367_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_304 optimizedBody367_331

def optimizedBody367_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_303 optimizedBody367_332

def optimizedBody367_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_220 optimizedBody367_333

def optimizedBody367_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_334

def optimizedBody367_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_302 optimizedBody367_335

def optimizedBody367_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_298 optimizedBody367_336

def optimizedBody367_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_297 optimizedBody367_337

def optimizedBody367_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_296 optimizedBody367_338

def optimizedBody367_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_339

def optimizedBody367_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_295 optimizedBody367_340

def optimizedBody367_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_266 optimizedBody367_341

def optimizedBody367_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_195 optimizedBody367_342

def optimizedBody367_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_343

def optimizedBody367_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_265 optimizedBody367_344

def optimizedBody367_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_196 optimizedBody367_345

def optimizedBody367_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_195 optimizedBody367_346

def optimizedBody367_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_347

def optimizedBody367_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_194 optimizedBody367_348

def optimizedBody367_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_172 optimizedBody367_349

def optimizedBody367_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_350

def optimizedBody367_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_351

def optimizedBody367_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_171 optimizedBody367_352

def optimizedBody367_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_141 optimizedBody367_353

def optimizedBody367_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_354

def optimizedBody367_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_355

def optimizedBody367_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_140 optimizedBody367_356

def optimizedBody367_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_122 optimizedBody367_357

def optimizedBody367_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_358

def optimizedBody367_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_359

def optimizedBody367_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_360

def optimizedBody367_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_361

def optimizedBody367_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_121 optimizedBody367_362

def optimizedBody367_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_117 optimizedBody367_363

def optimizedBody367_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_116 optimizedBody367_364

def optimizedBody367_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_365

def optimizedBody367_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_115 optimizedBody367_366

def optimizedBody367_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_367

def optimizedBody367_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_368

def optimizedBody367_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_369

def optimizedBody367_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_370

def optimizedBody367_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_114 optimizedBody367_371

def optimizedBody367_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_45 optimizedBody367_372

def optimizedBody367_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_113 optimizedBody367_373

def optimizedBody367_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_374

def optimizedBody367_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_112 optimizedBody367_375

def optimizedBody367_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_376

def optimizedBody367_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_111 optimizedBody367_377

def optimizedBody367_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_378

def optimizedBody367_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_110 optimizedBody367_379

def optimizedBody367_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_380

def optimizedBody367_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_381

def optimizedBody367_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_382

def optimizedBody367_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_383

def optimizedBody367_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_109 optimizedBody367_384

def optimizedBody367_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_106 optimizedBody367_385

def optimizedBody367_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_108 optimizedBody367_386

def optimizedBody367_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_387

def optimizedBody367_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_388

def optimizedBody367_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_389

def optimizedBody367_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_390

def optimizedBody367_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_107 optimizedBody367_391

def optimizedBody367_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_106 optimizedBody367_392

def optimizedBody367_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_105 optimizedBody367_393

def optimizedBody367_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_394

def optimizedBody367_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_395

def optimizedBody367_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_104 optimizedBody367_396

def optimizedBody367_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_52 optimizedBody367_397

def optimizedBody367_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_51 optimizedBody367_398

def optimizedBody367_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_50 optimizedBody367_399

def optimizedBody367_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_26 optimizedBody367_400

def optimizedBody367_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_25 optimizedBody367_401

def optimizedBody367_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_402

def optimizedBody367_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_49 optimizedBody367_403

def optimizedBody367_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_45 optimizedBody367_404

def optimizedBody367_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_44 optimizedBody367_405

def optimizedBody367_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_406

def optimizedBody367_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_43 optimizedBody367_407

def optimizedBody367_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_408

def optimizedBody367_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_42 optimizedBody367_409

def optimizedBody367_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_41 optimizedBody367_410

def optimizedBody367_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_40 optimizedBody367_411

def optimizedBody367_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_39 optimizedBody367_412

def optimizedBody367_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_413

def optimizedBody367_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_38 optimizedBody367_414

def optimizedBody367_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_17 optimizedBody367_415

def optimizedBody367_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_16 optimizedBody367_416

def optimizedBody367_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_15 optimizedBody367_417

def optimizedBody367_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_14 optimizedBody367_418

def optimizedBody367_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_13 optimizedBody367_419

def optimizedBody367_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_12 optimizedBody367_420

def optimizedBody367_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_421

def optimizedBody367_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_11 optimizedBody367_422

def optimizedBody367_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_7 optimizedBody367_423

def optimizedBody367_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_6 optimizedBody367_424

def optimizedBody367_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_5 optimizedBody367_425

def optimizedBody367_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody367_0 optimizedBody367_426

def oracle367 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 3))) 0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 2)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 22)) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))
                    27 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 25
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 3)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 0)) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6)))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7))) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))
                    3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 2 Flapjack.Spt.ln))
                  22
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    Flapjack.Spt.ln)
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) 25
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)))))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 25))) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 6)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3)) 1 Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3)))))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 24))) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  23
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 1)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 27))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 2))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 2)))
                    22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))))
                  27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 27))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.ls 23)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))) 26
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 (Flapjack.Spt.ls 1)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 25)))))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                  23 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)) 27
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 25)) 26 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 27)) 28
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 25
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 27))))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                  22 Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)) 26
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24)) 25 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 26)) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                  24 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 26))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    Flapjack.Spt.ln)))))))))
def optimized367 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(367, 4, optimizedBody367_427)
theorem optimize367_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source367, oracle367) = optimized367 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize367_eq
end InitECandidate.Proofs.WordStages
