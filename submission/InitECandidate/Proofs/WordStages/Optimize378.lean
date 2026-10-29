import InitECandidate.Proofs.WordStages.Optimize362
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source378
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody378_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 0), (10, 4), (14, 6)]

def optimizedBody378_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 320#64))

def optimizedBody378_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody378_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 328#64))

def optimizedBody378_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 336#64))

def optimizedBody378_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 344#64))

def optimizedBody378_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 12 352#64))

def optimizedBody378_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 12 360#64))

def optimizedBody378_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 12 368#64))

def optimizedBody378_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 12 376#64))

def optimizedBody378_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (52, 10), (46, 16), (48, 18), (50, 20), (54, 22), (56, 12), (58, 4),
    (60, 2), (62, 6), (64, 8), (66, 14)]

def optimizedBody378_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (52, 52), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (4, 58), (0, 60), (6, 62), (8, 64),
    (66, 66)]

def optimizedBody378_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (52, 52), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (4, 58), (0, 60), (6, 62), (8, 64),
    (66, 66)]

def optimizedBody378_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody378_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_12 optimizedBody378_13

def optimizedBody378_15 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody378_11, 378, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody378_14, 378, 3))

def optimizedBody378_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody378_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody378_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody378_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody378_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody378_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody378_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody378_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody378_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_23 optimizedBody378_13

def optimizedBody378_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_22 optimizedBody378_24

def optimizedBody378_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_21 optimizedBody378_25

def optimizedBody378_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_20 optimizedBody378_26

def optimizedBody378_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_19 optimizedBody378_27

def optimizedBody378_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_28

def optimizedBody378_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody378_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) optimizedBody378_29 optimizedBody378_30

def optimizedBody378_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody378_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody378_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551614#64)

def optimizedBody378_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 13451932020343611451#64)

def optimizedBody378_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 13822214165235122497#64)

def optimizedBody378_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (52, 52), (46, 46), (48, 48),
    (50, 50), (54, 54), (56, 56), (66, 66)]

def optimizedBody378_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (6, 46), (8, 48), (10, 50), (4, 54), (56, 56), (66, 66)]

def optimizedBody378_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (6, 46), (8, 48), (10, 50), (4, 54), (56, 56), (66, 66)]

def optimizedBody378_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_39 optimizedBody378_13

def optimizedBody378_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_38, 378, 4)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody378_40, 378, 5))

def optimizedBody378_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody378_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 40#64)

def optimizedBody378_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody378_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_44 optimizedBody378_25

def optimizedBody378_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_45

def optimizedBody378_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_43 optimizedBody378_46

def optimizedBody378_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_47

def optimizedBody378_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody378_48 optimizedBody378_30

def optimizedBody378_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (52, 52), (46, 6), (48, 8), (50, 10), (54, 4), (56, 56), (66, 66)]

def optimizedBody378_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (52, 52), (6, 46), (8, 48), (0, 50), (4, 54), (46, 56), (66, 66)]

def optimizedBody378_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (6, 46), (8, 48), (0, 50), (4, 54), (46, 56), (66, 66)]

def optimizedBody378_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_52 optimizedBody378_13

def optimizedBody378_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_51, 378, 6)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody378_53, 378, 7))

def optimizedBody378_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 41#64)

def optimizedBody378_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_55 optimizedBody378_27

def optimizedBody378_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_56

def optimizedBody378_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) optimizedBody378_57 optimizedBody378_30

def optimizedBody378_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 9223372036854775807#64)

def optimizedBody378_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551615#64)

def optimizedBody378_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 6725966010171805725#64)

def optimizedBody378_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 16134479119472337056#64)

def optimizedBody378_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (52, 52), (46, 46), (66, 66)]

def optimizedBody378_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (52, 52), (0, 46), (66, 66)]

def optimizedBody378_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (0, 46), (66, 66)]

def optimizedBody378_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_65 optimizedBody378_13

def optimizedBody378_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_64, 378, 8)) (some 107) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody378_66, 378, 9))

def optimizedBody378_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody378_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody378_57 optimizedBody378_30

def optimizedBody378_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody378_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 288#64))

def optimizedBody378_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 296#64))

def optimizedBody378_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 304#64))

def optimizedBody378_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 312#64))

def optimizedBody378_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 6), (46, 10), (50, 8), (56, 4), (52, 52), (62, 0), (64, 2), (66, 66)]

def optimizedBody378_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (48, 48), (0, 46), (50, 50), (56, 56), (10, 52), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (0, 46), (50, 50), (56, 56), (10, 52), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_77 optimizedBody378_13

