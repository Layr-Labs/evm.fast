import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify580
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body596_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty")

def body596_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.const 0#64)

def body596_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.const 0#64)

def body596_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body596_4 : Prog (BitVec 64) :=
.seq body596_2 body596_3

def body596_5 : Prog (BitVec 64) :=
.seq body596_1 body596_4

def body596_6 : Prog (BitVec 64) :=
.seq body596_0 body596_5

def body596_7 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body596_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body596_6 body596_7

def body596_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "dst"), none)) "alloc"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]

def body596_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "dst")

def body596_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body596_12 : Prog (BitVec 64) :=
.seq body596_10 body596_11

def body596_13 : Prog (BitVec 64) :=
.seq body596_9 body596_12

def body596_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "cap")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body596_13 body596_7

def body596_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body596_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body596_17 : Prog (BitVec 64) :=
.seq body596_16 body596_3

def body596_18 : Prog (BitVec 64) :=
.seq body596_15 body596_17

def body596_19 : Prog (BitVec 64) :=
.seq body596_14 body596_18

def body596_20 : Prog (BitVec 64) :=
.dec ("dst") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 144#64])) body596_19

def body596_21 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 216#64])) body596_20

def body596_22 : Prog (BitVec 64) :=
.seq body596_8 body596_21

def body596_23 : Prog (BitVec 64) :=
.seq body596_0 body596_1

def body596_24 : Prog (BitVec 64) :=
.seq body596_23 body596_2

def body596_25 : Prog (BitVec 64) :=
.seq body596_24 body596_3

def body596_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body596_25 body596_7

def body596_27 : Prog (BitVec 64) :=
.seq body596_9 body596_10

def body596_28 : Prog (BitVec 64) :=
.seq body596_27 body596_11

def body596_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "cap")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body596_28 body596_7

def body596_30 : Prog (BitVec 64) :=
.seq body596_29 body596_15

def body596_31 : Prog (BitVec 64) :=
.seq body596_30 body596_16

def body596_32 : Prog (BitVec 64) :=
.seq body596_31 body596_3

def body596_33 : Prog (BitVec 64) :=
.dec ("dst") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 144#64])) body596_32

def body596_34 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 216#64])) body596_33

def body596_35 : Prog (BitVec 64) :=
.seq body596_26 body596_34

def originalData596 : Decl (BitVec 64) :=
.function { name := "set_retdata", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body596_22, returnShape := (Flapjack.Shape.one) }
def simplifiedData596 : Decl (BitVec 64) :=
.function { name := "set_retdata", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body596_35, returnShape := (Flapjack.Shape.one) }
def original596 := Pancake.PanLang.declToHOL originalData596
def simplified596 := Pancake.PanLang.declToHOL simplifiedData596
end InitECandidate.Proofs.FrontendStages.Declarations
