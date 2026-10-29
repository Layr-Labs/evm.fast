import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashComputation
import InitECandidate.Proofs.WordStages.Source65
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.WordStages.Monolithic65
def optimizedBody65_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody65_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody65_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody65_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody65_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_2 optimizedBody65_3

def optimizedBody65_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 2)) (some 67) ([]) (some (2, optimizedBody65_4, 65, 3))

def optimizedBody65_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody65_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 4)) (some 149) ([]) (some (2, optimizedBody65_4, 65, 5))

def optimizedBody65_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 6)) (some 155) ([]) (some (2, optimizedBody65_4, 65, 7))

def optimizedBody65_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 8)) (some 240) ([]) (some (2, optimizedBody65_4, 65, 9))

def optimizedBody65_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 10)) (some 289) ([]) (some (2, optimizedBody65_4, 65, 11))

def optimizedBody65_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 12)) (some 98) ([]) (some (2, optimizedBody65_4, 65, 13))

def optimizedBody65_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 14)) (some 201) ([]) (some (2, optimizedBody65_4, 65, 15))

def optimizedBody65_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 16)) (some 664) ([]) (some (2, optimizedBody65_4, 65, 17))

def optimizedBody65_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 18)) (some 830) ([]) (some (2, optimizedBody65_4, 65, 19))

def optimizedBody65_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 20)) (some 628) ([]) (some (2, optimizedBody65_4, 65, 21))

def optimizedBody65_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 22)) (some 634) ([]) (some (2, optimizedBody65_4, 65, 23))

def optimizedBody65_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 24)) (some 286) ([]) (some (2, optimizedBody65_4, 65, 25))

def optimizedBody65_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 26)) (some 586) ([]) (some (2, optimizedBody65_4, 65, 27))

def optimizedBody65_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 28)) (some 864) ([]) (some (2, optimizedBody65_4, 65, 29))

def optimizedBody65_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44)]

def optimizedBody65_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_20, 65, 30)) (some 90) ([]) (some (2, optimizedBody65_4, 65, 31))

def optimizedBody65_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody65_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (52, 4)]

def optimizedBody65_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (52, 52)]

def optimizedBody65_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52)]

def optimizedBody65_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_25 optimizedBody65_3

def optimizedBody65_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_24, 65, 32)) (some 68) ([2]) (some (2, optimizedBody65_26, 65, 33))

def optimizedBody65_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody65_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (52, 52)]

def optimizedBody65_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody65_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody65_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_31 optimizedBody65_3

def optimizedBody65_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_30, 65, 34)) (some 68) ([2]) (some (2, optimizedBody65_32, 65, 35))

def optimizedBody65_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody65_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody65_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 2), (52, 52)]

def optimizedBody65_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (48, 50), (4, 52)]

def optimizedBody65_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (4, 52)]

def optimizedBody65_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_38 optimizedBody65_3

def optimizedBody65_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_37, 65, 36)) (some 78) ([2, 4]) (some (2, optimizedBody65_39, 65, 37))

def optimizedBody65_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48)]

def optimizedBody65_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody65_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody65_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody65_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_44 optimizedBody65_3

def optimizedBody65_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 12 (Flapjack.WordStore.temp 0#5)

def optimizedBody65_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody65_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody65_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody65_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody65_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 2), (48, 12)]

def optimizedBody65_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody65_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody65_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_53 optimizedBody65_3

def optimizedBody65_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_52, 65, 39)) (some 270) ([2, 4, 6, 8, 10]) (some (2, optimizedBody65_54, 65, 40))

def optimizedBody65_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (0, 0)]

def optimizedBody65_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody65_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody65_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody65_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody65_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody65_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody65_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 41)) (some 91) ([2, 4]) (some (2, optimizedBody65_4, 65, 42))

def optimizedBody65_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.currHeap

def optimizedBody65_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody65_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.currHeap

def optimizedBody65_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody65_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 97#8, 108#8, 116#8]) 2 4 6 8
  (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln,
    Flapjack.Spt.ln)

def optimizedBody65_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody65_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody65_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody65_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody65_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_71 optimizedBody65_72

def optimizedBody65_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_70 optimizedBody65_73