def optimizedBody378_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_76, 378, 10)) (some 101) ([2, 4, 6, 8]) (some (2, optimizedBody378_78, 378, 11))

def optimizedBody378_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody378_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody378_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 64)]

def optimizedBody378_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 27#64)

def optimizedBody378_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody378_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody378_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_84 optimizedBody378_85

def optimizedBody378_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody378_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_87 optimizedBody378_85

def optimizedBody378_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody378_86 optimizedBody378_88

def optimizedBody378_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 28#64)

def optimizedBody378_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody378_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_91 optimizedBody378_23

def optimizedBody378_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_18 optimizedBody378_23

def optimizedBody378_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody378_92 optimizedBody378_93

def optimizedBody378_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody378_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody378_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody378_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (4, 66), (44, 44), (52, 0)]

def optimizedBody378_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 52)]

def optimizedBody378_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 52)]

def optimizedBody378_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_100 optimizedBody378_13

def optimizedBody378_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_99, 378, 12)) (some 371) ([2, 4]) (some (2, optimizedBody378_101, 378, 13))

def optimizedBody378_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551589#64)))

def optimizedBody378_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody378_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_20 optimizedBody378_104

def optimizedBody378_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_103 optimizedBody378_105

def optimizedBody378_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_106

def optimizedBody378_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_107

def optimizedBody378_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_102 optimizedBody378_108

def optimizedBody378_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_98 optimizedBody378_109

def optimizedBody378_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_110

def optimizedBody378_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(48, 48), (50, 50), (56, 56), (10, 10), (62, 62), (66, 66), (46, 44), (64, 0)]

def optimizedBody378_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody378_111 optimizedBody378_112

def optimizedBody378_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (48, 48), (50, 50), (56, 56), (10, 10), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_114

def optimizedBody378_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_115

def optimizedBody378_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_113 optimizedBody378_116

def optimizedBody378_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_97 optimizedBody378_117

def optimizedBody378_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_96 optimizedBody378_118

def optimizedBody378_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_95 optimizedBody378_119

def optimizedBody378_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_120

def optimizedBody378_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_94 optimizedBody378_121

def optimizedBody378_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_90 optimizedBody378_122

def optimizedBody378_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_123

def optimizedBody378_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_124

def optimizedBody378_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_89 optimizedBody378_125

def optimizedBody378_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_83 optimizedBody378_126

def optimizedBody378_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_82 optimizedBody378_127

def optimizedBody378_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_128

def optimizedBody378_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 44), (48, 48), (50, 50), (56, 56), (10, 10), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_130

def optimizedBody378_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 0) optimizedBody378_129 optimizedBody378_131

def optimizedBody378_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody378_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody378_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody378_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody378_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (48, 48), (50, 50), (56, 56),
    (58, 10), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (6, 6), (8, 8), (46, 46), (48, 48), (50, 50), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_139 optimizedBody378_13

def optimizedBody378_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_138, 378, 14)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody378_140, 378, 15))

def optimizedBody378_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 35#64)

def optimizedBody378_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (44, 2), (48, 48), (50, 50),
    (52, 4), (54, 6), (56, 56), (58, 58), (60, 8), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 8), (18, 6), (20, 4), (22, 2), (46, 46), (10, 44), (44, 48), (48, 50), (4, 52), (6, 54), (52, 56), (54, 58),
    (8, 60), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (10, 44), (44, 48), (48, 50), (4, 52), (6, 54), (52, 56), (54, 58), (8, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody378_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_145 optimizedBody378_13

def optimizedBody378_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody378_144, 378, 16)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody378_146, 378, 17))

def optimizedBody378_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody378_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 36#64)

def optimizedBody378_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (44, 44), (48, 48), (50, 0),
    (52, 52), (54, 54), (56, 18), (58, 20), (60, 22), (62, 62), (64, 64), (66, 66)]

def optimizedBody378_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (24, 2), (6, 6), (4, 4), (46, 46), (18, 44), (20, 48), (16, 50), (0, 52), (52, 54), (14, 56), (12, 58),
    (10, 60), (56, 62), (22, 64), (60, 66)]

def optimizedBody378_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (18, 44), (20, 48), (16, 50), (0, 52), (52, 54), (14, 56), (12, 58), (10, 60), (56, 62), (22, 64),
    (60, 66)]

def optimizedBody378_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_152 optimizedBody378_13

def optimizedBody378_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody378_151, 378, 18)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody378_153, 378, 19))

def optimizedBody378_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (44, 18), (48, 20), (50, 0),
    (52, 52), (54, 8), (56, 56), (58, 22), (60, 60), (62, 24), (64, 6), (66, 4)]

