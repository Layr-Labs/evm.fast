import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data219
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate203
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody219_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_payload"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "ch"]

def globalBody219_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_plist_chunks"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 32#64]]

def globalBody219_2 : Prog (BitVec 64) :=
.seq globalBody219_0 globalBody219_1

def globalBody219_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 64#64],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 32#64]

def globalBody219_4 : Prog (BitVec 64) :=
.seq globalBody219_2 globalBody219_3

def globalBody219_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_requests"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 96#64]]

def globalBody219_6 : Prog (BitVec 64) :=
.seq globalBody219_4 globalBody219_5

def globalBody219_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 4#64, Flapjack.Exp.const 4#64,
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody219_8 : Prog (BitVec 64) :=
.seq globalBody219_6 globalBody219_7

def globalBody219_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody219_10 : Prog (BitVec 64) :=
.seq globalBody219_8 globalBody219_9

def globalBody219_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody219_12 : Prog (BitVec 64) :=
.seq globalBody219_10 globalBody219_11

def globalBody219_13 : Prog (BitVec 64) :=
.decCall ("ch") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 4#64, Flapjack.Exp.const 32#64]]) globalBody219_12

def globalBody219_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody219_13

def globalData219 : Decl (BitVec 64) :=
.function { name := "htr_new_payload_request", inline := false, exported := false, params := [("si", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody219_14, returnShape := (Flapjack.Shape.one) }
def globalOutput219 := Pancake.PanLang.declToHOL globalData219
end InitECandidate.Proofs.FrontendStages.Declarations
