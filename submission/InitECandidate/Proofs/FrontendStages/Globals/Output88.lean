import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data88
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate72
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody88_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody88_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "bswap64"
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def globalBody88_2 : Prog (BitVec 64) :=
.seq globalBody88_0 globalBody88_1

def globalBody88_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody88_4 : Prog (BitVec 64) :=
.seq globalBody88_2 globalBody88_3

def globalBody88_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "bswap64"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def globalBody88_6 : Prog (BitVec 64) :=
.seq globalBody88_4 globalBody88_5

def globalBody88_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody88_8 : Prog (BitVec 64) :=
.seq globalBody88_6 globalBody88_7

def globalBody88_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "bswap64"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def globalBody88_10 : Prog (BitVec 64) :=
.seq globalBody88_8 globalBody88_9

def globalBody88_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody88_12 : Prog (BitVec 64) :=
.seq globalBody88_10 globalBody88_11

def globalBody88_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody88_14 : Prog (BitVec 64) :=
.seq globalBody88_12 globalBody88_13

def globalBody88_15 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")]) globalBody88_14

def globalBody88_16 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody88_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) globalBody88_15 globalBody88_16

def globalBody88_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def globalBody88_19 : Prog (BitVec 64) :=
.seq globalBody88_17 globalBody88_18

def globalBody88_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64],
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def globalBody88_21 : Prog (BitVec 64) :=
.seq globalBody88_19 globalBody88_20

def globalBody88_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def globalBody88_23 : Prog (BitVec 64) :=
.seq globalBody88_21 globalBody88_22

def globalBody88_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64],
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def globalBody88_25 : Prog (BitVec 64) :=
.seq globalBody88_23 globalBody88_24

def globalBody88_26 : Prog (BitVec 64) :=
.seq globalBody88_25 globalBody88_13

def globalData88 : Decl (BitVec 64) :=
.function { name := "u256_to_be32", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("out", Flapjack.Shape.one)], body := globalBody88_26, returnShape := (Flapjack.Shape.one) }
def globalOutput88 := Pancake.PanLang.declToHOL globalData88
end InitECandidate.Proofs.FrontendStages.Declarations