def optimizedBody378_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (46, 46), (6, 44), (8, 48), (4, 50), (44, 52), (16, 54), (50, 56), (0, 58), (52, 60), (10, 62), (14, 64),
    (12, 66)]

def optimizedBody378_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 44), (8, 48), (4, 50), (44, 52), (16, 54), (50, 56), (0, 58), (52, 60), (10, 62), (14, 64),
    (12, 66)]

def optimizedBody378_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_157 optimizedBody378_13

def optimizedBody378_159 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody378_156, 378, 20)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody378_158, 378, 21))

def optimizedBody378_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (44, 44), (48, 18), (50, 50),
    (52, 52)]

def optimizedBody378_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (4, 44), (8, 48), (10, 50), (6, 52)]

def optimizedBody378_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (8, 48), (10, 50), (6, 52)]

def optimizedBody378_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_162 optimizedBody378_13

def optimizedBody378_164 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_161, 378, 22)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody378_163, 378, 23))

def optimizedBody378_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody378_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody378_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_165 optimizedBody378_166

def optimizedBody378_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_167

def optimizedBody378_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_136 optimizedBody378_166

def optimizedBody378_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_169

def optimizedBody378_171 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody378_168 optimizedBody378_170

def optimizedBody378_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_92

def optimizedBody378_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_93

def optimizedBody378_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody378_172 optimizedBody378_173

def optimizedBody378_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody378_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody378_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 42#64)

def optimizedBody378_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_177 optimizedBody378_27

def optimizedBody378_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody378_178 optimizedBody378_30

def optimizedBody378_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (46, 46), (48, 0)]

def optimizedBody378_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 46), (14, 48)]

def optimizedBody378_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 46), (14, 48)]

def optimizedBody378_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_182 optimizedBody378_13

def optimizedBody378_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_181, 378, 24)) (some 372) ([2, 4, 6]) (some (2, optimizedBody378_183, 378, 25))

def optimizedBody378_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14)]

def optimizedBody378_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody378_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_185 optimizedBody378_186

def optimizedBody378_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_187

def optimizedBody378_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_184 optimizedBody378_188

def optimizedBody378_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_180 optimizedBody378_189

def optimizedBody378_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_190

def optimizedBody378_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_179 optimizedBody378_191

def optimizedBody378_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_176 optimizedBody378_192

def optimizedBody378_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_175 optimizedBody378_193

def optimizedBody378_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_194

def optimizedBody378_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_174 optimizedBody378_195

def optimizedBody378_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_18 optimizedBody378_196

def optimizedBody378_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_197

def optimizedBody378_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_198

def optimizedBody378_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_171 optimizedBody378_199

def optimizedBody378_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_18 optimizedBody378_200

def optimizedBody378_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_80 optimizedBody378_201

def optimizedBody378_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_202

def optimizedBody378_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_164 optimizedBody378_203

def optimizedBody378_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_160 optimizedBody378_204

def optimizedBody378_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_205

def optimizedBody378_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_159 optimizedBody378_206

def optimizedBody378_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_155 optimizedBody378_207

def optimizedBody378_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_208

def optimizedBody378_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_154 optimizedBody378_209

def optimizedBody378_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_150 optimizedBody378_210

def optimizedBody378_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_149 optimizedBody378_211

def optimizedBody378_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_135 optimizedBody378_212

def optimizedBody378_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_134 optimizedBody378_213

def optimizedBody378_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_133 optimizedBody378_214

def optimizedBody378_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_148 optimizedBody378_215

def optimizedBody378_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_216

def optimizedBody378_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_147 optimizedBody378_217

def optimizedBody378_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_143 optimizedBody378_218

def optimizedBody378_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_142 optimizedBody378_219

def optimizedBody378_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_135 optimizedBody378_220

def optimizedBody378_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_134 optimizedBody378_221

def optimizedBody378_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_133 optimizedBody378_222

def optimizedBody378_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_32 optimizedBody378_223

def optimizedBody378_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_224

def optimizedBody378_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_141 optimizedBody378_225

def optimizedBody378_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_137 optimizedBody378_226

def optimizedBody378_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_87 optimizedBody378_227

def optimizedBody378_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_95 optimizedBody378_228

def optimizedBody378_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_136 optimizedBody378_229

def optimizedBody378_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_135 optimizedBody378_230

def optimizedBody378_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_134 optimizedBody378_231

def optimizedBody378_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_133 optimizedBody378_232

def optimizedBody378_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_17 optimizedBody378_233

def optimizedBody378_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_234

