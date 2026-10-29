import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles278
def optimizedBody278_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody278_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1024#64)

def optimizedBody278_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody278_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (8, 46)]

def optimizedBody278_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46)]

def optimizedBody278_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody278_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_4 optimizedBody278_5

def optimizedBody278_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_3, 278, 2)) (some 68) ([2]) (some (2, optimizedBody278_6, 278, 3))

def optimizedBody278_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody278_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody278_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody278_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody278_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody278_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody278_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 2)]

def optimizedBody278_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (6, 50)]

def optimizedBody278_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (6, 50)]

def optimizedBody278_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_16 optimizedBody278_5

def optimizedBody278_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 4)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 5))

def optimizedBody278_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody278_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody278_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody278_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody278_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 2)]

def optimizedBody278_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 6)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 7))

def optimizedBody278_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody278_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody278_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 8)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 9))

def optimizedBody278_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody278_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 10)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 11))

def optimizedBody278_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody278_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 12)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 13))

def optimizedBody278_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody278_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 14)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 15))

def optimizedBody278_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody278_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 256#64)

def optimizedBody278_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 16)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 17))

def optimizedBody278_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody278_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody278_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody278_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody278_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 0), (50, 2)]

def optimizedBody278_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 18)) (some 277) ([2, 4, 6, 8, 10]) (some (2, optimizedBody278_17, 278, 19))

def optimizedBody278_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody278_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 2)]

def optimizedBody278_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 20)) (some 177) ([2, 4]) (some (2, optimizedBody278_17, 278, 21))

def optimizedBody278_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 104#64))

def optimizedBody278_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 22)) (some 177) ([2, 4]) (some (2, optimizedBody278_17, 278, 23))

def optimizedBody278_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody278_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 24)) (some 177) ([2, 4]) (some (2, optimizedBody278_17, 278, 25))

def optimizedBody278_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody278_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 26)) (some 177) ([2, 4]) (some (2, optimizedBody278_17, 278, 27))

def optimizedBody278_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody278_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody278_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 28)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 29))

def optimizedBody278_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 144#64))

def optimizedBody278_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 30)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 31))

def optimizedBody278_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody278_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def optimizedBody278_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 32)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 33))

def optimizedBody278_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody278_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody278_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody278_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 184#64))

def optimizedBody278_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 34)) (some 277) ([2, 4, 6, 8, 10]) (some (2, optimizedBody278_17, 278, 35))

def optimizedBody278_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 192#64))

def optimizedBody278_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 36)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 37))

def optimizedBody278_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 200#64))

def optimizedBody278_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 38)) (some 177) ([2, 4]) (some (2, optimizedBody278_17, 278, 39))

def optimizedBody278_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 208#64))

def optimizedBody278_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 40)) (some 177) ([2, 4]) (some (2, optimizedBody278_17, 278, 41))

def optimizedBody278_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 216#64))

def optimizedBody278_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 42)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 43))

def optimizedBody278_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 224#64))

def optimizedBody278_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 44)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 45))

def optimizedBody278_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody278_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody278_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 232#64))

def optimizedBody278_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_15, 278, 46)) (some 176) ([2, 4, 6]) (some (2, optimizedBody278_17, 278, 47))

def optimizedBody278_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 240#64))

def optimizedBody278_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2)]

def optimizedBody278_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody278_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody278_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_82 optimizedBody278_5

def optimizedBody278_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_81, 278, 48)) (some 177) ([2, 4]) (some (2, optimizedBody278_83, 278, 49))

def optimizedBody278_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (2, 2)]

def optimizedBody278_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_85

def optimizedBody278_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_86

def optimizedBody278_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_87

def optimizedBody278_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_84 optimizedBody278_88

def optimizedBody278_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_80 optimizedBody278_89

def optimizedBody278_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_79 optimizedBody278_90

def optimizedBody278_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_91

def optimizedBody278_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_92

def optimizedBody278_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_93

def optimizedBody278_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_94

def optimizedBody278_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_78 optimizedBody278_95

def optimizedBody278_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_96

def optimizedBody278_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_97

def optimizedBody278_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_77 optimizedBody278_98

def optimizedBody278_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_99

def optimizedBody278_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_100

def optimizedBody278_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (2, 2)]

def optimizedBody278_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_102

def optimizedBody278_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody278_101 optimizedBody278_103

def optimizedBody278_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody278_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody278_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2), (48, 0)]

def optimizedBody278_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody278_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody278_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_109 optimizedBody278_5

def optimizedBody278_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_108, 278, 50)) (some 180) ([2]) (some (2, optimizedBody278_110, 278, 51))

def optimizedBody278_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody278_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody278_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody278_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4), (48, 2), (50, 0)]

def optimizedBody278_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody278_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody278_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_117 optimizedBody278_5

