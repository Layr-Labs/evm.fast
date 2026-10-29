import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify202
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body218_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_request_list"
  [Flapjack.Exp.const 0#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.const 192#64, Flapjack.Exp.var Flapjack.VarKind.local "ch"]

def body218_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_request_list"
  [Flapjack.Exp.const 1#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 76#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 32#64]]

def body218_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_request_list"
  [Flapjack.Exp.const 2#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 116#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 64#64]]

def body218_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_request_list"
  [Flapjack.Exp.const 3#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.const 184#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 96#64]]

def body218_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_request_list"
  [Flapjack.Exp.const 4#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 64#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 72#64]),
    Flapjack.Exp.const 68#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 128#64]]

def body218_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_pcontainer"
  [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 5#64, Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body218_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body218_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body218_8 : Prog (BitVec 64) :=
.seq body218_6 body218_7

def body218_9 : Prog (BitVec 64) :=
.seq body218_5 body218_8

def body218_10 : Prog (BitVec 64) :=
.seq body218_4 body218_9

def body218_11 : Prog (BitVec 64) :=
.seq body218_3 body218_10

def body218_12 : Prog (BitVec 64) :=
.seq body218_2 body218_11

def body218_13 : Prog (BitVec 64) :=
.seq body218_1 body218_12

def body218_14 : Prog (BitVec 64) :=
.seq body218_0 body218_13

def body218_15 : Prog (BitVec 64) :=
.decCall ("ch") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 5#64, Flapjack.Exp.const 32#64]]) body218_14

def body218_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body218_15

def body218_17 : Prog (BitVec 64) :=
.seq body218_0 body218_1

def body218_18 : Prog (BitVec 64) :=
.seq body218_17 body218_2

def body218_19 : Prog (BitVec 64) :=
.seq body218_18 body218_3

def body218_20 : Prog (BitVec 64) :=
.seq body218_19 body218_4

def body218_21 : Prog (BitVec 64) :=
.seq body218_20 body218_5

def body218_22 : Prog (BitVec 64) :=
.seq body218_21 body218_6

def body218_23 : Prog (BitVec 64) :=
.seq body218_22 body218_7

def body218_24 : Prog (BitVec 64) :=
.decCall ("ch") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 5#64, Flapjack.Exp.const 32#64]]) body218_23

def body218_25 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body218_24

def originalData218 : Decl (BitVec 64) :=
.function { name := "htr_requests", inline := false, exported := false, params := [("rq", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body218_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData218 : Decl (BitVec 64) :=
.function { name := "htr_requests", inline := false, exported := false, params := [("rq", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body218_25, returnShape := (Flapjack.Shape.one) }
def original218 := Pancake.PanLang.declToHOL originalData218
def simplified218 := Pancake.PanLang.declToHOL simplifiedData218
end InitECandidate.Proofs.FrontendStages.Declarations
