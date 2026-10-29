import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data805
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate789
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody805_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "g2_decode"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 256#64],
    Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def globalBody805_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody805_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) globalBody805_0 globalBody805_1

def globalBody805_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody805_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody805_5 : Prog (BitVec 64) :=
.seq globalBody805_3 globalBody805_4

def globalBody805_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody805_5 globalBody805_1

def globalBody805_7 : Prog (BitVec 64) :=
.seq globalBody805_2 globalBody805_6

def globalBody805_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "p1",
    Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def globalBody805_9 : Prog (BitVec 64) :=
.seq globalBody805_7 globalBody805_8

def globalBody805_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody805_11 : Prog (BitVec 64) :=
.seq globalBody805_9 globalBody805_10

def globalBody805_12 : Prog (BitVec 64) :=
.seq globalBody805_11 globalBody805_3

def globalBody805_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody805_14 : Prog (BitVec 64) :=
.seq globalBody805_12 globalBody805_13

def globalBody805_15 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g2_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "p1"]) globalBody805_14

def globalBody805_16 : Prog (BitVec 64) :=
.decCall ("p2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) globalBody805_15

def globalBody805_17 : Prog (BitVec 64) :=
.decCall ("p1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) globalBody805_16

def globalBody805_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody805_17

def globalData805 : Decl (BitVec 64) :=
.function { name := "bls_g2_add_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody805_18, returnShape := (Flapjack.Shape.one) }
def globalOutput805 := Pancake.PanLang.declToHOL globalData805
end InitECandidate.Proofs.FrontendStages.Declarations
