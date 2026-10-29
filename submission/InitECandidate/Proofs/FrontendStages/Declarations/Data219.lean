import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify203
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body219_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_payload"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "ch"]

def body219_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_plist_chunks"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 32#64]]

def body219_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 64#64],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 32#64]

def body219_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_requests"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 96#64]]

def body219_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 4#64, Flapjack.Exp.const 4#64,
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body219_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body219_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body219_7 : Prog (BitVec 64) :=
.seq body219_5 body219_6

def body219_8 : Prog (BitVec 64) :=
.seq body219_4 body219_7

def body219_9 : Prog (BitVec 64) :=
.seq body219_3 body219_8

def body219_10 : Prog (BitVec 64) :=
.seq body219_2 body219_9

def body219_11 : Prog (BitVec 64) :=
.seq body219_1 body219_10

def body219_12 : Prog (BitVec 64) :=
.seq body219_0 body219_11

def body219_13 : Prog (BitVec 64) :=
.decCall ("ch") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 4#64, Flapjack.Exp.const 32#64]]) body219_12

def body219_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body219_13

def body219_15 : Prog (BitVec 64) :=
.seq body219_0 body219_1

def body219_16 : Prog (BitVec 64) :=
.seq body219_15 body219_2

def body219_17 : Prog (BitVec 64) :=
.seq body219_16 body219_3

def body219_18 : Prog (BitVec 64) :=
.seq body219_17 body219_4

def body219_19 : Prog (BitVec 64) :=
.seq body219_18 body219_5

def body219_20 : Prog (BitVec 64) :=
.seq body219_19 body219_6

def body219_21 : Prog (BitVec 64) :=
.decCall ("ch") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 4#64, Flapjack.Exp.const 32#64]]) body219_20

def body219_22 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body219_21

def originalData219 : Decl (BitVec 64) :=
.function { name := "htr_new_payload_request", inline := false, exported := false, params := [("si", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body219_14, returnShape := (Flapjack.Shape.one) }
def simplifiedData219 : Decl (BitVec 64) :=
.function { name := "htr_new_payload_request", inline := false, exported := false, params := [("si", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body219_22, returnShape := (Flapjack.Shape.one) }
def original219 := Pancake.PanLang.declToHOL originalData219
def simplified219 := Pancake.PanLang.declToHOL simplifiedData219
end InitECandidate.Proofs.FrontendStages.Declarations