def optimizedBody378_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_132 optimizedBody378_235

def optimizedBody378_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_81 optimizedBody378_236

def optimizedBody378_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_80 optimizedBody378_237

def optimizedBody378_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_238

def optimizedBody378_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (10, 62), (6, 64), (4, 66), (8, 8), (44, 44)]

def optimizedBody378_241 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody378_239 optimizedBody378_240

def optimizedBody378_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 43#64)

def optimizedBody378_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_242 optimizedBody378_27

def optimizedBody378_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_243

def optimizedBody378_245 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody378_244 optimizedBody378_30

def optimizedBody378_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody378_247 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody378_244 optimizedBody378_30

def optimizedBody378_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 44), (46, 0), (48, 10), (50, 6), (52, 4)]

def optimizedBody378_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (10, 48), (46, 50), (4, 52)]

def optimizedBody378_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48), (46, 50), (4, 52)]

def optimizedBody378_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_250 optimizedBody378_13

def optimizedBody378_252 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_249, 378, 26)) (some 373) ([2, 4]) (some (2, optimizedBody378_251, 378, 27))

def optimizedBody378_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (10, 10), (46, 46), (4, 4)]

def optimizedBody378_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_253

def optimizedBody378_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_252 optimizedBody378_254

def optimizedBody378_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_248 optimizedBody378_255

def optimizedBody378_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_256

def optimizedBody378_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (10, 10), (46, 6), (4, 4)]

def optimizedBody378_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_258

def optimizedBody378_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody378_257 optimizedBody378_259

def optimizedBody378_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody378_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 44), (46, 0), (48, 10), (50, 46), (52, 4)]

def optimizedBody378_263 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_249, 378, 28)) (some 374) ([2, 4]) (some (2, optimizedBody378_251, 378, 29))

def optimizedBody378_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_263 optimizedBody378_254

def optimizedBody378_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_262 optimizedBody378_264

def optimizedBody378_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_265

def optimizedBody378_267 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody378_266 optimizedBody378_254

def optimizedBody378_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody378_269 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_249, 378, 30)) (some 375) ([2, 4]) (some (2, optimizedBody378_251, 378, 31))

def optimizedBody378_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_269 optimizedBody378_254

def optimizedBody378_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_262 optimizedBody378_270

def optimizedBody378_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_271

def optimizedBody378_273 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody378_272 optimizedBody378_254

def optimizedBody378_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody378_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 44), (46, 46)]

def optimizedBody378_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody378_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody378_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_277 optimizedBody378_13

def optimizedBody378_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody378_276, 378, 32)) (some 376) ([2, 4]) (some (2, optimizedBody378_278, 378, 33))

def optimizedBody378_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody378_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_280

def optimizedBody378_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_279 optimizedBody378_281

def optimizedBody378_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_275 optimizedBody378_282

def optimizedBody378_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_283

def optimizedBody378_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 46)]

def optimizedBody378_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_285

def optimizedBody378_287 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody378_284 optimizedBody378_286

def optimizedBody378_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody378_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody378_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_288 optimizedBody378_289

def optimizedBody378_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_290

def optimizedBody378_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_287 optimizedBody378_291

def optimizedBody378_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_274 optimizedBody378_292

def optimizedBody378_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_293

def optimizedBody378_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_294

def optimizedBody378_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_273 optimizedBody378_295

def optimizedBody378_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_268 optimizedBody378_296

def optimizedBody378_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_297

def optimizedBody378_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_298

def optimizedBody378_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_267 optimizedBody378_299

def optimizedBody378_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_261 optimizedBody378_300

def optimizedBody378_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_301

def optimizedBody378_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_302

def optimizedBody378_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_260 optimizedBody378_303

def optimizedBody378_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_91 optimizedBody378_304

def optimizedBody378_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_305

def optimizedBody378_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_306

def optimizedBody378_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_307

def optimizedBody378_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_247 optimizedBody378_308

def optimizedBody378_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_246 optimizedBody378_309

def optimizedBody378_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_91 optimizedBody378_310

def optimizedBody378_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_311

def optimizedBody378_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_312

def optimizedBody378_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_245 optimizedBody378_313

def optimizedBody378_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_18 optimizedBody378_314

def optimizedBody378_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_80 optimizedBody378_315

def optimizedBody378_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_316

def optimizedBody378_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_317

def optimizedBody378_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_241 optimizedBody378_318

def optimizedBody378_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_18 optimizedBody378_319

def optimizedBody378_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_320

def optimizedBody378_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_321

def optimizedBody378_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_79 optimizedBody378_322

