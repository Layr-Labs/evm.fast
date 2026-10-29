import InitECandidate.Proofs.WordStages.Optimize778
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source794
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody794_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0), (46, 4), (50, 2), (48, 6)]

def optimizedBody794_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (46, 46), (50, 50), (4, 48)]

def optimizedBody794_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (46, 46), (50, 50), (4, 48)]

def optimizedBody794_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody794_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_2 optimizedBody794_3

def optimizedBody794_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody794_1, 794, 2)) (some 767) ([2]) (some (2, optimizedBody794_4, 794, 3))

def optimizedBody794_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody794_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody794_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody794_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody794_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody794_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody794_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_10 optimizedBody794_11

def optimizedBody794_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_9 optimizedBody794_12

def optimizedBody794_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_13

def optimizedBody794_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody794_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody794_14 optimizedBody794_15

def optimizedBody794_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6), (46, 46), (50, 50), (56, 4)]

def optimizedBody794_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody794_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody794_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_19 optimizedBody794_3

def optimizedBody794_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody794_18, 794, 4)) (some 779) ([2]) (some (2, optimizedBody794_20, 794, 5))

def optimizedBody794_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody794_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_10 optimizedBody794_22

def optimizedBody794_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_9 optimizedBody794_23

def optimizedBody794_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_24

def optimizedBody794_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody794_25 optimizedBody794_15

def optimizedBody794_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 4), (46, 46), (50, 50), (56, 56)]

def optimizedBody794_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody794_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody794_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_29 optimizedBody794_3

def optimizedBody794_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody794_28, 794, 6)) (some 69) ([]) (some (2, optimizedBody794_30, 794, 7))

def optimizedBody794_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody794_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (54, 0), (56, 56)]

def optimizedBody794_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody794_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody794_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_35 optimizedBody794_3

def optimizedBody794_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody794_34, 794, 8)) (some 68) ([2]) (some (2, optimizedBody794_36, 794, 9))

def optimizedBody794_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 192#64)

def optimizedBody794_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody794_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody794_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody794_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_41 optimizedBody794_3

def optimizedBody794_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody794_40, 794, 10)) (some 68) ([2]) (some (2, optimizedBody794_42, 794, 11))

def optimizedBody794_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody794_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody794_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (46, 48), (48, 50), (0, 52), (52, 54), (54, 56)]

def optimizedBody794_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50), (0, 52), (52, 54), (54, 56)]

def optimizedBody794_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_47 optimizedBody794_3

def optimizedBody794_49 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody794_46, 794, 12)) (some 68) ([2]) (some (2, optimizedBody794_48, 794, 13))

def optimizedBody794_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 6)]

def optimizedBody794_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56)]

def optimizedBody794_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56)]

def optimizedBody794_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_52 optimizedBody794_3

def optimizedBody794_54 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody794_51, 794, 14)) (some 773) ([2, 4]) (some (2, optimizedBody794_53, 794, 15))

def optimizedBody794_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody794_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (28, 46), (46, 48), (0, 50), (48, 52), (30, 54)]

def optimizedBody794_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (28, 46), (46, 48), (0, 50), (48, 52), (30, 54)]

def optimizedBody794_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_57 optimizedBody794_3

def optimizedBody794_59 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody794_56, 794, 16)) (some 785) ([2, 4]) (some (2, optimizedBody794_58, 794, 17))

def optimizedBody794_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody794_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody794_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody794_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody794_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody794_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody794_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody794_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody794_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody794_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody794_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody794_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody794_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 30), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (44, 44), (46, 46), (48, 48), (50, 30)]

def optimizedBody794_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (6, 50)]

def optimizedBody794_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (6, 50)]

def optimizedBody794_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_74 optimizedBody794_3

def optimizedBody794_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody794_73, 794, 18)) (some 793) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28]) (some (2, optimizedBody794_75, 794, 19))

def optimizedBody794_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody794_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody794_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody794_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_79 optimizedBody794_3

def optimizedBody794_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody794_78, 794, 20)) (some 758) ([2, 4, 6]) (some (2, optimizedBody794_80, 794, 21))

