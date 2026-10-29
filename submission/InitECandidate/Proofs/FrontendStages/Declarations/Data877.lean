import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify861
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body877_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "blob")
  (Flapjack.Exp.var Flapjack.VarKind.local "type_byte")

def body877_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blob", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body877_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 56#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "blob")

def body877_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 56#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body877_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body877_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body877_6 : Prog (BitVec 64) :=
.seq body877_4 body877_5

def body877_7 : Prog (BitVec 64) :=
.seq body877_3 body877_6

def body877_8 : Prog (BitVec 64) :=
.seq body877_2 body877_7

def body877_9 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 64#64])) body877_8

def body877_10 : Prog (BitVec 64) :=
.seq body877_1 body877_9

def body877_11 : Prog (BitVec 64) :=
.seq body877_0 body877_10

def body877_12 : Prog (BitVec 64) :=
.decCall ("blob") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body877_11

def body877_13 : Prog (BitVec 64) :=
.seq body877_0 body877_1

def body877_14 : Prog (BitVec 64) :=
.seq body877_2 body877_3

def body877_15 : Prog (BitVec 64) :=
.seq body877_14 body877_4

def body877_16 : Prog (BitVec 64) :=
.seq body877_15 body877_5

def body877_17 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 64#64])) body877_16

def body877_18 : Prog (BitVec 64) :=
.seq body877_13 body877_17

def body877_19 : Prog (BitVec 64) :=
.decCall ("blob") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body877_18

def originalData877 : Decl (BitVec 64) :=
.function { name := "requests_append", inline := false, exported := false, params := [("type_byte", Flapjack.Shape.one), ("data", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body877_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData877 : Decl (BitVec 64) :=
.function { name := "requests_append", inline := false, exported := false, params := [("type_byte", Flapjack.Shape.one), ("data", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body877_19, returnShape := (Flapjack.Shape.one) }
def original877 := Pancake.PanLang.declToHOL originalData877
def simplified877 := Pancake.PanLang.declToHOL simplifiedData877
end InitECandidate.Proofs.FrontendStages.Declarations