def optimizedBody378_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_75 optimizedBody378_323

def optimizedBody378_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_74 optimizedBody378_324

def optimizedBody378_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_325

def optimizedBody378_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_73 optimizedBody378_326

def optimizedBody378_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_327

def optimizedBody378_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_72 optimizedBody378_328

def optimizedBody378_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_329

def optimizedBody378_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_71 optimizedBody378_330

def optimizedBody378_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_331

def optimizedBody378_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_70 optimizedBody378_332

def optimizedBody378_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_333

def optimizedBody378_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_334

def optimizedBody378_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_335

def optimizedBody378_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_69 optimizedBody378_336

def optimizedBody378_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_18 optimizedBody378_337

def optimizedBody378_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_68 optimizedBody378_338

def optimizedBody378_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_339

def optimizedBody378_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_67 optimizedBody378_340

def optimizedBody378_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_63 optimizedBody378_341

def optimizedBody378_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_62 optimizedBody378_342

def optimizedBody378_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_61 optimizedBody378_343

def optimizedBody378_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_60 optimizedBody378_344

def optimizedBody378_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_59 optimizedBody378_345

def optimizedBody378_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_32 optimizedBody378_346

def optimizedBody378_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_347

def optimizedBody378_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_348

def optimizedBody378_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_58 optimizedBody378_349

def optimizedBody378_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_18 optimizedBody378_350

def optimizedBody378_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_17 optimizedBody378_351

def optimizedBody378_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_352

def optimizedBody378_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_54 optimizedBody378_353

def optimizedBody378_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_50 optimizedBody378_354

def optimizedBody378_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_355

def optimizedBody378_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_356

def optimizedBody378_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_49 optimizedBody378_357

def optimizedBody378_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_18 optimizedBody378_358

def optimizedBody378_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_42 optimizedBody378_359

def optimizedBody378_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_360

def optimizedBody378_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_41 optimizedBody378_361

def optimizedBody378_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_37 optimizedBody378_362

def optimizedBody378_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_36 optimizedBody378_363

def optimizedBody378_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_35 optimizedBody378_364

def optimizedBody378_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_34 optimizedBody378_365

def optimizedBody378_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_33 optimizedBody378_366

def optimizedBody378_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_32 optimizedBody378_367

def optimizedBody378_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_368

def optimizedBody378_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_369

def optimizedBody378_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_31 optimizedBody378_370

def optimizedBody378_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_18 optimizedBody378_371

def optimizedBody378_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_17 optimizedBody378_372

def optimizedBody378_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_16 optimizedBody378_373

def optimizedBody378_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_15 optimizedBody378_374

def optimizedBody378_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_10 optimizedBody378_375

def optimizedBody378_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_9 optimizedBody378_376

def optimizedBody378_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_2 optimizedBody378_377

def optimizedBody378_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_8 optimizedBody378_378

def optimizedBody378_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_2 optimizedBody378_379

def optimizedBody378_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_7 optimizedBody378_380

def optimizedBody378_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_2 optimizedBody378_381

def optimizedBody378_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_6 optimizedBody378_382

def optimizedBody378_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_2 optimizedBody378_383

def optimizedBody378_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_5 optimizedBody378_384

def optimizedBody378_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_2 optimizedBody378_385

def optimizedBody378_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_4 optimizedBody378_386

def optimizedBody378_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_2 optimizedBody378_387

def optimizedBody378_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_3 optimizedBody378_388

def optimizedBody378_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_2 optimizedBody378_389

def optimizedBody378_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_1 optimizedBody378_390

def optimizedBody378_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody378_0 optimizedBody378_391

def oracle378 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 4
                      (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)))
                    4 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  10 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.ls 4)) 0 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22)) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  8
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 31)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 4 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 0 Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 3 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 4))))
                  9
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1))) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))) 1
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 28
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 31)))
                  11
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 3))) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 2 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)))
                    23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 25)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 0 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 33 (Flapjack.Spt.ls 0))))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                  6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 4
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 33
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 9))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 29)) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 3 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 4))))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 26 Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  6
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1))) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 1 Flapjack.Spt.ln))
                  6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 24)) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 33
                    (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 26 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 1 (Flapjack.Spt.ls 33)))
                  6 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1)))
                    26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.ls 23))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 30
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 31)) 23 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 32 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 33)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) Flapjack.Spt.ln) 28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 28)) 22 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 33 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 33
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 29)) 26 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 31
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 32)) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 33
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 33)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))))))))
def optimized378 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(378, 4, optimizedBody378_392)
theorem optimize378_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source378, oracle378) = optimized378 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize378_eq
end InitECandidate.Proofs.WordStages
