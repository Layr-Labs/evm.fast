import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify899
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body915_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "blob")
  (Flapjack.Exp.var Flapjack.VarKind.local "type_byte")

def body915_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blob", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body915_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 56#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "blob")

def body915_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 56#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body915_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body915_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body915_6 : Prog (BitVec 64) :=
.seq body915_4 body915_5

def body915_7 : Prog (BitVec 64) :=
.seq body915_3 body915_6

def body915_8 : Prog (BitVec 64) :=
.seq body915_2 body915_7

def body915_9 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 64#64])) body915_8

def body915_10 : Prog (BitVec 64) :=
.seq body915_1 body915_9

def body915_11 : Prog (BitVec 64) :=
.seq body915_0 body915_10

def body915_12 : Prog (BitVec 64) :=
.decCall ("blob") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body915_11

def body915_13 : Prog (BitVec 64) :=
.seq body915_0 body915_1

def body915_14 : Prog (BitVec 64) :=
.seq body915_2 body915_3

def body915_15 : Prog (BitVec 64) :=
.seq body915_14 body915_4

def body915_16 : Prog (BitVec 64) :=
.seq body915_15 body915_5

def body915_17 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 64#64])) body915_16

def body915_18 : Prog (BitVec 64) :=
.seq body915_13 body915_17

def body915_19 : Prog (BitVec 64) :=
.decCall ("blob") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body915_18

def originalData915 : Decl (BitVec 64) :=
.function { name := "requests_append", inline := false, exported := false, params := [("type_byte", Flapjack.Shape.one), ("data", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body915_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData915 : Decl (BitVec 64) :=
.function { name := "requests_append", inline := false, exported := false, params := [("type_byte", Flapjack.Shape.one), ("data", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body915_19, returnShape := (Flapjack.Shape.one) }
def original915 := Pancake.PanLang.declToHOL originalData915
def simplified915 := Pancake.PanLang.declToHOL simplifiedData915
end InitECandidate.Proofs.FrontendStages.Declarations