def optimizedBody65_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_69 optimizedBody65_74

def optimizedBody65_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_68 optimizedBody65_75

def optimizedBody65_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_67 optimizedBody65_76

def optimizedBody65_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_49 optimizedBody65_77

def optimizedBody65_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_66 optimizedBody65_78

def optimizedBody65_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_65 optimizedBody65_79

def optimizedBody65_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_64 optimizedBody65_80

def optimizedBody65_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_81

def optimizedBody65_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_63 optimizedBody65_82

def optimizedBody65_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_62 optimizedBody65_83

def optimizedBody65_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_61 optimizedBody65_84

def optimizedBody65_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_60 optimizedBody65_85

def optimizedBody65_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_59 optimizedBody65_86

def optimizedBody65_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_58 optimizedBody65_87

def optimizedBody65_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_57 optimizedBody65_88

def optimizedBody65_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_56 optimizedBody65_89

def optimizedBody65_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_90

def optimizedBody65_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_55 optimizedBody65_91

def optimizedBody65_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_51 optimizedBody65_92

def optimizedBody65_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_50 optimizedBody65_93

def optimizedBody65_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_49 optimizedBody65_94

def optimizedBody65_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_48 optimizedBody65_95

def optimizedBody65_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_47 optimizedBody65_96

def optimizedBody65_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_46 optimizedBody65_97

def optimizedBody65_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_98

def optimizedBody65_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 2#64) optimizedBody65_45 optimizedBody65_99

def optimizedBody65_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (46, 8)]

def optimizedBody65_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody65_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_101 optimizedBody65_102

def optimizedBody65_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_103

def optimizedBody65_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_100 optimizedBody65_104

def optimizedBody65_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_43 optimizedBody65_105

def optimizedBody65_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_42, 65, 38)) (some 258) ([2, 4]) (some (2, optimizedBody65_106, 65, 43))

def optimizedBody65_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0)]

def optimizedBody65_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody65_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody65_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_110 optimizedBody65_3

def optimizedBody65_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_109, 65, 44)) (some 68) ([2]) (some (2, optimizedBody65_111, 65, 45))

def optimizedBody65_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 0), (50, 4)]

def optimizedBody65_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody65_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody65_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_115 optimizedBody65_3

def optimizedBody65_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_114, 65, 46)) (some 269) ([2, 4]) (some (2, optimizedBody65_116, 65, 47))

def optimizedBody65_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody65_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (8, 46), (0, 48), (4, 50)]

def optimizedBody65_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (0, 48), (4, 50)]

def optimizedBody65_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_120 optimizedBody65_3

def optimizedBody65_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_119, 65, 48)) (some 889) ([2]) (some (2, optimizedBody65_121, 65, 49))

def optimizedBody65_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6), (4, 4), (2, 8)]

def optimizedBody65_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody65_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 5377#64)

def optimizedBody65_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 2)]

def optimizedBody65_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody65_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody65_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_128 optimizedBody65_3

def optimizedBody65_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_127, 65, 50)) (some 270) ([2, 4, 6, 8, 10]) (some (2, optimizedBody65_129, 65, 51))

def optimizedBody65_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (0, 0)]

def optimizedBody65_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody65_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody65_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody65_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709550872#64))

def optimizedBody65_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody65_1, 65, 52)) (some 91) ([2, 4]) (some (2, optimizedBody65_4, 65, 53))

def optimizedBody65_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody65_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody65_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody65_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_139 optimizedBody65_73

def optimizedBody65_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_69 optimizedBody65_140

def optimizedBody65_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_68 optimizedBody65_141

def optimizedBody65_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_138 optimizedBody65_142

def optimizedBody65_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_65 optimizedBody65_143

def optimizedBody65_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_49 optimizedBody65_144

def optimizedBody65_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_137 optimizedBody65_145

def optimizedBody65_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_66 optimizedBody65_146

def optimizedBody65_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_147

def optimizedBody65_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_136 optimizedBody65_148

def optimizedBody65_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_62 optimizedBody65_149

def optimizedBody65_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_61 optimizedBody65_150

def optimizedBody65_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_60 optimizedBody65_151

def optimizedBody65_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_59 optimizedBody65_152

