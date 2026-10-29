import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data215
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate199
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody215_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_bytes_vector"
  [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 48#64, Flapjack.Exp.var Flapjack.VarKind.local "ch"]

def globalBody215_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 32#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 48#64],
    Flapjack.Exp.const 32#64]

def globalBody215_2 : Prog (BitVec 64) :=
.seq globalBody215_0 globalBody215_1

def globalBody215_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_u64_at"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 80#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 64#64]]

def globalBody215_4 : Prog (BitVec 64) :=
.seq globalBody215_2 globalBody215_3

def globalBody215_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_bytes_vector"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 88#64],
    Flapjack.Exp.const 96#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 96#64]]

def globalBody215_6 : Prog (BitVec 64) :=
.seq globalBody215_4 globalBody215_5

def globalBody215_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 4#64, Flapjack.Exp.const 4#64,
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody215_8 : Prog (BitVec 64) :=
.seq globalBody215_6 globalBody215_7

def globalBody215_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody215_10 : Prog (BitVec 64) :=
.seq globalBody215_8 globalBody215_9

def globalBody215_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody215_12 : Prog (BitVec 64) :=
.seq globalBody215_10 globalBody215_11

def globalBody215_13 : Prog (BitVec 64) :=
.decCall ("ch") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 4#64, Flapjack.Exp.const 32#64]]) globalBody215_12

def globalBody215_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody215_13

def globalData215 : Decl (BitVec 64) :=
.function { name := "htr_bdep", inline := false, exported := false, params := [("e", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody215_14, returnShape := (Flapjack.Shape.one) }
def globalOutput215 := Pancake.PanLang.declToHOL globalData215
end InitECandidate.Proofs.FrontendStages.Declarations