def optimizedBody278_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody278_116, 278, 52)) (some 178) ([2, 4]) (some (2, optimizedBody278_118, 278, 53))

def optimizedBody278_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4), (0, 0)]

def optimizedBody278_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody278_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0), (4, 4)]

def optimizedBody278_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody278_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_122 optimizedBody278_123

def optimizedBody278_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_121 optimizedBody278_124

def optimizedBody278_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_120 optimizedBody278_125

def optimizedBody278_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_126

def optimizedBody278_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_119 optimizedBody278_127

def optimizedBody278_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_115 optimizedBody278_128

def optimizedBody278_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_114 optimizedBody278_129

def optimizedBody278_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_9 optimizedBody278_130

def optimizedBody278_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_113 optimizedBody278_131

def optimizedBody278_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_112 optimizedBody278_132

def optimizedBody278_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_133

def optimizedBody278_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_111 optimizedBody278_134

def optimizedBody278_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_107 optimizedBody278_135

def optimizedBody278_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_106 optimizedBody278_136

def optimizedBody278_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_105 optimizedBody278_137

def optimizedBody278_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_138

def optimizedBody278_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_139

def optimizedBody278_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_104 optimizedBody278_140

def optimizedBody278_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_76 optimizedBody278_141

def optimizedBody278_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_75 optimizedBody278_142

def optimizedBody278_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_143

def optimizedBody278_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_144

def optimizedBody278_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_145

def optimizedBody278_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_146

def optimizedBody278_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_74 optimizedBody278_147

def optimizedBody278_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_148

def optimizedBody278_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_149

def optimizedBody278_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_73 optimizedBody278_150

def optimizedBody278_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_151

def optimizedBody278_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_152

def optimizedBody278_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_153

def optimizedBody278_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_154

def optimizedBody278_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_72 optimizedBody278_155

def optimizedBody278_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_156

def optimizedBody278_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_157

def optimizedBody278_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_71 optimizedBody278_158

def optimizedBody278_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_159

def optimizedBody278_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_160

def optimizedBody278_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_161

def optimizedBody278_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_162

def optimizedBody278_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_70 optimizedBody278_163

def optimizedBody278_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_44 optimizedBody278_164

def optimizedBody278_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_69 optimizedBody278_165

def optimizedBody278_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_166

def optimizedBody278_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_167

def optimizedBody278_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_168

def optimizedBody278_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_169

def optimizedBody278_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_68 optimizedBody278_170

def optimizedBody278_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_44 optimizedBody278_171

def optimizedBody278_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_67 optimizedBody278_172

def optimizedBody278_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_173

def optimizedBody278_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_174

def optimizedBody278_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_175

def optimizedBody278_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_176

def optimizedBody278_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_66 optimizedBody278_177

def optimizedBody278_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_178

def optimizedBody278_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_179

def optimizedBody278_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_65 optimizedBody278_180

def optimizedBody278_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_181

def optimizedBody278_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_182

def optimizedBody278_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_183

def optimizedBody278_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_184

def optimizedBody278_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_64 optimizedBody278_185

def optimizedBody278_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_41 optimizedBody278_186

def optimizedBody278_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_63 optimizedBody278_187

def optimizedBody278_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_9 optimizedBody278_188

def optimizedBody278_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_62 optimizedBody278_189

def optimizedBody278_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_9 optimizedBody278_190

def optimizedBody278_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_61 optimizedBody278_191

def optimizedBody278_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_9 optimizedBody278_192

def optimizedBody278_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_60 optimizedBody278_193

def optimizedBody278_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_194

def optimizedBody278_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_195

def optimizedBody278_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_196

def optimizedBody278_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_197

def optimizedBody278_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_59 optimizedBody278_198

def optimizedBody278_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_199

def optimizedBody278_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_58 optimizedBody278_200

def optimizedBody278_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_57 optimizedBody278_201

def optimizedBody278_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_202

def optimizedBody278_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_203

def optimizedBody278_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_204

def optimizedBody278_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_205

def optimizedBody278_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_56 optimizedBody278_206

def optimizedBody278_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_207

def optimizedBody278_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_208

def optimizedBody278_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_55 optimizedBody278_209

def optimizedBody278_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_210

def optimizedBody278_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_211

def optimizedBody278_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_212

def optimizedBody278_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_213

def optimizedBody278_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_54 optimizedBody278_214

def optimizedBody278_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_215

def optimizedBody278_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_53 optimizedBody278_216

def optimizedBody278_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_9 optimizedBody278_217

def optimizedBody278_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_52 optimizedBody278_218

def optimizedBody278_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_219

def optimizedBody278_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_220

def optimizedBody278_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_221

def optimizedBody278_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_222

def optimizedBody278_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_51 optimizedBody278_223

def optimizedBody278_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_44 optimizedBody278_224

def optimizedBody278_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_50 optimizedBody278_225