def optimizedBody65_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_135 optimizedBody65_153

def optimizedBody65_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_134 optimizedBody65_154

def optimizedBody65_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_133 optimizedBody65_155

def optimizedBody65_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_132 optimizedBody65_156

def optimizedBody65_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_57 optimizedBody65_157

def optimizedBody65_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_131 optimizedBody65_158

def optimizedBody65_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_159

def optimizedBody65_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_130 optimizedBody65_160

def optimizedBody65_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_126 optimizedBody65_161

def optimizedBody65_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_125 optimizedBody65_162

def optimizedBody65_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_124 optimizedBody65_163

def optimizedBody65_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_123 optimizedBody65_164

def optimizedBody65_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_165

def optimizedBody65_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_122 optimizedBody65_166

def optimizedBody65_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_118 optimizedBody65_167

def optimizedBody65_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_168

def optimizedBody65_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_117 optimizedBody65_169

def optimizedBody65_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_113 optimizedBody65_170

def optimizedBody65_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_171

def optimizedBody65_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_112 optimizedBody65_172

def optimizedBody65_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_108 optimizedBody65_173

def optimizedBody65_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_28 optimizedBody65_174

def optimizedBody65_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_175

def optimizedBody65_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_107 optimizedBody65_176

def optimizedBody65_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_41 optimizedBody65_177

def optimizedBody65_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_178

def optimizedBody65_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_40 optimizedBody65_179

def optimizedBody65_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_36 optimizedBody65_180

def optimizedBody65_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_35 optimizedBody65_181

def optimizedBody65_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_34 optimizedBody65_182

def optimizedBody65_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_183

def optimizedBody65_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_33 optimizedBody65_184

def optimizedBody65_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_29 optimizedBody65_185

def optimizedBody65_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_28 optimizedBody65_186

def optimizedBody65_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_187

def optimizedBody65_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_27 optimizedBody65_188

def optimizedBody65_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_23 optimizedBody65_189

def optimizedBody65_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_22 optimizedBody65_190

def optimizedBody65_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_191

def optimizedBody65_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_21 optimizedBody65_192

def optimizedBody65_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_193

def optimizedBody65_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_194

def optimizedBody65_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_19 optimizedBody65_195

def optimizedBody65_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_196

def optimizedBody65_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_197

def optimizedBody65_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_18 optimizedBody65_198

def optimizedBody65_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_199

def optimizedBody65_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_200

def optimizedBody65_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_17 optimizedBody65_201

def optimizedBody65_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_202

def optimizedBody65_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_203

def optimizedBody65_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_16 optimizedBody65_204

def optimizedBody65_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_205

def optimizedBody65_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_206

def optimizedBody65_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_15 optimizedBody65_207

def optimizedBody65_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_208

def optimizedBody65_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_209

def optimizedBody65_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_14 optimizedBody65_210

def optimizedBody65_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_211

def optimizedBody65_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_212

def optimizedBody65_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_13 optimizedBody65_213

def optimizedBody65_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_214

def optimizedBody65_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_215

def optimizedBody65_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_12 optimizedBody65_216

def optimizedBody65_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_217

def optimizedBody65_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_218

def optimizedBody65_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_11 optimizedBody65_219

def optimizedBody65_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_220

def optimizedBody65_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_221

def optimizedBody65_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_10 optimizedBody65_222

def optimizedBody65_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_223

def optimizedBody65_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_224

def optimizedBody65_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_9 optimizedBody65_225

def optimizedBody65_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_226

def optimizedBody65_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_227

def optimizedBody65_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_8 optimizedBody65_228

def optimizedBody65_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_229

def optimizedBody65_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_230

def optimizedBody65_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_7 optimizedBody65_231

def optimizedBody65_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_1 optimizedBody65_232

def optimizedBody65_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_6 optimizedBody65_233

def optimizedBody65_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_5 optimizedBody65_234

def optimizedBody65_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody65_0 optimizedBody65_235

def oracle65 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 3)))))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                22 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                22 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 22))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 22
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))))))
def optimized65 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(65, 1, optimizedBody65_236)
theorem optimize65_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source65, oracle65) = optimized65 := by
  kernel_rfl
#print axioms optimize65_eq
end InitECandidate.Proofs.WordStages.Monolithic65