def optimizedBody794_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody794_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody794_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody794_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_84 optimizedBody794_3

def optimizedBody794_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody794_83, 794, 22)) (some 70) ([2]) (some (2, optimizedBody794_85, 794, 23))

def optimizedBody794_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody794_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_10 optimizedBody794_87

def optimizedBody794_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_9 optimizedBody794_88

def optimizedBody794_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_89

def optimizedBody794_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_86 optimizedBody794_90

def optimizedBody794_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_82 optimizedBody794_91

def optimizedBody794_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_92

def optimizedBody794_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_81 optimizedBody794_93

def optimizedBody794_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_77 optimizedBody794_94

def optimizedBody794_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_95

def optimizedBody794_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_76 optimizedBody794_96

def optimizedBody794_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_72 optimizedBody794_97

def optimizedBody794_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_71 optimizedBody794_98

def optimizedBody794_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_99

def optimizedBody794_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_70 optimizedBody794_100

def optimizedBody794_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_101

def optimizedBody794_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_69 optimizedBody794_102

def optimizedBody794_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_103

def optimizedBody794_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_68 optimizedBody794_104

def optimizedBody794_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_105

def optimizedBody794_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_67 optimizedBody794_106

def optimizedBody794_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_107

def optimizedBody794_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_66 optimizedBody794_108

def optimizedBody794_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_109

def optimizedBody794_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_65 optimizedBody794_110

def optimizedBody794_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_111

def optimizedBody794_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_64 optimizedBody794_112

def optimizedBody794_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_113

def optimizedBody794_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_63 optimizedBody794_114

def optimizedBody794_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_115

def optimizedBody794_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_62 optimizedBody794_116

def optimizedBody794_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_117

def optimizedBody794_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_61 optimizedBody794_118

def optimizedBody794_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_119

def optimizedBody794_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_60 optimizedBody794_120

def optimizedBody794_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_121

def optimizedBody794_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_122

def optimizedBody794_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_59 optimizedBody794_123

def optimizedBody794_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_55 optimizedBody794_124

def optimizedBody794_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_125

def optimizedBody794_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_54 optimizedBody794_126

def optimizedBody794_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_50 optimizedBody794_127

def optimizedBody794_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_128

def optimizedBody794_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_49 optimizedBody794_129

def optimizedBody794_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_45 optimizedBody794_130

def optimizedBody794_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_44 optimizedBody794_131

def optimizedBody794_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_132

def optimizedBody794_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_43 optimizedBody794_133

def optimizedBody794_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_39 optimizedBody794_134

def optimizedBody794_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_38 optimizedBody794_135

def optimizedBody794_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_136

def optimizedBody794_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_37 optimizedBody794_137

def optimizedBody794_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_33 optimizedBody794_138

def optimizedBody794_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_32 optimizedBody794_139

def optimizedBody794_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_140

def optimizedBody794_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_31 optimizedBody794_141

def optimizedBody794_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_27 optimizedBody794_142

def optimizedBody794_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_143

def optimizedBody794_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_144

def optimizedBody794_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_26 optimizedBody794_145

def optimizedBody794_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_8 optimizedBody794_146

def optimizedBody794_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_147

def optimizedBody794_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_148

def optimizedBody794_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_21 optimizedBody794_149

def optimizedBody794_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_17 optimizedBody794_150

def optimizedBody794_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_151

def optimizedBody794_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_152

def optimizedBody794_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_16 optimizedBody794_153

def optimizedBody794_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_8 optimizedBody794_154

def optimizedBody794_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_7 optimizedBody794_155

def optimizedBody794_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_6 optimizedBody794_156

def optimizedBody794_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_5 optimizedBody794_157

def optimizedBody794_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody794_0 optimizedBody794_158

def oracle794 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 27)) 25
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 28)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 27)))
                3 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 1 (Flapjack.Spt.ls 25)) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 22 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 28
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 15)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 28)) 25
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 28)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28 Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 22
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 24
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))))))
def optimized794 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(794, 4, optimizedBody794_159)
theorem optimize794_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source794, oracle794) = optimized794 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize794_eq
end InitECandidate.Proofs.WordStages