def optimizedBody278_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_226

def optimizedBody278_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_227

def optimizedBody278_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_228

def optimizedBody278_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_229

def optimizedBody278_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_49 optimizedBody278_230

def optimizedBody278_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_44 optimizedBody278_231

def optimizedBody278_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_48 optimizedBody278_232

def optimizedBody278_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_233

def optimizedBody278_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_234

def optimizedBody278_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_235

def optimizedBody278_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_236

def optimizedBody278_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_47 optimizedBody278_237

def optimizedBody278_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_44 optimizedBody278_238

def optimizedBody278_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_46 optimizedBody278_239

def optimizedBody278_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_240

def optimizedBody278_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_241

def optimizedBody278_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_242

def optimizedBody278_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_243

def optimizedBody278_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_45 optimizedBody278_244

def optimizedBody278_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_44 optimizedBody278_245

def optimizedBody278_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_43 optimizedBody278_246

def optimizedBody278_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_247

def optimizedBody278_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_248

def optimizedBody278_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_249

def optimizedBody278_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_250

def optimizedBody278_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_42 optimizedBody278_251

def optimizedBody278_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_41 optimizedBody278_252

def optimizedBody278_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_40 optimizedBody278_253

def optimizedBody278_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_9 optimizedBody278_254

def optimizedBody278_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_39 optimizedBody278_255

def optimizedBody278_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_9 optimizedBody278_256

def optimizedBody278_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_38 optimizedBody278_257

def optimizedBody278_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_9 optimizedBody278_258

def optimizedBody278_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_37 optimizedBody278_259

def optimizedBody278_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_260

def optimizedBody278_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_261

def optimizedBody278_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_262

def optimizedBody278_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_263

def optimizedBody278_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_36 optimizedBody278_264

def optimizedBody278_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_265

def optimizedBody278_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_35 optimizedBody278_266

def optimizedBody278_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_34 optimizedBody278_267

def optimizedBody278_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_268

def optimizedBody278_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_269

def optimizedBody278_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_270

def optimizedBody278_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_271

def optimizedBody278_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_33 optimizedBody278_272

def optimizedBody278_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_273

def optimizedBody278_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_274

def optimizedBody278_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_32 optimizedBody278_275

def optimizedBody278_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_276

def optimizedBody278_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_277

def optimizedBody278_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_278

def optimizedBody278_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_279

def optimizedBody278_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_31 optimizedBody278_280

def optimizedBody278_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_281

def optimizedBody278_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_282

def optimizedBody278_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_30 optimizedBody278_283

def optimizedBody278_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_284

def optimizedBody278_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_285

def optimizedBody278_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_286

def optimizedBody278_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_287

def optimizedBody278_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_29 optimizedBody278_288

def optimizedBody278_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_289

def optimizedBody278_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_290

def optimizedBody278_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_28 optimizedBody278_291

def optimizedBody278_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_292

def optimizedBody278_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_293

def optimizedBody278_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_294

def optimizedBody278_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_295

def optimizedBody278_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_27 optimizedBody278_296

def optimizedBody278_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_297

def optimizedBody278_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_26 optimizedBody278_298

def optimizedBody278_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_25 optimizedBody278_299

def optimizedBody278_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_300

def optimizedBody278_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_301

def optimizedBody278_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_302

def optimizedBody278_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_303

def optimizedBody278_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_24 optimizedBody278_304

def optimizedBody278_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_23 optimizedBody278_305

def optimizedBody278_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_306

def optimizedBody278_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_22 optimizedBody278_307

def optimizedBody278_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_21 optimizedBody278_308

def optimizedBody278_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_20 optimizedBody278_309

def optimizedBody278_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_19 optimizedBody278_310

def optimizedBody278_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_311

def optimizedBody278_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_18 optimizedBody278_312

def optimizedBody278_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_14 optimizedBody278_313

def optimizedBody278_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_13 optimizedBody278_314

def optimizedBody278_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_12 optimizedBody278_315

def optimizedBody278_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_11 optimizedBody278_316

def optimizedBody278_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_10 optimizedBody278_317

def optimizedBody278_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_9 optimizedBody278_318

def optimizedBody278_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_8 optimizedBody278_319

def optimizedBody278_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_7 optimizedBody278_320

def optimizedBody278_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_2 optimizedBody278_321

def optimizedBody278_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_1 optimizedBody278_322

def optimizedBody278_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody278_0 optimizedBody278_323

def oracle278 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 2)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1)))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))))))
            2
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 2))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 22)))))
              22
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  22
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 2))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 1)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 22)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 2)))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  3 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3))))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            0
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 23 Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
                  0 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  3 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)))))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  24 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 22))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 23))
                25
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24))))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 25 Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)))))
              23
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  25 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))))))
def optimized278 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(278, 2, optimizedBody278_324)
end InitECandidate.Proofs.SmallStages.Oracles278
